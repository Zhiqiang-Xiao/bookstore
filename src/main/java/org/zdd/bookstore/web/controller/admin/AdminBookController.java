package org.zdd.bookstore.web.controller.admin;

import com.github.pagehelper.PageInfo;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zdd.bookstore.common.utils.IDUtils;
import org.zdd.bookstore.exception.BSException;
import org.zdd.bookstore.model.dao.BookDescMapper;
import org.zdd.bookstore.model.entity.BookDesc;
import org.zdd.bookstore.model.entity.BookInfo;
import org.zdd.bookstore.model.entity.Store;
import org.zdd.bookstore.model.service.IBookInfoService;
import org.zdd.bookstore.model.service.IStoreService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;

@Controller
@RequestMapping("/admin/book")
@RequiresPermissions("book-manage")
public class AdminBookController {

    @Autowired
    private IBookInfoService bookInfoService;

    @Autowired
    private BookDescMapper bookDescMapper;

    @Autowired
    private IStoreService storeService;

    @Value("${image.url.prefix}")
    private  String urlPrefix;

    @RequestMapping("toAddition")
    @RequiresPermissions("book-add")
    public String toAddition() {
        return "admin/book/add";
    }

    @RequestMapping("/addition")
    @RequiresPermissions("book-add")
    public String addBook(BookInfo bookInfo, String bookDesc, MultipartFile pictureFile, HttpServletRequest request) throws Exception {

        uploadPicture(bookInfo, pictureFile, request);
        bookInfoService.saveBook(bookInfo, bookDesc);

        return "redirect:/admin/book/list";
    }

    @RequestMapping(value = "/list")
    @RequiresPermissions("book-query")
    public String bookList(@RequestParam(defaultValue = "", required = false) String keywords,
                           @RequestParam(value = "page", defaultValue = "1", required = false) int page,
                           HttpSession session,
                           Model model) {
        keywords = keywords.trim();
        Store store = (Store) session.getAttribute("loginStore");

        if (store != null) {
            PageInfo<BookInfo> books = bookInfoService.findBookListByCondition(keywords, 0, page, 10, store.getStoreId());
            model.addAttribute("bookPageInfo", books);
            model.addAttribute("keywords", keywords);
        } else {
            model.addAttribute("exception", "您请求的资源不存在");
            return "exception";
        }

        return "admin/book/list";
    }

    /**
     * 更新页面回显
     *
     * @param bookId
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/echo")
    @RequiresPermissions("book-edit")
    public String echo(int bookId, Model model) throws BSException {

        BookInfo bookInfo = bookInfoService.adminFindById(bookId);

        BookDesc bookDesc = bookDescMapper.selectByPrimaryKey(bookInfo.getBookId());

        model.addAttribute("bookInfo", bookInfo);

        model.addAttribute("bookDesc", bookDesc);

        return "admin/book/edit";
    }

    @RequestMapping("/update")
    @RequiresPermissions("book-edit")
    public String updateBook(BookInfo bookInfo, String bookDesc, String keywords, MultipartFile pictureFile, HttpServletRequest request, RedirectAttributes ra) throws Exception {
        uploadPicture(bookInfo, pictureFile, request);
        BookInfo originBook = bookInfoService.findById(bookInfo.getBookId());
        bookInfoService.updateBook(bookInfo, bookDesc);

        //更新图片后，删除原来的图片
        String realPath = request.getServletContext().getRealPath("/");
        File uploadPic = new File(realPath + originBook.getImageUrl());
        uploadPic.delete();
        //重定向到书籍列表
        ra.addAttribute("keywords", keywords);
        return "redirect:/admin/book/list";
    }

    @RequestMapping("/deletion/{bookId}")
    @RequiresPermissions("book-delete")
    public String deletion(@PathVariable("bookId") int bookId, String keywords, RedirectAttributes ra, HttpServletRequest request) throws BSException {
        BookInfo bookInfo = bookInfoService.findById(bookId);
        String realPath = request.getServletContext().getRealPath("/");
        File uploadPic = new File(realPath + bookInfo.getImageUrl());
        uploadPic.delete();
        bookInfoService.deleteBook(bookId);
        ra.addAttribute("keywords", keywords);
        return "redirect:/admin/book/list";
    }

    @RequestMapping("/shelf")
    @RequiresPermissions("book-shelf")
    public String bookOffShelf(int bookId, int isShelf, String keywords, RedirectAttributes ra) {

        bookInfoService.changeShelfStatus(bookId, isShelf);
        ra.addAttribute("keywords", keywords);
        return "redirect:/admin/book/list";
    }

    private void uploadPicture(BookInfo bookInfo, MultipartFile pictureFile, HttpServletRequest request) throws IOException {
        if (pictureFile != null) {
            if (!StringUtils.isEmpty(pictureFile.getOriginalFilename())) {
                //原始文件名称
                String pictureFileName = pictureFile.getOriginalFilename();
                //新文件名称
                String newFileName = IDUtils.genShortUUID() + pictureFileName.substring(pictureFileName.lastIndexOf("."));
                File destFile = new File(getUploadFileFolder(), newFileName);
                String uploadPath = destFile.getAbsolutePath().replace(getUploadFileFolder(), "");
                File outFile = new File(getUploadFileFolder(), uploadPath);
                uploadFile(pictureFile, outFile.getAbsolutePath());
                bookInfo.setImageUrl(outFile.getAbsolutePath());
            }
        }
    }


    public static String getUploadFileFolder() {
        File file = new File(getStaticFileFolder(), "/upload/images" );
        return file.getAbsolutePath().concat(File.separator);
    }

    /**
     * 获得静态资源文件地址
     *
     * @return java.io.File
     * @author Enzo
     * @date 2021-3-11
     **/
    public static File getStaticFileFolder() {
        String webappRoot = System.getProperty("user.dir");
        File file = new File(webappRoot, "files");
        return file;
    }

    /**
     * 上传文件
     *
     * @param file
     * @param desPath
     * @author Enzo
     * @date 2019-3-11  18:38
     */
    public static void uploadFile(MultipartFile file, String desPath) throws IOException {
//判断文件上传的目录是否存在，若不存在，则创建文件夹
        File desFile = new File(desPath);
        if (!desFile.getParentFile().exists()) {
            //目标文件的文件夹是否存在，若不存在，则创建文件夹
            desFile.getParentFile().mkdirs();
        }
        FileOutputStream outputStream = new FileOutputStream(desFile);
        outputStream.write(file.getBytes());
        if (outputStream != null) {
            outputStream.flush();
            outputStream.close();
        }
    }
}
