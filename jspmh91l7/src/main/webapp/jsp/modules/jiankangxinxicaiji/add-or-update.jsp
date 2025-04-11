<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
	<%@ include file="../../static/head.jsp"%>
	<link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css" rel="stylesheet">
	<script type="text/javascript" charset="utf-8">
	    window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
	</script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
  	<style>
		.error{
			color:red;
		}
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
		<div id="contentText">
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
							<h3 class="block-title">编辑健康信息采集</h3>
						</div>
						<div class="col-md-6">
							<ol class="breadcrumb">
								<li class="breadcrumb-item">
									<a href="${pageContext.request.contextPath}/index.jsp">
										<span class="ti-home"></span>
									</a>
								</li>
								<li class="breadcrumb-item"><span>健康信息采集管理</span></li>
								<li class="breadcrumb-item active"><span>编辑健康信息采集</span></li>
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
							<h3 class="widget-title">健康信息采集信息</h3>
							<form id="addOrUpdateForm">
								<div class="form-row">
									<input id="updateId" name="id" type="hidden">
									<div class="form-group col-md-6">
										<label>用户账号</label>
										<select  class="form-control"  name="yonghuzhanghao" id="yonghuzhanghaoSelect" onchange="yonghuzhanghaoSelect2Change()">
										</select>
									</div>
									<div class="form-group col-md-6">
										<label>用户姓名</label>
										<input id="yonghuxingming" name="yonghuxingming" class="form-control"  value="" readonly>
									</div>
									<div class="form-group col-md-6">
										<label>性别</label>
										<input id="xingbie" name="xingbie" class="form-control"  value="" readonly>
									</div>
									<div class="form-group col-md-6">
										<label>体温</label>
										<input name="tiwen" id="tiwen" name="tiwen" class="form-control" placeholder="体温">
									</div>
									<div class="form-group col-md-6">
										<label>所在地</label>
										<input name="suozaidi" id="suozaidi" name="suozaidi" class="form-control" placeholder="所在地">
									</div>
									<div class="form-group col-md-6">
										<label>健康码</label>
										<div><img id="jiankangmaImg" src="" width="100" height="100">
										<div class="upload">选择文件<input name="file" type="file" id="jiankangmaupload" class="form-control-file"></div>
										<input name="jiankangma" id="jiankangma-input" type="hidden"></div>
									</div>
									<div class="form-group col-md-6">
										<label>接种疫苗</label>
										<select id="jiezhongyimiaoSelect" name="jiezhongyimiao" class="form-control">
												<option value=""></option>
												<option class="jiezhongyimiaoOption" value="是">
													是
												</option>
												<option class="jiezhongyimiaoOption" value="否">
													否
												</option>
										</select>	
									</div>	
									<div class="form-group col-md-6">
										<label>疫苗种类</label>
										<input name="yimiaozhonglei" id="yimiaozhonglei" name="yimiaozhonglei" class="form-control" placeholder="疫苗种类">
									</div>
									<div class="form-group col-md-6">
										<label>接种时间</label>
										<div id="jiezhongshijianDate" class="input-append date form_datetime">
											<input id="jiezhongshijian-input" name="jiezhongshijian" size="15" type="text" readonly>
											<span class="add-on"><i class="icon-remove"></i></span>
											<span class="add-on"><i class="icon-calendar"></i></span>
										</div>
									</div>
									<div class="form-group col-md-6">
										<label>接种针数</label>
										<input name="jiezhongzhenshu" id="jiezhongzhenshu" name="jiezhongzhenshu" class="form-control" placeholder="接种针数">
									</div>
									<div class="form-group col-md-6">
										<label>核酸检测</label>
										<select id="hesuanjianceSelect" name="hesuanjiance" class="form-control">
												<option value=""></option>
												<option class="hesuanjianceOption" value="是">
													是
												</option>
												<option class="hesuanjianceOption" value="否">
													否
												</option>
										</select>	
									</div>	
									<div class="form-group col-md-6">
										<label>检测时间</label>
										<div id="jianceshijianDate" class="input-append date form_datetime">
											<input id="jianceshijian-input" name="jianceshijian" size="15" type="text" readonly>
											<span class="add-on"><i class="icon-remove"></i></span>
											<span class="add-on"><i class="icon-calendar"></i></span>
										</div>
									</div>
									<div class="form-group col-md-6">
										<label>检测结果</label>
										<select id="jiancejieguoSelect" name="jiancejieguo" class="form-control">
												<option value=""></option>
												<option class="jiancejieguoOption" value="阴性">
													阴性
												</option>
												<option class="jiancejieguoOption" value="阳性">
													阳性
												</option>
										</select>	
									</div>	
									<div class="form-group col-md-6">
										<label>风险地区</label>
										<select id="fengxiandiquSelect" name="fengxiandiqu" class="form-control">
												<option value=""></option>
												<option class="fengxiandiquOption" value="低分险">
													低分险
												</option>
												<option class="fengxiandiquOption" value="高中风险">
													高中风险
												</option>
										</select>	
									</div>	
									<div class="form-group col-md-6">
										<label>身体状态</label>
										<select id="shentizhuangtaiSelect" name="shentizhuangtai" class="form-control">
												<option value=""></option>
												<option class="shentizhuangtaiOption" value="良好">
													良好
												</option>
												<option class="shentizhuangtaiOption" value="不适">
													不适
												</option>
										</select>	
									</div>	
									<div class="form-group col-md-6">
										<label>登记日期</label>
										<div id="dengjiriqiDate" class="input-append date form_datetime">
											<input id="dengjiriqi-input" name="dengjiriqi" size="15" type="text" readonly>
											<span class="add-on"><i class="icon-remove"></i></span>
											<span class="add-on"><i class="icon-calendar"></i></span>
										</div>
									</div>
									<div class="form-group col-md-6">
										<label>补充说明</label>
										<textarea  name="buchongshuoming" class="form-control" id="buchongshuoming" rows="3"></textarea>
									</div>
									<div class="form-group col-md-6">
										<label>信息员账号</label>
										<input name="xinxiyuanzhanghao" id="xinxiyuanzhanghao" name="xinxiyuanzhanghao" class="form-control" placeholder="信息员账号">
									</div>
									<div class="form-group col-md-6">
										<label>信息员姓名</label>
										<input name="xinxiyuanxingming" id="xinxiyuanxingming" name="xinxiyuanxingming" class="form-control" placeholder="信息员姓名">
									</div>
										
									<div class="form-group-1 col-md-6 mb-3" style="display: flex;flex-wrap: wrap;">
										<button  id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
										<button id="exitBtn" type="button" class="btn btn-primary btn-lg">取消</button>
									</div>
								</div>
							</form>
						</div>
					</div>
					<!-- /Widget Item -->
				</div>
			</div>
			<!-- /Main Content -->
		</div>
		<!-- /Page Content -->
	</div>
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">
		<span class="ti-angle-up"></span>
	</a>
	<!-- /Back to Top -->
	<%@ include file="../../static/foot.jsp"%>
	<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
	<script>
		<%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../static/utils.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>   	

		var tableName = "jiankangxinxicaiji";
		var pageType = "add-or-update";
		var updateId = "";
		var crossTableId = -1;
		var crossTableName = '';
		var ruleForm = {};
		var crossRuleForm = {};


		function yonghuzhanghaoSelect2(){
			http("option/yonghu/yonghuzhanghao","GET",{
				tableName: "yonghu",
				columnName: "yonghuzhanghao"
			},(res)=>{
				if(res.code == 0){
					var options = res.data;
					var option = document.createElement("option");
					$("#yonghuzhanghaoSelect").append(option)
					for(var i=0;i<options.length;i++){
						var yonghuzhanghaoOption = document.createElement("option");
						yonghuzhanghaoOption.setAttribute("value",options[i]);
						yonghuzhanghaoOption.setAttribute("class","yonghuzhanghaoOption");
						if(ruleForm.yonghuzhanghao == options[i]){
							yonghuzhanghaoOption.setAttribute("selected","selected");
						}
						yonghuzhanghaoOption.innerHTML = options[i];
						//修改 回显
						if(ruleForm.yonghuzhanghao != null && ruleForm.yonghuzhanghao != '' && options[i] == ruleForm.yonghuzhanghao){
							yonghuzhanghaoOption.setAttribute("selected","selected");
						}
						$("#yonghuzhanghaoSelect").append(yonghuzhanghaoOption);
					}
				}
			});
		}		
		function yonghuzhanghaoSelect2Change(){
			var options = document.getElementById("yonghuzhanghaoSelect").options;
			var index = document.getElementById("yonghuzhanghaoSelect").selectedIndex;
			var colVal = options[index].value;
			http("follow/yonghu/yonghuzhanghao","GET",{
				tableName: "yonghu",
				columnName: "yonghuzhanghao",
				columnValue: colVal
			},(res)=>{
				if(res.code == 0){
					if(res.data != null && res.data.yonghuxingming != null){
						$("#yonghuxingming").val(res.data.yonghuxingming);
					}
					if(res.data != null && res.data.xingbie != null){
						$("#xingbie").val(res.data.xingbie);
					}
				}
			});
			
		}			

		var ruleForm = {};
		var vm = new Vue({
		  el: '#addOrUpdateForm',
		  data:{
			  ruleForm : {},
			},
		  beforeCreate: function(){
			  var id = window.sessionStorage.getItem("id");
				if(id != null && id != "" && id != "null"){
					$.ajax({ 
		                type: "GET",
		                url: baseUrl + "jiankangxinxicaiji/info/" + id,
		                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
		                success: function(res){               	
		                	if(res.code == 0){
		                		vm.ruleForm = res.data;
				    		}else if(res.code == 401) {
				    			<%@ include file="../../static/toLogin.jsp"%>    
				    		}else{ alert(res.msg)}
		                },
		            });
				}
			},
			methods: { }
	  	});		

		// 文件上传
		function upload(){
			$('#jiankangmaupload').fileupload({
				url: baseUrl + 'file/upload',
				headers:{ token: window.sessionStorage.getItem("token")},
				dataType: 'json',
				done: function (e, data) {				
					document.getElementById('jiankangma-input').setAttribute('value',"upload/"+data.result.file);
					if(document.getElementById('jiankangmaFileName') != null){
						document.getElementById('jiankangmaFileName').innerHTML = "上传成功!";
					}				
					$("#jiankangmaImg").attr("src",baseUrl+"upload/"+data.result.file);								
				}
			});
		}  
		//取消 
		function cancel() {
            window.location.href = "list.jsp";
		}
		function getQueryString(name) { 
			var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i"); 
			var r = window.location.search.substr(1).match(reg); 
			if (r != null) return unescape(r[2]); 
			return null; 
		}

		// 表单提交
		function submit() {

			var crossFlag = getQueryString("cross");
			if(validform() ==true && compare() == true){
				if(crossFlag) {
				}
				let data = {};
				getContent();
				let value = $('#addOrUpdateForm').serializeArray();
				$.each(value, function (index, item) { 
							data[item.name] = item.value;
						});
				let json = JSON.stringify(data);
				var urlParam;
				var successMes = '';
				if(updateId!=null && updateId!="null" && updateId!=''){
					urlParam = 'update';
					successMes = '修改成功';
				}else{		
					urlParam = 'save';
					successMes = '添加成功';
				}
				//更新跨表属性
			       var crossuserid;
			       var crossrefid;
			       var crossoptnum;
				if(crossFlag) {
					var statusColumnName = window.sessionStorage.getItem('statusColumnName'); 
					var statusColumnValue = window.sessionStorage.getItem('statusColumnValue'); 
					var obj = JSON.parse(window.sessionStorage.getItem('crossObj'));
					if(statusColumnName!='') {
						if(!statusColumnName.startsWith("[")) {
							for (var o in obj){
								if(o==statusColumnName){
									obj[o] = statusColumnValue;
								}
							}
							var table = window.sessionStorage.getItem('crossTableName');
							httpJson(crossTableName + "/update","POST",obj,(res)=>{
								if(res.code == 0){
									console.log('更新属性成功');
								}
							});   
						} else  {
							crossuserid = Number(window.sessionStorage.getItem('userid'));
							crossrefid = obj["id"];
							crossoptnum = window.sessionStorage.getItem('statusColumnName');
							crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
						}
					}
				}
				if(crossrefid && crossuserid) {
					data.crossuserid=crossuserid;
					data.crossrefid=crossrefid;
					http("jiankangxinxicaiji/page","GET",{
						page:1,
						limit:10,
						crossuserid:data.crossuserid,
						crossrefid:data.crossrefid,			
					},(res)=>{
						if(res.data.total >= crossoptnum){
							alert(window.sessionStorage.getItem('tips'));
							return false;
						} else {
							httpJson("jiankangxinxicaiji/"+urlParam,"POST",data,(res)=>{
								if(res.code == 0){
									window.sessionStorage.removeItem('id');
									let flag = true;
									if(crossFlag) {
									}

									if(flag){
										alert(successMes);
									}
									if(window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true"){
										window.sessionStorage.removeItem('onlyme');
										window.location.href="${pageContext.request.contextPath}/index.jsp";
									}else{
                                        window.location.href = "list.jsp";
									}
									
								}
							});
						}
					});
				} else {
					httpJson("jiankangxinxicaiji/"+urlParam,"POST",data,(res)=>{
						if(res.code == 0){
							window.sessionStorage.removeItem('id');
							let flag = true;
							if(crossFlag) {
							}

							if(flag){
								alert(successMes);
							}
							if(window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true"){
								window.sessionStorage.removeItem('onlyme');
								window.location.href="${pageContext.request.contextPath}/index.jsp";
							}else{
                                        window.location.href = "list.jsp";
							}
							
						}
					});
				}
			}else{
				alert("表单未填完整或有错误");
			}
		}

		// 填充富文本框
		function setContent(){
		}  

		// 获取富文本框内容
		function getContent(){
		}

		// 表单校验
		function validform() {
			return $("#addOrUpdateForm").validate({ 
				rules: {
				    yonghuzhanghao: {
					},
				    yonghuxingming: {
					},
				    xingbie: {
					},
				    tiwen: {
					},
				    suozaidi: {
					},
				    jiankangma: {
					},
				    jiezhongyimiao: {
					},
				    yimiaozhonglei: {
					},
				    jiezhongshijian: {
					},
				    jiezhongzhenshu: {
					},
				    hesuanjiance: {
					},
				    jianceshijian: {
					},
				    jiancejieguo: {
					},
				    fengxiandiqu: {
					},
				    shentizhuangtai: {
					},
				    dengjiriqi: {
					},
				    buchongshuoming: {
					},
				    xinxiyuanzhanghao: {
					},
				    xinxiyuanxingming: {
					},
				},
				messages: {
					yonghuxingming: {
					},
					xingbie: {
					},
					tiwen: {
					},
					suozaidi: {
					},
					jiankangma: {
					},
					jiezhongyimiao: {
					},
					yimiaozhonglei: {
					},
					jiezhongshijian: {
					},
					jiezhongzhenshu: {
					},
					hesuanjiance: {
					},
					jianceshijian: {
					},
					jiancejieguo: {
					},
					fengxiandiqu: {
					},
					shentizhuangtai: {
					},
					dengjiriqi: {
					},
					buchongshuoming: {
					},
					xinxiyuanzhanghao: {
					},
					xinxiyuanxingming: {
					},
				}
			}).form();
		}
		// 添加表单校验方法
		function addValidation(){
			jQuery.validator.addMethod("isPhone", function(value, element) {
					var length = value.length;
					var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1}))+\d{8})$/;
					return this.optional(element) || (length == 11 && mobile.test(value));
			}, "请填写正确的手机号码");
                        jQuery.validator.addMethod("isIdCardNo", function(value, element) {
                                return this.optional(element) || value.length == 18;
                        }, "请正确输入您的身份证号码");
                        jQuery.validator.addMethod("isTel", function(value, element) {
                          var length = value.length;
                          var phone = /(^(\d{3,4}-)?\d{6,8}$)|(^(\d{3,4}-)?\d{6,8}(-\d{1,5})?$)|(\d{11})/;
                          return this.optional(element) || (phone.test(value));
                         }, "请填写正确的固定电话");//可以自定义默认提示信息
		}
		// 获取当前详情
		function getDetails() {
			var id = window.sessionStorage.getItem("id");
			if(id != null && id != "" && id != "null"){
				updateId = id;
				window.sessionStorage.removeItem('id');
				http("jiankangxinxicaiji/info/" + id,"GET",{},(res)=>{
					if(res.code == 0){
						ruleForm = res.data
						// 是/否下拉框回显
						setSelectOption();
						// 设置图片src
						showImg();
						// 数据填充
						dataBind();
						// 富文本框回显	
						setContent();
												yonghuzhanghaoSelect2();
						//注册表单验证
						$(validform());	
					}
				});
			}else{
				yonghuzhanghaoSelect2();	



		 		fill()
				//注册表单验证
		    		$(validform());
			}
		}	
		// 下拉框选项回显
		function setSelectOption(){
		}			
		// 关联下拉框改变
		function lvSelectChange(level){
			let data = {};
			let value = $('#addOrUpdateForm').serializeArray();
			$.each(value, function (index, item) { 
			            data[item.name] = item.value;
			        });
			
		}		
		// 清除可能会重复渲染的selection
		function clear(className){
			var elements = document.getElementsByClassName(className);
        	for(var i = elements.length - 1; i >= 0; i--) { 
        	  elements[i].parentNode.removeChild(elements[i]); 
        	}
		}		
		function dateTimePick(){
			$.fn.datetimepicker.dates['zh-CN'] = { 
		            days: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"],
		            daysShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日"],
		            daysMin:  ["日", "一", "二", "三", "四", "五", "六", "日"],
		            months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            monthsShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            today: "今天",
		            suffix: [],
		            meridiem: ["上午", "下午"]
		    };
			$("#jiezhongshijian-input").val(getCurDate());
			$("#jiezhongshijianDate").datetimepicker({ 
				minView: "month",
				autoclose: true,
				format:'yyyy-mm-dd',
				language:'zh-CN',
			});
			$("#jianceshijian-input").val(getCurDate());
			$("#jianceshijianDate").datetimepicker({ 
				minView: "month",
				autoclose: true,
				format:'yyyy-mm-dd',
				language:'zh-CN',
			});
			$("#dengjiriqi-input").val(getCurDate());
			$("#dengjiriqiDate").datetimepicker({ 
				minView: "month",
				autoclose: true,
				format:'yyyy-mm-dd',
				language:'zh-CN',
			});

		}		
		
		function calculation(){
			//积
			var x = 0;
			//和
			var y = 0;
			var flag = 0;



		}		
		function calculationSE(colName){
			//单列求和接口
			http("jiankangxinxicaiji"+colName,"GET",{
				tableName: "jiankangxinxicaiji",
				columnName: colName
			},(res)=>{
				if(res.code == 0){
					$("#"+colName).attr("value",res.data);
				}
			});
		}	
		function calculationPre(){
			//进入该页面就填充"单列求和"的列
		}			
		
		
			//新增时填充字段
			function fill(){
				var username = window.sessionStorage.getItem('username');
				var accountTableName = window.sessionStorage.getItem('accountTableName');
				http(accountTableName+'/session','GET',{},(res)=>{
					if(res.code == 0){
						var myId = res.data.id;
						if(res.data !=null && res.data.xinxiyuanzhanghao != null && res.data.xinxiyuanzhanghao != ''){
							$('#xinxiyuanzhanghao').val(res.data.xinxiyuanzhanghao)
							$("#xinxiyuanzhanghao").attr('readonly','readonly');
						}
						if(res.data !=null && res.data.xinxiyuanxingming != null && res.data.xinxiyuanxingming != ''){
							$('#xinxiyuanxingming').val(res.data.xinxiyuanxingming)
							$("#xinxiyuanxingming").attr('readonly','readonly');
						}
						$(validform());
					}
				});
							
			}	
			
		function dataBind(){
			$("#updateId").val(ruleForm.id);	
				
						$("#yonghuxingming").val(ruleForm.yonghuxingming);	
			$("#xingbie").val(ruleForm.xingbie);	
			$("#tiwen").val(ruleForm.tiwen);	
			$("#suozaidi").val(ruleForm.suozaidi);	
			$("#jiankangma-input").val(ruleForm.jiankangma);
			var jiezhongyimiaoOptions = document.getElementsByClassName("jiezhongyimiaoOption");
			for(var jiezhongyimiaoCount = 0; jiezhongyimiaoCount < jiezhongyimiaoOptions.length;jiezhongyimiaoCount++){
				if(jiezhongyimiaoOptions[jiezhongyimiaoCount].getAttribute('value') == ruleForm.jiezhongyimiao){
					jiezhongyimiaoOptions[jiezhongyimiaoCount].setAttribute('selected','selected');
				}
			}
			$("#yimiaozhonglei").val(ruleForm.yimiaozhonglei);	
			$("#jiezhongshijian-input").val(ruleForm.jiezhongshijian);
			$("#jiezhongzhenshu").val(ruleForm.jiezhongzhenshu);	
			var hesuanjianceOptions = document.getElementsByClassName("hesuanjianceOption");
			for(var hesuanjianceCount = 0; hesuanjianceCount < hesuanjianceOptions.length;hesuanjianceCount++){
				if(hesuanjianceOptions[hesuanjianceCount].getAttribute('value') == ruleForm.hesuanjiance){
					hesuanjianceOptions[hesuanjianceCount].setAttribute('selected','selected');
				}
			}
			$("#jianceshijian-input").val(ruleForm.jianceshijian);
			var jiancejieguoOptions = document.getElementsByClassName("jiancejieguoOption");
			for(var jiancejieguoCount = 0; jiancejieguoCount < jiancejieguoOptions.length;jiancejieguoCount++){
				if(jiancejieguoOptions[jiancejieguoCount].getAttribute('value') == ruleForm.jiancejieguo){
					jiancejieguoOptions[jiancejieguoCount].setAttribute('selected','selected');
				}
			}
			var fengxiandiquOptions = document.getElementsByClassName("fengxiandiquOption");
			for(var fengxiandiquCount = 0; fengxiandiquCount < fengxiandiquOptions.length;fengxiandiquCount++){
				if(fengxiandiquOptions[fengxiandiquCount].getAttribute('value') == ruleForm.fengxiandiqu){
					fengxiandiquOptions[fengxiandiquCount].setAttribute('selected','selected');
				}
			}
			var shentizhuangtaiOptions = document.getElementsByClassName("shentizhuangtaiOption");
			for(var shentizhuangtaiCount = 0; shentizhuangtaiCount < shentizhuangtaiOptions.length;shentizhuangtaiCount++){
				if(shentizhuangtaiOptions[shentizhuangtaiCount].getAttribute('value') == ruleForm.shentizhuangtai){
					shentizhuangtaiOptions[shentizhuangtaiCount].setAttribute('selected','selected');
				}
			}
			$("#dengjiriqi-input").val(ruleForm.dengjiriqi);
			$("#buchongshuoming").val(ruleForm.buchongshuoming);
			$("#xinxiyuanzhanghao").val(ruleForm.xinxiyuanzhanghao);	
			$("#xinxiyuanxingming").val(ruleForm.xinxiyuanxingming);	
		}		
		//图片显示
		function showImg(){
			var jiankangmaFileName = "\"" + ruleForm.jiankangma + "\"";
			$("#jiankangmaImg").attr("src",baseUrl+ruleForm.jiankangma);
		}		
		//跨表

        //跨表
        function crossTable(){
		crossTableName = window.sessionStorage.getItem('crossTableName');
		crossTableId = window.sessionStorage.getItem('crossTableId');
		if(crossTableName != null && crossTableName != '' && crossTableId != null && crossTableId != '' && crossTableId != -1){
			http(crossTableName + "/info/" + crossTableId,"GET",{},(res)=>{
				if(res.code == 0){
					crossRuleForm = res.data;
					$('#updateId').val(crossTableId);
					if(res.data != null && res.data != '' && res.data.yonghuzhanghao != null && res.data.yonghuzhanghao != ''){

					}
					if(res.data != null && res.data != '' && res.data.yonghuxingming != null && res.data.yonghuxingming != ''){

						$("#yonghuxingming").val(res.data.yonghuxingming);
						$("#yonghuxingming").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.xingbie != null && res.data.xingbie != ''){

						$("#xingbie").val(res.data.xingbie);
						$("#xingbie").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.tiwen != null && res.data.tiwen != ''){

						$("#tiwen").val(res.data.tiwen);
						$("#tiwen").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.suozaidi != null && res.data.suozaidi != ''){

						$("#suozaidi").val(res.data.suozaidi);
						$("#suozaidi").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.jiankangma != null && res.data.jiankangma != ''){

						$("#jiankangmaImg").attr("src",baseUrl+res.data.jiankangma);
						$("#jiankangma-input").val(res.data.jiankangma);
					}
					if(res.data != null && res.data != '' && res.data.jiezhongyimiao != null && res.data.jiezhongyimiao != ''){

						var jiezhongyimiaoOptions = document.getElementsByClassName("jiezhongyimiaoOption");
						for(var jiezhongyimiaoCount = 0; jiezhongyimiaoCount < jiezhongyimiaoOptions.length;jiezhongyimiaoCount++){
							if(jiezhongyimiaoOptions[jiezhongyimiaoCount].getAttribute('value') == res.data.jiezhongyimiao){
								jiezhongyimiaoOptions[jiezhongyimiaoCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.yimiaozhonglei != null && res.data.yimiaozhonglei != ''){

						$("#yimiaozhonglei").val(res.data.yimiaozhonglei);
						$("#yimiaozhonglei").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.jiezhongshijian != null && res.data.jiezhongshijian != ''){

						$("#jiezhongshijian-input").val(res.data.jiezhongshijian);
						$('#jiezhongshijianFileName').val(res.data.jiezhongshijian)
					}
					if(res.data != null && res.data != '' && res.data.jiezhongzhenshu != null && res.data.jiezhongzhenshu != ''){

						$("#jiezhongzhenshu").val(res.data.jiezhongzhenshu);
						$("#jiezhongzhenshu").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.hesuanjiance != null && res.data.hesuanjiance != ''){

						var hesuanjianceOptions = document.getElementsByClassName("hesuanjianceOption");
						for(var hesuanjianceCount = 0; hesuanjianceCount < hesuanjianceOptions.length;hesuanjianceCount++){
							if(hesuanjianceOptions[hesuanjianceCount].getAttribute('value') == res.data.hesuanjiance){
								hesuanjianceOptions[hesuanjianceCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.jianceshijian != null && res.data.jianceshijian != ''){

						$("#jianceshijian-input").val(res.data.jianceshijian);
						$('#jianceshijianFileName').val(res.data.jianceshijian)
					}
					if(res.data != null && res.data != '' && res.data.jiancejieguo != null && res.data.jiancejieguo != ''){

						var jiancejieguoOptions = document.getElementsByClassName("jiancejieguoOption");
						for(var jiancejieguoCount = 0; jiancejieguoCount < jiancejieguoOptions.length;jiancejieguoCount++){
							if(jiancejieguoOptions[jiancejieguoCount].getAttribute('value') == res.data.jiancejieguo){
								jiancejieguoOptions[jiancejieguoCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.fengxiandiqu != null && res.data.fengxiandiqu != ''){

						var fengxiandiquOptions = document.getElementsByClassName("fengxiandiquOption");
						for(var fengxiandiquCount = 0; fengxiandiquCount < fengxiandiquOptions.length;fengxiandiquCount++){
							if(fengxiandiquOptions[fengxiandiquCount].getAttribute('value') == res.data.fengxiandiqu){
								fengxiandiquOptions[fengxiandiquCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.shentizhuangtai != null && res.data.shentizhuangtai != ''){

						var shentizhuangtaiOptions = document.getElementsByClassName("shentizhuangtaiOption");
						for(var shentizhuangtaiCount = 0; shentizhuangtaiCount < shentizhuangtaiOptions.length;shentizhuangtaiCount++){
							if(shentizhuangtaiOptions[shentizhuangtaiCount].getAttribute('value') == res.data.shentizhuangtai){
								shentizhuangtaiOptions[shentizhuangtaiCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.dengjiriqi != null && res.data.dengjiriqi != ''){

						$("#dengjiriqi-input").val(res.data.dengjiriqi);
						$('#dengjiriqiFileName').val(res.data.dengjiriqi)
					}
					if(res.data != null && res.data != '' && res.data.buchongshuoming != null && res.data.buchongshuoming != ''){

						$("#buchongshuoming").val(res.data.buchongshuoming);
					}
					if(res.data != null && res.data != '' && res.data.xinxiyuanzhanghao != null && res.data.xinxiyuanzhanghao != ''){

						$("#xinxiyuanzhanghao").val(res.data.xinxiyuanzhanghao);
						$("#xinxiyuanzhanghao").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.xinxiyuanxingming != null && res.data.xinxiyuanxingming != ''){

						$("#xinxiyuanxingming").val(res.data.xinxiyuanxingming);
						$("#xinxiyuanxingming").attr('readonly','readonly');
					}
				}
			});  
            }
		window.sessionStorage.removeItem('crossTableName');
		window.sessionStorage.removeItem('crossTableId');
        }
		
		//跨表更新字段
		function crossTableUpdate(){
			let flag = crossTableUpdateValidation();
			if(flag){
				httpJson(crossTableName + "/update","POST",{
					id: crossTableId,
				},(res)=>{
					if(res.code == 0){
						console.log('跨表更新成功');
						return true;
					}
				});   
			}
			return false;
		}

		//跨表更新前验证
		function crossTableUpdateValidation(){
			//防止减法导致库存负值
			return true;
		}
		$(document).ready(function() { 
			//设置右上角用户名
            $('.dropdown-menu h5').html(window.sessionStorage.getItem('username')+'('+window.sessionStorage.getItem('role')+')')
			//设置项目名
			$('.sidebar-header h3 a').html(projectName)
			//设置导航栏菜单
			setMenu();
			//初始化时间插件
			dateTimePick();
			//添加表单校验信息文本
			addValidation();
			getDetails();
			//初始化上传按钮
			upload();
			//单列求和
			calculationPre();
			//跨表
			crossTable();
			<%@ include file="../../static/myInfo.js"%>
			$('#submitBtn').on('click', function(e) {
			    e.preventDefault();
			    //console.log("点击了...提交按钮");
			    submit();
			});
			$('#exitBtn').on('click', function(e) {
			    cancel();
			});
			readonly();
		});		

		function readonly(){
            if(window.sessionStorage.getItem('role')!="管理员") {
				$('#money').attr('readonly','readonly');
            }
		}

		//比较大小
		function compare(){
			var largerVal = null;
			var smallerVal = null;
			if(largerVal !=null && smallerVal != null){
				if(parseInt(largerVal)<=parseInt(smallerVal)){
					alert(smallerName+'不能大于等于'+largerName);
					return false;
				}
			}
			return true;
		}


		// 用户登出
        <%@ include file="../../static/logout.jsp"%>		
	</script>
</body>

</html>
