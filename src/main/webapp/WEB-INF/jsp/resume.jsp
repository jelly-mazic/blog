<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>简历(Resume)</title>
    <%@include file="common/head.jsp" %>
    <style>

        body {
            font-family: 'microsoft yahei', Arial, sans-serif;
        }

        /* 定义辅助CSS来美化简历头部 */
        .cvheader {
            border-bottom: 10px solid #DFDFDF;
            padding-top: 30px;
            padding-bottom: 20px;
        }

        .cvheader h1 {
            margin: 0;
        }

        .address {
            background: #efb73e;
            color: #fff;
            padding: 10px 0;
        }

        /*美化简历主体*/
        .cvbody {
            padding-top: 50px;
        }

        .cbox {
            margin-bottom: 30px;
            color: #FFFFFF;
            padding: 50px;
        }

        /*定义盒子颜色*/
        .green {
            background: green;
        }

        .orange {
            background: orange;
        }

        .red {
            background: red;
        }

        .black {
            background: black;
        }

        .bbox {
            border: 1px solid #DFDFDF;
            border-radius: 5px;
            margin-bottom: 30px;
            padding: 50px;
        }

        .footer {
            margin: 30px 0 30px;
            padding: 50px;
            background: #CCC;
            color: #FFF;
        }
    </style>
</head>
<body>
<!--1.导航栏-->
<%@include file="common/nav.jsp" %>
<!--头部-->
<div class="container">
    <div class="row cvheader">
        <div class="col-lg-7 col-md-7 col-xs-12">
            <!--  添加颜色//-->
            <h1 class="text-primary">Terry Lee</h1>
            <!--  添加图标 //-->
            <p><span class="glyphicon glyphicon-paperclip"></span> Java工程师 && 大数据挖掘</p>
        </div>

        <div class="col-lg-3 col-md-3 col-xs-12">
            <div class="row">

                <div class="col-lg-4 col-md-4 col-xs-4">
                    <p class="address text-center">联系</p>
                </div>

                <div class="col-lg-8 col-md-8 col-xs-8">
                    <p><span class="glyphicon glyphicon-envelope"></span> 1*******78@qq.com</p>
                    <p><span class="glyphicon glyphicon-earphone"></span> 139####9073</p>
                    <p><span class="glyphicon glyphicon-road"></span> 天堂大家朝阳路</p>
                </div>

            </div>
        </div>

        <div class="col-lg-2 col-md-2 col-xs-12">
            <p>
                <!-- 这里定义图片为响应式，并且添加圆角效果，以便保证图片在不同设备上都可以完美显示 //-->
                <img class="img-responsive img-rounded"
                     src="http://www.gbtags.com/gb/networks/avatars/13d6393f-a44c-4180-8cb6-7bf0e4776283.png" alt="">
            </p>
        </div>
    </div>
</div>
<!--2.简历主体-->
<div class="container">
    <div class="row cvbody">
        <!--将简历分为三部分,其中中间为空白区域-->

        <!--简历左部分-->
        <div class="col-lg-6 col-md-6 col-xs-12">
            <div class="row">
                <div class="cbox black">
                    <h4>个人介绍</h4>
                    <p>
                       ${resume.selfIntroduce}
                    </p>
                </div>
                <div class="cbox black">
                    <h4>个人技能</h4>
                    <p>
                        HTML/CSS/Jacascript
                    <div class="progress">
                        <div class="progress-bar progress-bar-success" style="width: 60%"></div>
                    </div>
                    Java/J2EE
                    <div class="progress">
                        <div class="progress-bar progress-bar-success" style="width: 60%"></div>
                    </div>
                    数据库
                    <div class="progress">
                        <div class="progress-bar progress-bar-success" style="width: 60%"></div>
                    </div>
                    </p>
                </div>
                <div class="cbox black">
                    <h4>语言水平</h4>
                    <p>
                        ${resume.selfLanguage}
                    </p>
                </div>
            </div>
        </div>

        <!--中间空白-->
        <div class="col-lg-1 col-md-1 col-xs-12">
        </div>
        <!--右部分-->
        <div class="col-lg-5 col-md-5 col-xs-12">
            <div class="row">
                <div class="bbox">
                    <h4>教育背景</h4>
                    <p>
                        ${resume.selfEducation}
                    </p>
                </div>
                <div class="bbox">
                    <h4>工作经验</h4>
                    <p>
                        ${resume.selfExperience}
                    </p>
                </div>
                <div class="bbox">
                    <h4>个人爱好</h4>
                    <p>
                        ${resume.selfHobby}
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="footer text-center">关注-微博</div>
    </div>
</div>
</body>
</html>
