<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${applicationScope.globalParameter.webName}</title>
    <base href="<%=basePath%>">
    <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <link rel="shortcut icon" href="img/java.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bs.css"/>
</head>
<body>
<jsp:include page="header.jsp"/>
<div>
    <div class="Briefintro">
        <div class="tops">
            <img class="topImg" src="https://cdn.chatgpt.douyigyl.com/uploads/2023-05-26/2/0.00347000-1685083585Group 302@2x.png" alt="">
        </div>
        <div class="Company">
            <div class="title" style="margin-right: 40px;">01</div>
            <div>
                <div style="font-weight: bold; font-size: 32px;margin-bottom: 47px;">
                    <div>Company profile</div>
                    <div>企业简介</div>
                </div>
                <div class="comtari">
                    <div class="cont">四川抖医云播智慧链医院管理有限公司（以下简称“抖医云播”）成立于2020年。公司致力于提供全方位的医疗与健康知识传播服务，以“让每个人都能随时随地了解专业、实用的健康知识”为使命。 抖医云播积极拓展健康知识的传播渠道，致力于为人们提供丰富、专业的健康资讯。在互联网上，我们依托抖音、快手等短视频平台，以及微信、微博等社交媒体，为广泛的网民提供实用、贴心的健康知识。同时，抖医云播还与各大书店合作，开设线下互动式健康讲座，使健康知识更加生动、形象，让传统书店焕发新活力。</div>
                    <div class="compImg"><img style="width: 80%;" src="https://cdn.chatgpt.douyigyl.com/uploads/2023-05-26/2/0.04016000-1685084513Rectangle 655@2x.png" alt=""></div>
                </div>
            </div>
        </div>
        <div class="Company">
            <div class="title" style="margin-right: 40px;">02</div>
            <div>
                <div style="font-weight: bold; font-size: 32px;margin-bottom: 47px;">
                    <div>Four major industries</div>
                    <div>业务领域</div>
                </div>
                <div class="majorTari">
                    <div class="majorList" style="border-right: 2px solid #EEEEEE;">
                        <div class="majTitle">
                            <img style="width: 32px; height: 25px;margin-right: 17px;" src="https://cdn.chatgpt.douyigyl.com/uploads/2023-05-26/2/0.98935000-1685085174Frame@2x (11).png" alt="">
                            <span style="font-size: 18px; font-weight: 600;">短视频制作与推广</span>
                        </div>
                        <div style="font-size: 14px;">通过抖音、快手等平台发布医疗健康类短视频，专业、生动地普及健康知识。</div>
                    </div>
                    <div class="majorList" style="border-right: 2px solid #EEEEEE;">
                        <div class="majTitle">
                            <img style="width: 26px; height: 30px;margin-right: 17px;" src="https://cdn.chatgpt.douyigyl.com/uploads/2023-05-26/2/0.34443800-1685085413Frame@2x (12).png" alt="">
                            <span style="font-size: 18px; font-weight: 600;">社交媒体运营</span>
                        </div>
                        <div style="font-size: 14px;">通过抖音、快手等平台发布医疗健康类短视频，专业、生动地普及健康知识。</div>
                    </div>
                    <div class="majorList" style="border-right: 2px solid #EEEEEE;">
                        <div class="majTitle">
                            <img style="width: 28px; height: 28px;margin-right: 17px;" src="https://cdn.chatgpt.douyigyl.com/uploads/2023-05-26/2/0.95675800-1685085431Frame@2x (13).png" alt="">
                            <span style="font-size: 18px; font-weight: 600;">线下书店合作</span>
                        </div>
                        <div style="font-size: 14px;">通过抖音、快手等平台发布医疗健康类短视频，专业、生动地普及健康知识。</div>
                    </div>
                    <div class="majorList">
                        <div class="majTitle">
                            <img style="width: 21px; height: 26px;margin-right: 17px;" src="https://cdn.chatgpt.douyigyl.com/uploads/2023-05-26/2/0.76182900-1685085444Frame@2x (14).png" alt="">
                            <span style="font-size: 18px; font-weight: 600;">医疗健康知识IP打造</span>
                        </div>
                        <div style="font-size: 14px;">通过抖音、快手等平台发布医疗健康类短视频，专业、生动地普及健康知识。</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="thireDiv">
            <div class="thireImg">
                <img style="width: 100%;" src="https://cdn.chatgpt.douyigyl.com/uploads/2023-05-26/2/0.11154600-1685085806Rectangle 657@2x.png" alt="">
                <div class="yiny"></div>
            </div>
            <div class="thireRight">
                <div class="title" style="margin-bottom: 10px;">03</div>
                <div style="font-weight: bold; font-size: 32px;padding-bottom: 27px;border-bottom: 1px solid #EEEEEE;">
                    <div>Company profile</div>
                    <div>企业简介</div>
                </div>
                <div style="font-size: 15px; margin-top: 37px;">
                    <div>1.公司愿景：成为国内领先的专业健康知识传播企业， 提升全民健康素养。</div>
                    <div style="padding: 37px 0 43px 0">2.核心价值：专业、负责、创新、共享。</div>
                    <div>3.团队理念：团结协作，互助共赢，共创辉煌。</div>
                </div>
            </div>
        </div>
        <div class="forDiv">
            <div class="underlying">
                <div class="title" style="margin-right: 40px;">04</div>
                <div style="font-weight: bold; font-size: 32px;padding-bottom: 27px;border-bottom: 1px solid #EEEEEE;">
                    <div>Company profile</div>
                    <div>企业简介</div>
                </div>
            </div>
            <div class="mesosphere">
                <div style="width: 40%;line-height: 30px;">
                    抖医云播秉持开放共赢的合作理念，与各大书店、医疗机构、健康产业企业等广泛合作，为广大读者和用户提供更丰富、更专业的健康知识，共同推动健康产业的发展。 在书店方面，抖医云播已成功与四川省内多家知名书店达成合作，共同探索线下健康知识传播的新模式。目前，我们的健康讲座已成为书店的一大特色，受到广泛好评。 通过不断努力，抖医云播将继续深耕健康知识传播领域，为广大用户提供全方位、多层次的健康知识服务，助力全民健康事业发展。
                </div>
                <div style="width: 87px; height: 8px; background-color: #fff;margin-top: 20px;"></div>
            </div>
            <div class="Senior">
                <img style="width: 100%;height: 450px;" src="https://cdn.chatgpt.douyigyl.com/uploads/2023-05-26/2/0.02383000-1685087300Rectangle 658@2x.png" alt="">
            </div>
        </div>
        <div class="fiveDiv">
            <div class="Qualification">
                <div style="color: #999;">Qualification information</div>
                <div>资质信息</div>
            </div>
            <div class="qualifList">
                <img class="qualisfImg" src="https://cdn.chatgpt.douyigyl.com/uploads/2023-05-26/2/0.68365700-1685087913Rectangle 661@2x.png" alt="">
                <img class="qualisfImg" src="https://cdn.chatgpt.douyigyl.com/uploads/2023-05-26/2/0.66717000-1685087935Mask group@2x.png" alt="">
                <img class="qualisfImg" src="https://cdn.chatgpt.douyigyl.com/uploads/2023-05-26/2/0.71316900-1685087951Rectangle 664@2x.png" alt="">
            </div>
        </div>
        <!-- <div class="lastDiv">
            <div class="lastList">
                <ul>
                    <li>书海风云</li>
                    <li>图书排名</li>
                    <li>图书推荐</li>
                    <li>图书人气</li>
                </ul>
                <ul>
                    <li>书海风云</li>
                    <li>图书排名</li>
                    <li>图书推荐</li>
                    <li>图书人气</li>
                </ul>
                <ul>
                    <li>书海风云</li>
                    <li>图书排名</li>
                    <li>图书推荐</li>
                    <li>图书人气</li>
                </ul>
                <ul>
                    <li>书海风云</li>
                    <li>图书排名</li>
                    <li>图书推荐</li>
                    <li>图书人气</li>
                </ul>
                <ul>
                    <li>书海风云</li>
                    <li>图书排名</li>
                    <li>图书推荐</li>
                    <li>图书人气</li>
                </ul>
                <ul style="border: none;width: 20%;">
                    <div style="margin-bottom: 10px;">
                        <div>充值热线（免长途费）</div>
                        <div>888 999 666</div>
                    </div>
                    <div>
                        <div>客服服务热线（免长途费）</div>
                        <div>888 999 666</div>
                    </div>
                </ul>
                <p style="clear: both;"></p>
            </div>
            <div>www.douyi.net</div>
        </div>  -->
    </div>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>

