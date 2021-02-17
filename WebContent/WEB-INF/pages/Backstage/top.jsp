<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <div id="cm-menu">
            <nav class="cm-navbar cm-navbar-warning">
                <div class="cm-flex"><a href="/yurucamp/Backstage/index" class="cm-logo"></a></div>
                <div class="btn md-menu-white btn-warning" data-toggle="cm-menu"></div>
            </nav>
            <div id="cm-menu-content">
                <div id="cm-menu-items-wrapper">
                    <div id="cm-menu-scroller">
                        <ul class="cm-menu-items">
                            <li class="active"><a href="/yurucamp/Backstage/index" class="sf-house">Home</a></li>
<!--                             <li><a href="/yurucamp/Backstage/member" class="sf-user-id">會員系統</a></li> -->
<!--                             <li><a href="/yurucamp/Backstage/camp" class="md-landscape">營地系統</a></li> -->
<!--                             <li class="cm-submenu"> -->
<!--                                 <a class="md-directions-car">露營車系統<span class="caret"></span></a> -->
<!--                                 <ul> -->
<!--                                     <li><a href="layouts-breadcrumb1.html">1st nav breadcrumb</a></li> -->
<!--                                     <li><a href="layouts-breadcrumb2.html">2nd nav breadcrumb</a></li> -->
<!--                                     <li><a href="layouts-tabs.html">2nd nav tabs</a></li> -->
<!--                                 </ul> -->
<!--                             </li> -->
<!--                             <li class="cm-submenu"> -->
<!--                                 <a class="md-shopping-cart">商城系統<span class="caret"></span></a> -->
<!--                                 <ul> -->
<!--                                     <li><a href="ico-sf.html">Small-n-flat</a></li> -->
<!--                                     <li><a href="ico-md.html">Material Design</a></li> -->
<!--                                     <li><a href="ico-fa.html">Font Awesome</a></li> -->
<!--                                 </ul> -->
<!--                             </li> -->
<!--                             <li><a href="/yurucamp/Backstage/forum" class="sf-notepad">論壇系統</a></li> -->
                            <li><a href="/yurucamp/Backstage/calendar" class="sf-calendar">日歷</a></li>
                            <li><a href="/yurucamp/Backstage/camp" class="sf-user-id">客服系統</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <header id="cm-header">
            <nav class="cm-navbar cm-navbar-warning">
                <div class="btn md-menu-white hidden-md hidden-lg btn-warning" data-toggle="cm-menu"></div>
                <div class="cm-flex">
                    <h1>Home</h1> 
                    <form id="cm-search" action="index.html" method="get">
                        <input type="search" name="q" autocomplete="off" placeholder="Search...">
                    </form>
                </div>
                <div class="pull-right">
                    <div id="cm-search-btn" class="btn md-search-white btn-warning" data-toggle="cm-search"></div>
                </div>
                <div class="dropdown pull-right">
                    <button class="btn md-notifications-white btn-warning" data-toggle="dropdown"> 
                    <span class="label label-danger">23</span> </button>
                    <div class="popover cm-popover bottom">
                        <div class="arrow"></div>
                        <div class="popover-content">
                            <div class="list-group">
                                <a href="#" class="list-group-item">
                                    <h4 class="list-group-item-heading text-overflow">
                                        <i class="fa fa-fw fa-envelope"></i> Nunc volutpat aliquet magna.
                                    </h4>
                                    <p class="list-group-item-text text-overflow">Pellentesque tincidunt mollis scelerisque. Praesent vel blandit quam.</p>
                                </a>
                                <a href="#" class="list-group-item">
                                    <h4 class="list-group-item-heading">
                                        <i class="fa fa-fw fa-envelope"></i> Aliquam orci lectus
                                    </h4>
                                    <p class="list-group-item-text">Donec quis arcu non risus sagittis</p>
                                </a>
                                <a href="#" class="list-group-item">
                                    <h4 class="list-group-item-heading">
                                        <i class="fa fa-fw fa-warning"></i> Holy guacamole !
                                    </h4>
                                    <p class="list-group-item-text">Best check yo self, you're not looking too good.</p>
                                </a>
                            </div>
                            <div style="padding:10px"><a class="btn btn-success btn-block" href="#">Show me more...</a></div>
                        </div>
                    </div>
                </div>
                <div class="dropdown pull-right">
                    <button class="btn md-account-circle-white btn-warning" data-toggle="dropdown"></button>
                    <ul class="dropdown-menu">
                        <li class="disabled text-center">
                            <a style="cursor:default;"><strong>${memberBean.name}</strong></a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-cog"></i> Settings</a>
                        </li>
                        <li>
                            <a href="<c:url value='/Member/LoginOut' />"><i class="fa fa-fw fa-sign-out"></i> Sign out</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
</body>
</html>