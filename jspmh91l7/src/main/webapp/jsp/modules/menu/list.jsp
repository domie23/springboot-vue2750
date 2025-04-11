<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
	<%@ include file="../../static/head.jsp"%>
	<!-- font-awesome -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
</head>
<style>

</style>
<body>
	<!-- Pre Loader -->
	<div class="loading">
		<div class="spinner">
			<div class="double-bounce1"></div>
			<div class="double-bounce2"></div>
		</div>
	</div>
	<!--/Pre Loader -->
	<div class="wrapper">
		<!-- Page Content -->
		<div id="content">
				<!-- Top Navigation -->
				<%@ include file="../../static/topNav.jsp"%>
				<!-- Menu -->
				<div class="container menu-nav">
					<nav class="navbar navbar-expand-lg lochana-bg text-white">
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
						 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="ti-menu text-white"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<!-- <div class="z-navbar-nav-title">$template2.back.menu.title.text</div> -->
							<ul id="navUl" class="navbar-nav mr-auto">						
							</ul>
						</div>
					</nav>
				</div>
				<!-- /Menu -->
				<!-- Breadcrumb -->
				<!-- Page Title -->
				<div class="container mt-0">
					<div class="row breadcrumb-bar">
						<div class="col-md-6">
							<h3 class="block-title">菜单管理</h3>
						</div>
						<div class="col-md-6">
							<ol class="breadcrumb">
								<li class="breadcrumb-item">
									<a href="${pageContext.request.contextPath}/index.jsp">
										<span class="ti-home"></span>
									</a>
								</li>
								<li class="breadcrumb-item"><span>菜单管理</span></li>
								<li class="breadcrumb-item active"><span>菜单列表</span></li>
							</ol>
						</div>
					</div>
				</div>
			<!-- /Page Title -->

			<!-- /Breadcrumb -->
			<!-- Main Content -->
			<div class="container">

				<div class="row">
					<!-- Widget Item -->
					<div class="col-md-12">
						<div class="widget-area-2 lochana-box-shadow">
							<h3 class="widget-title">菜单列表</h3>							
							<div class="table-responsive mb-3" id="tableDiv">
								<div class="col-sm-12">
									<label>
										角色
									</label>
									<select name="roleName" id="roleNameSelect" class="form-control form-control-sm" aria-controls="tableId">
									</select>
									<button onclick="search()" type="button" class="btn btn-primary">查询</button>
								</div>
								<table id="tableId" class="table table-bordered table-striped">
									<thead>
										<tr>
											<th>一级菜单</th>
											<th>二级菜单</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<!-- /Widget Item -->
				</div>
			</div>
			<!-- /Main Content -->

		</div>
		<!-- /Page Content -->
	</div>
	<!--修改菜单名称-->
	<div class="modal fade" id="editMenuName" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">编辑名称</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form id="shForm">
						<input type="hidden" id="shId" name="id">
						<div class="row">
							<div class="col-sm-12">
								<div class="form-group form-group-default">
									<label>一级菜单</label>
									<input id="parentMenuName" class="form-control" name="parentMenuName"></input>
								</div>
							</div>
							<div class="col-sm-12">
								<div class="form-group form-group-default">
									<label>二级菜单</label>
									<input id="childMenuName" class="form-control" name="childMenuName"></input>
								</div>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
					<button id="editMenuNameButton" onclick="editMenuName()" type="button" class="btn btn-primary" data-dismiss="modal">提交</button>
				</div>
			</div>
		</div>
	</div>
	<!--修改菜单等级-->
	<div class="modal fade" id="editMenuLevel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">编辑父级</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form id="shForm">
						<input type="hidden" id="shId" name="id">
						<div class="row">
							<div class="col-md-6 pr-0">
								<div class="form-group form-group-default">
									<label>一级菜单</label>
									<select name="parentMenuNameSelect" id="parentMenuNameSelect" class="form-control">
									</select>
								</div>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
					<button id="addRowButton" onclick="editMenuLevel()" type="button" class="btn btn-primary" data-dismiss="modal">提交</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">
		<span class="ti-angle-up"></span>
	</a>
	<!-- /Back to Top -->
	<%@ include file="../../static/foot.jsp"%>
	<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/resources/My97DatePicker/WdatePicker.js"></script>

	<script>
		<%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>
		<%@ include file="../../static/getRoleButtons.js"%>
		<%@ include file="../../static/crossBtnControl.js"%>
		var tableName = "menu";
		var pageType = "list";
	  	var searchForm = { key: ""};
		var pageIndex = 1;
		var pageSize = 10;
		var totalPage = 0;
		var dataList = [];
		var sortColumn = '';
		var sortOrder= '';
		var ids = [];
		var checkAll = false;
		var checkParentMenuName= '';
		var oldCheckParentMenuName= '';
		var checkChildMenuName= '';
		var oldCheckChildMenuName= '';
		var menuList= [];
		var roleName= '管理员';
		var roleNameList= [];
		var backMenuList= [];
		var backChildMenuList= [];
		var parentMenuNameList= [];


		function init() {
			// 满足条件渲染提醒接口
		}
		// 改变每页记录条数
		function changePageSize() {
		    var selection = document.getElementById('selectPageSize');
		    var index = selection.selectedIndex;
			pageSize = selection.options[index].value;
			getDataList();
        }		
		//排序
		function sort(columnName){
			var iconId = '#'+columnName+'Icon'
			$('th i').attr('class','fa fa-sort');
			if(sortColumn == '' || sortColumn != columnName){
				sortColumn = columnName;
				sortOrder = 'asc';
				$(iconId).attr('class','fa fa-sort-asc');
			}
			if(sortColumn == columnName){
				if(sortOrder == 'asc'){
					sortOrder = 'desc';
					$(iconId).attr('class','fa fa-sort-desc');
				}else{
					sortOrder = 'asc';
					$(iconId).attr('class','fa fa-sort-asc');
				}
			}
			pageIndex = 1;
			getDataList();
		}		
		

		// 查询
		function search(){
			searchForm = { key: ""};
			var roleNameIndex = document.getElementById("roleNameSelect").selectedIndex;
			var roleNameOptions = document.getElementById("roleNameSelect").options;
			var roleNameSelectedOption = roleNameOptions[roleNameIndex]
			roleName = roleNameSelectedOption.text;
			getDataList(roleName);
		}		
		// 获取菜单列表
        function getDataList(rn) {
        	if (rn == null) rn = "管理员";
        	roleNameList = [];
			parentMenuNameList = [];
			backChildMenuList = [];
			http("menu/page","GET",{
				page: pageIndex,
				limit: pageSize,
			},(res)=>{
				if(res.code == 0){
					clear();
					dataList = res.data.list;
					menuList = eval('(' + res.data.list[0].menujson + ')');
					//var tbody = document.getElementById('tbMain');
					for(var i = 0;i < menuList.length; i++){
						roleNameList.push(menuList[i].roleName);
						if (menuList[i].roleName == rn) {
							backMenuList = menuList[i].backMenu;
							var parentMenuName = '';
							var childMenuList = [];
							for (var j=0;j<backMenuList.length; j++) {
								parentMenuNameList.push(backMenuList[j].menu);
								parentMenuName = backMenuList[j].menu;
								childMenuList = backMenuList[j].child;
								// console.log(parentMenuName);
								// console.log(childMenuList);
								if (childMenuList.length > 0) {
									for (var k=0;k<childMenuList.length; k++) {
										childMenuList[k].parentMenuName = parentMenuName;
										backChildMenuList.push(childMenuList[k]);
										var trow = setDataRow(childMenuList[k],k); 
										$('tbody').append(trow); 
									}
								} else {
									var parentNode = {};
									parentNode.parentMenuName = parentMenuName;
									backChildMenuList.push(parentNode);
									var trow = setDataRow(parentNode,k); 
									$('tbody').append(trow); 
								}
							}
						}
					}
					if($("#roleNameSelect").find("option").length==0) {
						roleNameSelect();
					}
					parentMenuNameSelect();
					pagination(); //渲染翻页组件
					getRoleButtons();// 权限按钮控制
				}
			});
        }		
		
		// 渲染表格数据
		function setDataRow(item,number){
			//创建行 
			var row = document.createElement('tr'); 
			row.setAttribute('class','useOnce');

			var parentMenuNameCell  = document.createElement('td');
			parentMenuNameCell.innerHTML = item.parentMenuName;
			row.appendChild(parentMenuNameCell);

			var childMenuNameCell  = document.createElement('td');

			if(item.menu) {
				childMenuNameCell.innerHTML = item.menu;
			} else {
				childMenuNameCell.innerHTML = "";
			}
			
			row.appendChild(childMenuNameCell);

			//每行按钮
			var btnGroup = document.createElement('td');

			//修改菜单名称
			var editMenuNameBtn = document.createElement('button');
			editMenuNameBtn.setAttribute("type","button");
			editMenuNameBtn.setAttribute("class","btn btn-primary btn-sm 编辑名称");
			var editMenuNameAttr = "editMenuNamePage('" + item.parentMenuName+"','" + childMenuNameCell.innerHTML + "')";
			editMenuNameBtn.setAttribute('onclick',editMenuNameAttr);
			editMenuNameBtn.innerHTML = "编辑名称";
			editMenuNameBtn.setAttribute("data-toggle","modal");
			editMenuNameBtn.setAttribute("data-target","#editMenuName");
			btnGroup.appendChild(editMenuNameBtn);

			//修改菜单等级
			var editMenuLevelBtn = document.createElement('button');
			editMenuLevelBtn.setAttribute("type","button");
			editMenuLevelBtn.setAttribute("class","btn btn-primary btn-sm 编辑父级");
			var editMenuLevelAttr = "editMenuLevelPage('" + item.parentMenuName+"','" + childMenuNameCell.innerHTML + "')";
			editMenuLevelBtn.setAttribute('onclick',editMenuLevelAttr);
			editMenuLevelBtn.innerHTML = "编辑父级";
			editMenuLevelBtn.setAttribute("data-toggle","modal");
			editMenuLevelBtn.setAttribute("data-target","#editMenuLevel");
			btnGroup.appendChild(editMenuLevelBtn);
			//删除按钮
			var deleteBtn = document.createElement('button');
			var deleteAttr = 'remove("' +  item.parentMenuName + '")';
			deleteBtn.setAttribute("type","button");
			deleteBtn.setAttribute("class","btn btn-danger btn-sm 删除");
			deleteBtn.setAttribute("onclick",deleteAttr);
			deleteBtn.innerHTML = "删除"
			btnGroup.appendChild(deleteBtn)

			row.appendChild(btnGroup)
			return row;
		}	

		function roleNameSelect(){
			var roleNameSelect = document.getElementById('roleNameSelect');
			for(var i=0;i<roleNameList.length;i++){
				var roleNameOption = document.createElement('option');
				roleNameOption.setAttribute('name','roleNameOption');
				roleNameOption.setAttribute('value',roleNameList[i]);
				roleNameOption.innerHTML = roleNameList[i];
				roleNameSelect.appendChild(roleNameOption);
			}
		}	

		function parentMenuNameSelect(){
			var parentMenuNameSelect = document.getElementById('parentMenuNameSelect');
			if(parentMenuNameSelect.options.length>0) {
				$("#parentMenuNameSelect").empty();
			}
			for(var i=0;i<parentMenuNameList.length;i++){
				var parentMenuNameOption = document.createElement('option');
				parentMenuNameOption.setAttribute('name','parentMenuNameOption');
				parentMenuNameOption.setAttribute('value',parentMenuNameList[i]);
				parentMenuNameOption.innerHTML = parentMenuNameList[i];
				parentMenuNameSelect.appendChild(parentMenuNameOption);
			}
		}	

		//修改菜单名称页面
		function editMenuNamePage(parentMenuName,childMenuName){
			$("#parentMenuName").val(parentMenuName);
			$("#childMenuName").val(childMenuName);
			oldCheckParentMenuName = parentMenuName;
			oldCheckChildMenuName = childMenuName;
			if($("#childMenuName").val()=="") {
				$("#childMenuName").attr("readonly","true");
			} else {
				$("#childMenuName").removeAttr("readonly");
			}
		}	

		//审核提交
		function editMenuName(){
			if($("#parentMenuName").val()==""||(oldCheckChildMenuName!="" && $("#childMenuName").val()=="")) {
				alert("菜单名称不能为空。")
				return
			}
			for (var i=0;i<menuList.length;i++) {
				if (menuList[i].roleName == roleName) {
					var oldBackMenuList = menuList[i].backMenu;
					var parentMenuName = '';
					var childMenuList = [];
					for (var j=0;j<oldBackMenuList.length;j++) {
						parentMenuName = oldBackMenuList[j].menu;
						childMenuList = oldBackMenuList[j].child;
						if (oldCheckParentMenuName == parentMenuName) {
							if (parentMenuName != $("#parentMenuName").val()) {
								//修改一级菜单名字
								oldBackMenuList[j].menu = $("#parentMenuName").val();
							}
							for (var k=0;k<childMenuList.length;k++) {
								if (oldCheckChildMenuName == childMenuList[k].menu) {
									if ($("#childMenuName").val() != childMenuList[k].menu) {
										//修改二级菜单名字
										childMenuList[k].menu = $("#childMenuName").val();
										childMenuList[k].parentMenuName = $("#parentMenuName").val();
									}
									break;
								}
							}
							break;
						}
					}
					break;
				}
			}
			let data = {};
			data["id"] = 1;
			data["menujson"] = JSON.stringify(menuList);
			httpJson("menu/update","POST", data,(res)=>{
				if(res.code == 0){
					$('#editMenuName').hide();
					alert("提交成功");
					getDataList(roleName);
				}
			});
		}	

		//修改菜单等级页面
		function editMenuLevelPage(parentMenuName,childMenuName){
			$("#parentMenuNameSelect").val(parentMenuName);
			oldCheckParentMenuName = parentMenuName;
			checkChildMenuName = childMenuName;
		}	

		function editMenuLevel() {
			if(checkChildMenuName=="") {
				alert("一级菜单无法操作。")
				return;
			}
			for (var i=0;i<menuList.length;i++) {
				if (menuList[i].roleName == roleName) {
					var oldBackMenuList = menuList[i].backMenu;
					var parentMenuName = '';
					var childMenuList = [];
					for (var j=0;j<oldBackMenuList.length;j++) {
						parentMenuName = oldBackMenuList[j].menu;
						childMenuList = oldBackMenuList[j].child;
						if (oldCheckParentMenuName == parentMenuName) {
							//获取原父级菜单下的子菜单
							if (parentMenuName != $("#parentMenuNameSelect").val()) {
								var fromChildMenu;
								for (var k=0;k<childMenuList.length;k++) {
									if (checkChildMenuName == childMenuList[k].menu) {
										fromChildMenu = childMenuList[k];
										var toChildMenuList = [];
										for (var l=0;l<oldBackMenuList.length;l++) {
											if ($("#parentMenuNameSelect").val() == oldBackMenuList[l].menu) {
												toChildMenuList = oldBackMenuList[l].child;
												toChildMenuList.push(fromChildMenu);
												break;
											}
										}
										childMenuList.splice(k, 1)
										break;
									}
								}
							}
							break;
						}
					}
				}
			}
			let data = {};
			data["id"] = 1;
			data["menujson"] = JSON.stringify(menuList);
			httpJson("menu/update","POST", data,(res)=>{
				if(res.code == 0){
					$('#editMenuLevel').hide();
					alert("提交成功");
					getDataList(roleName);
				}
			});
		}


		// 翻页
        function pageNumChange(val) {
            if(val == 'pre') {
                pageIndex--;
            }else if(val == 'next'){
                pageIndex++;
            }else{
                pageIndex = val;
            }
			getDataList();
        }		
		// 下载
		function download(url){
			window.open(url);
		}
		// 打开新窗口播放媒体
		function mediaPlay(url){
			window.open(url);
		}		
		// 渲染翻页组件
		function pagination() {
			var beginIndex = pageIndex;
			var endIndex = pageIndex;
			var point = 4;
			//计算页码
			for(var i=0;i<3;i++){
				if(endIndex==totalPage){ break;}
				endIndex++;
				point--;
			}
			for(var i=0;i<3;i++){
				if(beginIndex==1){break;}
				beginIndex--;
				point--;
			}
			if(point>0){
				while (point>0){
					if(endIndex==totalPage){ break;}
					endIndex++;
					point--;
				}
				while (point>0){
					if(beginIndex==1){ break;}
					beginIndex--;
					point--
				}
			}
			// 是否显示 前一页 按钮
			if(pageIndex>1){
				$('#tableId_previous').show();
			}else{
				$('#tableId_previous').hide();
			}
			// 渲染页码按钮
			for(var i=beginIndex;i<=endIndex;i++){
				var pageNum = document.createElement('li');
				pageNum.setAttribute('onclick',"pageNumChange("+i+")");
				if(pageIndex == i){
					pageNum.setAttribute('class','paginate_button page-item active useOnce');
				}else{
					pageNum.setAttribute('class','paginate_button page-item useOnce');
				}								
				var pageHref = document.createElement('a');
				pageHref.setAttribute('class','page-link');
				pageHref.setAttribute('href','#');
				pageHref.setAttribute('aria-controls','tableId');
				pageHref.setAttribute('data-dt-idx',i);
				pageHref.setAttribute('tabindex',0);
				pageHref.innerHTML = i;
				pageNum.appendChild(pageHref);
				$('#tableId_next').before(pageNum);
			}
			// 是否显示 下一页 按钮
			if(pageIndex < totalPage){
				$('#tableId_next').show();
				$('#tableId_next a').attr('data-dt-idx',endIndex+1);
			}else{
				$('#tableId_next').hide();
			}
			var pageNumInfo = "当前第 "+ pageIndex + " 页，共 "+ totalPage + " 页";
			$('#tableId_info').html(pageNumInfo);
		}		
		// 跳转到指定页
		function toThatPage(){
			//var index = document.getElementById('pageIndexInput').value;
			if(index<0 || index>totalPage){
				alert('请输入正确的页码');
			}else {
				pageNumChange(index);
			}
		}		
		// 全选/全不选
		function chooseAll(){
			checkAll = !checkAll;
			var boxs = document.getElementsByName("chk");
			for(var i=0;i<boxs.length;i++){
				boxs[i].checked= checkAll;
			}
		}		
	
		// 批量删除
		function deleteMore(){
			ids = []
			var boxs = document.getElementsByName("chk");
			for(var i=0;i<boxs.length;i++){
				if(boxs[i].checked){
					ids.push(boxs[i].value)
				}
			}
			if(ids.length == 0){
				alert('请勾选要删除的记录');
			}else{
				remove(ids);
			}
		}	
		// 删除
        function remove(parentMenuName) {
        	var mymessage = confirm("确定进行删除操作?");
            if (mymessage == true) {
				debugger
				if (parentMenuName) {
					checkParentMenuName = parentMenuName;
					var delFlag = false;
					for (var i=0;i<menuList.length;i++) {
						if (menuList[i].roleName == roleName) {
							var oldBackMenuList = menuList[i].backMenu;
							var parentMenuName = '';
							var childMenuList = [];
							for (var j=0;j<oldBackMenuList.length;j++) {
								parentMenuName = oldBackMenuList[j].menu;
								childMenuList = oldBackMenuList[j].child;
								if (checkParentMenuName == parentMenuName) {
									if(childMenuList.length>0) {
										alert('存在二级菜单，无法删除');
										break;
									}
									oldBackMenuList.splice(j, 1)
									delFlag = true;
									break;
								}
							}
							break;
						}
					}
					if(delFlag) {
						let data = {};
						data["id"] = 1;
						data["menujson"] = JSON.stringify(menuList);
						httpJson("menu/update","POST", data,(res)=>{
							if(res.code == 0){
								alert("提交成功");
								getDataList(roleName);
							}
						});
					}
				}
            } else {
                alert("已取消操作");
            }
        }	
		// 用户登出
        <%@ include file="../../static/logout.jsp"%>

		//修改
        function edit(id) {
            window.sessionStorage.setItem('id', id)
            window.location.href = "add-or-update.jsp"
        }
		//清除会重复渲染的节点
        function clear(){
        	var elements = document.getElementsByClassName('useOnce');
        	for(var i = elements.length - 1; i >= 0; i--) { 
        	  elements[i].parentNode.removeChild(elements[i]); 
        	}
        }
	//添加
	function add(){
		window.location.href = "add-or-update.jsp"
	}
	//单列求和
	function getSum(colName){
		http("menu"+colName,"GET",{
			tableName: "menu",
			columnName: colName
		},(res)=>{
			if(res.code == 0){
				return res.data.sum;
			}
		});
	}		
	// 查看详情
	function detail(id){
		window.sessionStorage.setItem("id", id);
		//window.sessionStorage.setItem("ifView", true);
		window.location.href = "info.jsp";
	}

	//跨表
	function crossTable(obj,crossTableName,crossOptAudit,statusColumnName,tips,statusColumnValue){
		window.sessionStorage.setItem('crossTableId',obj.id);
		window.sessionStorage.setItem('crossObj', JSON.stringify(obj));
		window.sessionStorage.setItem('crossTableName',"menu");
		window.sessionStorage.setItem('statusColumnName',statusColumnName);
		window.sessionStorage.setItem('statusColumnValue',statusColumnValue);
		window.sessionStorage.setItem('tips',tips);
		if(statusColumnName!=''&&!statusColumnName.startsWith("[")) {
			for (var o in obj){
				if(o==statusColumnName && obj[o]==statusColumnValue){
                                        alert(tips);
					return
				}
			}
		}
		var url = "../"+crossTableName+"/add-or-update.jsp?cross=true";
		window.location.href = url;
	}





		$(document).ready(function() { 
			//激活翻页按钮
			$('#tableId_previous').attr('class','paginate_button page-item previous')
			$('#tableId_next').attr('class','paginate_button page-item next')
			//隐藏原生搜索框
			$('#tableId_filter').hide()
			//设置右上角用户名
			$('.dropdown-menu h5').html(window.sessionStorage.getItem('username')+'('+window.sessionStorage.getItem('role')+')')
			//设置项目名
			$('.sidebar-header h3 a').html(projectName)
			setMenu();			
			init();
			getDataList();
			<%@ include file="../../static/myInfo.js"%>
		});
	</script>
</body>

</html>