<script>

</script>

<style>
    *{
        margin: 0;
        padding: 0;
    }
    .Briefintro{
        width: 100%;
        padding: 0 0 60px 0;
    }
    .title{
        color: #999;
        font-size: 32px;
    }
    .tops{
        width: 100%;
    }
    .topImg{
        width: 100%;
    }
    .Company{
        display: flex;
        width: 80%;
        margin: 80px 10%;
    }
    .thireDiv{
        display: flex;
        width: 80%;
        margin: 120px 10%;
        justify-content: space-between;
    }
    .comtari{
        display: flex;
        justify-content: space-between;
    }
    .cont{
        width: 30%;
        font-size: 14px;
        line-height: 25px;
    }
    .compImg{
        width: 65%;
    }
    .majorTari{
        display: flex;
    }
    .majorList{
        width: 25%;
        padding: 0 30px;
        box-sizing: border-box;
    }
    .majTitle{
        display: flex;
        align-items: center;
        margin-bottom: 13px;
    }
    .thireImg{
        width: 65%;
        position: relative;
    }
    .yiny{
        width: 100%;
        height: 100%;
        position: absolute;
        left: -20%;
        bottom: -70px;
        background-color: #D9D9D9;
        z-index: -1;
    }
    .thireRight{
        width: 30%;
    }
    .forDiv{
        width: 80%;
        height: 600px;
        margin: 150px 10% 0 10%;
        position: relative;
    }
    .underlying{
        width: 50%;
        height: 350px;
        display: flex;
        background: url('https://cdn.chatgpt.douyigyl.com/uploads/2023-05-26/2/0.79428100-1685086575underlying.png') no-repeat 0 0;
        background-size: cover;
        padding: 50px 0 0 30px;
        box-sizing: border-box;
    }
    .mesosphere{
        width: 95%;
        background-color: #00132E;
        padding: 48px 0 70px 25px;
        position: absolute;
        right: 0;
        top: 240px;
        color: #fff;
        font-size: 16px;
        box-sizing: border-box;
    }
    .Senior{
        width: 66%;
        height: 450px;
        position: absolute;
        right: -12.5%;
        top: 40px;
        box-sizing: border-box;
    }
    .fiveDiv{
        width: 80%;
        margin: 0 10%;
    }
    .Qualification{
        text-align: center;
        font-size: 32px;
        font-weight: 600;
        padding: 30px 0;
    }
    .qualifList{
        display: flex;
        justify-content: space-between;
        padding: 40px 0;
    }
    .qualisfImg{
        width: 27%;
    }
    /* .lastDiv{
        text-align: center;
        width: 74%;
        margin: 80px 13% 0 13%;
    }
    .lastList{
        width: 100%;
        padding: 15px 0;
        background-color: #F8F8F8;
        list-style: none;
        font-size: 14px;
    }
    .lastList>ul>li:nth-child(1){
        list-style: none;
        font-weight: 500;
    }
    .lastList>ul>li{
        margin-bottom: 3px;
    }
    .lastList>ul{
        width: 13%;
        float: left;
        text-align: left;
        border-right: 1px solid #d3d0d0;
        padding-left: 40px;
        box-sizing: border-box;
    } */
</style>
