<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%--  <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>  --%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <%-- <base href="<%=basePath%>"> --%>
    
    <title>活动管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
			<meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="css/colorpicker.css" />
        <link rel="stylesheet" href="css/datepicker.css" />
		<link rel="stylesheet" href="css/uniform.css" />
		<link rel="stylesheet" href="css/select2.css" />		
		<link rel="stylesheet" href="css/unicorn.main.css" />
		<link rel="stylesheet" href="css/unicorn.grey.css" class="skin-color" />	
		<link rel="stylesheet" href="css/active.css" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

  </head>
  
  <body>
    <div id="header">
			<h1><a href="./dashboard.html">Unicorn Admin</a></h1>		
		</div>
		
		<div id="search">
			<input type="text" placeholder="Search here..." /><button type="submit" class="tip-right" title="Search"><i class="icon-search icon-white"></i></button>
		</div>
		<div id="user-nav" class="navbar navbar-inverse">
            <ul class="nav btn-group">
                <li class="btn btn-inverse"><a title="" href="#"><i class="icon icon-user"></i> <span class="text">Profile</span></a></li>
                <li class="btn btn-inverse dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">Messages</span> <span class="label label-important">5</span> <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a class="sAdd" title="" href="#">new message</a></li>
                        <li><a class="sInbox" title="" href="#">inbox</a></li>
                        <li><a class="sOutbox" title="" href="#">outbox</a></li>
                        <li><a class="sTrash" title="" href="#">trash</a></li>
                    </ul>
                </li>
                <li class="btn btn-inverse"><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">Settings</span></a></li>
                <li class="btn btn-inverse"><a title="" href="login.html"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
            </ul>
        </div>
            
			<%@include file="/include/nav.jsp" %>
		
		<div id="style-switcher">
			<i class="icon-arrow-left icon-white"></i>
			<span>Style:</span>
			<a href="#grey" style="background-color: #555555;border-color: #aaaaaa;"></a>
			<a href="#blue" style="background-color: #2D2F57;"></a>
			<a href="#red" style="background-color: #673232;"></a>
		</div>
		
		<div id="content">
			<div id="content-header">
				<h1>活动管理</h1>
				<div class="btn-group">
					<a class="btn btn-large tip-bottom" title="Manage Files"><i class="icon-file"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Users"><i class="icon-user"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Comments"><i class="icon-comment"></i><span class="label label-important">5</span></a>
					<a class="btn btn-large tip-bottom" title="Manage Orders"><i class="icon-shopping-cart"></i></a>
				</div>
			</div>
			<div id="breadcrumb">
				<a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i>首页</a>
				<a href="#" class="tip-bottom">流量管理</a>
				<a href="#" class="current">活动管理</a>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-align-justify"></i>									
								</span>
								<h5>活动发布</h5>
							</div>
							<div class="widget-content nopadding">
								<form action="#" method="post" class="form-horizontal" name="f1"/>
									<div class="control-group">
										<label class="control-label">活动标题</label>
										<div class="controls">
											<input type="text"/>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">活动内容</label>
										<div class="controls">
											<textarea></textarea>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">上传图片</label>
										<div class="controls">
											<input type="file" id="f" name="f" onchange="result()"/>
											<div id="d1"></div>
											<div id="d2"></div>
											<span class="help-block">活动banner页面</span>
										</div>
									</div>
									
									</div>
									<div class="form-actions">
										<button type="submit" class="btn btn-primary bnt-new">保存</button>
									</div>
								</form>
							</div>
						</div>						
					</div>
		
				<div class="row-fluid">
					<div class="widget-box">
							<div class="widget-title">
							
								<h5>活动列表</h5>
							</div>
							<div class="widget-content nopadding">
								<table class="table table-bordered data-table">
									<thead>
									<tr>
									<th>活动编号</th>
									<th>活动标题</th>
									<th>活动内容</th>
									<th>发布时间</th>
									<th>发布人</th>
									</tr>
									</thead>
									<tbody>
									<tr class="gradeX">
									<td>1</td>
									<td>Trident</td>
									<td>Internet
									Explorer 4.0</td>
									<td>Win 95+</td>
									<td class="center">4</td>
									</tr>
									<tr class="gradeC">
									<td>1</td>
									<td>Trident</td>
									<td>Internet
									Explorer 5.0</td>
									<td>Win 95+</td>
									<td class="center">5</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Trident</td>
									<td>Internet
									Explorer 5.5</td>
									<td>Win 95+</td>
									<td class="center">5.5</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Trident</td>
									<td>Internet
									Explorer 6</td>
									<td>Win 98+</td>
									<td class="center">6</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Trident</td>
									<td>Internet Explorer 7</td>
									<td>Win XP SP2+</td>
									<td class="center">7</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Trident</td>
									<td>AOL browser (AOL desktop)</td>
									<td>Win XP</td>
									<td class="center">6</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Gecko</td>
									<td>Firefox 1.0</td>
									<td>Win 98+ / OSX.2+</td>
									<td class="center">1.7</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Gecko</td>
									<td>Firefox 1.5</td>
									<td>Win 98+ / OSX.2+</td>
									<td class="center">1.8</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Gecko</td>
									<td>Firefox 2.0</td>
									<td>Win 98+ / OSX.2+</td>
									<td class="center">1.8</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Gecko</td>
									<td>Firefox 3.0</td>
									<td>Win 2k+ / OSX.3+</td>
									<td class="center">1.9</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Gecko</td>
									<td>Camino 1.0</td>
									<td>OSX.2+</td>
									<td class="center">1.8</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Gecko</td>
									<td>Camino 1.5</td>
									<td>OSX.3+</td>
									<td class="center">1.8</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Gecko</td>
									<td>Netscape 7.2</td>
									<td>Win 95+ / Mac OS 8.6-9.2</td>
									<td class="center">1.7</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Gecko</td>
									<td>Netscape Browser 8</td>
									<td>Win 98SE+</td>
									<td class="center">1.7</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Gecko</td>
									<td>Netscape Navigator 9</td>
									<td>Win 98+ / OSX.2+</td>
									<td class="center">1.8</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Gecko</td>
									<td>Mozilla 1.0</td>
									<td>Win 95+ / OSX.1+</td>
									<td class="center">1</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Gecko</td>
									<td>Mozilla 1.1</td>
									<td>Win 95+ / OSX.1+</td>
									<td class="center">1.1</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Gecko</td>
									<td>Mozilla 1.2</td>
									<td>Win 95+ / OSX.1+</td>
									<td class="center">1.2</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Gecko</td>
									<td>Mozilla 1.3</td>
									<td>Win 95+ / OSX.1+</td>
									<td class="center">1.3</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Gecko</td>
									<td>Mozilla 1.4</td>
									<td>Win 95+ / OSX.1+</td>
									<td class="center">1.4</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Gecko</td>
									<td>Mozilla 1.5</td>
									<td>Win 95+ / OSX.1+</td>
									<td class="center">1.5</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Gecko</td>
									<td>Mozilla 1.6</td>
									<td>Win 95+ / OSX.1+</td>
									<td class="center">1.6</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Gecko</td>
									<td>Mozilla 1.7</td>
									<td>Win 98+ / OSX.1+</td>
									<td class="center">1.7</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Gecko</td>
									<td>Mozilla 1.8</td>
									<td>Win 98+ / OSX.1+</td>
									<td class="center">1.8</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Gecko</td>
									<td>Seamonkey 1.1</td>
									<td>Win 98+ / OSX.2+</td>
									<td class="center">1.8</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Gecko</td>
									<td>Epiphany 2.20</td>
									<td>Gnome</td>
									<td class="center">1.8</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Webkit</td>
									<td>Safari 1.2</td>
									<td>OSX.3</td>
									<td class="center">125.5</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Webkit</td>
									<td>Safari 1.3</td>
									<td>OSX.3</td>
									<td class="center">312.8</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Webkit</td>
									<td>Safari 2.0</td>
									<td>OSX.4+</td>
									<td class="center">419.3</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Webkit</td>
									<td>Safari 3.0</td>
									<td>OSX.4+</td>
									<td class="center">522.1</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Webkit</td>
									<td>OmniWeb 5.5</td>
									<td>OSX.4+</td>
									<td class="center">420</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Webkit</td>
									<td>iPod Touch / iPhone</td>
									<td>iPod</td>
									<td class="center">420.1</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Webkit</td>
									<td>S60</td>
									<td>S60</td>
									<td class="center">413</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Presto</td>
									<td>Opera 7.0</td>
									<td>Win 95+ / OSX.1+</td>
									<td class="center">-</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Presto</td>
									<td>Opera 7.5</td>
									<td>Win 95+ / OSX.2+</td>
									<td class="center">-</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Presto</td>
									<td>Opera 8.0</td>
									<td>Win 95+ / OSX.2+</td>
									<td class="center">-</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Presto</td>
									<td>Opera 8.5</td>
									<td>Win 95+ / OSX.2+</td>
									<td class="center">-</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Presto</td>
									<td>Opera 9.0</td>
									<td>Win 95+ / OSX.3+</td>
									<td class="center">-</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Presto</td>
									<td>Opera 9.2</td>
									<td>Win 88+ / OSX.3+</td>
									<td class="center">-</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Presto</td>
									<td>Opera 9.5</td>
									<td>Win 88+ / OSX.3+</td>
									<td class="center">-</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Presto</td>
									<td>Opera for Wii</td>
									<td>Wii</td>
									<td class="center">-</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Presto</td>
									<td>Nokia N800</td>
									<td>N800</td>
									<td class="center">-</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Presto</td>
									<td>Nintendo DS browser</td>
									<td>Nintendo DS</td>
									<td class="center">8.5</td>
									</tr>
									<tr class="gradeC">
									<td>1</td>
									<td>KHTML</td>
									<td>Konqureror 3.1</td>
									<td>KDE 3.1</td>
									<td class="center">3.1</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>KHTML</td>
									<td>Konqureror 3.3</td>
									<td>KDE 3.3</td>
									<td class="center">3.3</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>KHTML</td>
									<td>Konqureror 3.5</td>
									<td>KDE 3.5</td>
									<td class="center">3.5</td>
									</tr>
									<tr class="gradeX">
									<td>1</td>
									<td>Tasman</td>
									<td>Internet Explorer 4.5</td>
									<td>Mac OS 8-9</td>
									<td class="center">-</td>
									</tr>
									<tr class="gradeC">
									<td>1</td>
									<td>Tasman</td>
									<td>Internet Explorer 5.1</td>
									<td>Mac OS 7.6-9</td>
									<td class="center">1</td>
									</tr>
									<tr class="gradeC">
									<td>1</td>
									<td>Tasman</td>
									<td>Internet Explorer 5.2</td>
									<td>Mac OS 8-X</td>
									<td class="center">1</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Misc</td>
									<td>NetFront 3.1</td>
									<td>Embedded devices</td>
									<td class="center">-</td>
									</tr>
									<tr class="gradeA">
									<td>1</td>
									<td>Misc</td>
									<td>NetFront 3.4</td>
									<td>Embedded devices</td>
									<td class="center">-</td>
									</tr>
									<tr class="gradeX">
									<td>1</td>
									<td>Misc</td>
									<td>Dillo 0.8</td>
									<td>Embedded devices</td>
									<td class="center">-</td>
									</tr>
									<tr class="gradeX">
									<td>1</td>
									<td>Misc</td>
									<td>Links</td>
									<td>Text only</td>
									<td class="center">-</td>
									</tr>
									<tr class="gradeX">
									<td>1</td>
									<td>Misc</td>
									<td>Lynx</td>
									<td>Text only</td>
									<td class="center">-</td>
									</tr>
									<tr class="gradeC">
									<td>1</td>
									<td>Misc</td>
									<td>IE Mobile</td>
									<td>Windows Mobile 6</td>
									<td class="center">-</td>
									</tr>
									<tr class="gradeC">
									<td>1</td>
									<td>Misc</td>
									<td>PSP browser</td>
									<td>PSP</td>
									<td class="center">-</td>
									</tr>
									<tr class="gradeU">
									<td>1</td>
									<td>Other browsers</td>
									<td>All others</td>
									<td>-</td>
									<td class="center">-</td>
									</tr>
									</tbody>
									</table>  
						
						</div>
					</div>
				</div>
			</div>

				<div class="row-fluid">
					<div id="footer" class="span12">
						2012 &copy; Unicorn Admin. Brought to you by <a href="https://wrapbootstrap.com/user/diablo9983">diablo9983</a>
					</div>
				</div>
			</div>
		</div>
            <script src="js/jquery.min.js"></script>
            <script src="js/jquery.ui.custom.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/bootstrap-colorpicker.js"></script>
            <script src="js/bootstrap-datepicker.js"></script>
            <script src="js/jquery.uniform.js"></script>
            <script src="js/select2.min.js"></script>
             <script src="js/jquery.dataTables.min.js"></script>
            <script src="js/unicorn.js"></script>
            <script src="js/unicorn.form_common.js"></script>
             <script src="js/unicorn.tables.js"></script>
            <script src="js/active.js"></script>
  </body>
</html>
