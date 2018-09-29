<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>对方信息</title>
<script type="application/x-javascript">	
addEventListener("load", function() { 
		 setTimeout(hideURLbar, 0); 
		 }, false); 
 function hideURLbar(){ 
		 window.scrollTo(0,1); 
		 } 
</script>
<script type="text/javascript">
function addFocus(){
	
	document.getElementById("addFocus").value="已关注";
	
	document.getElementById("addFocus").disabled=true;
	document.getElementById("addFocus").style.color="#808080";
	$.ajax({
		url:"<%=basePath%>user/lxd/addFocus.action",
		data:{"toUserId":$("#toUserId").val()},
		dataType:"text",
		type:"post",
		success:function(redata){
			
		}
	});
	
}

function addVisit(){
	document.getElementById("addVisit").value="已赞";
	document.getElementById("addVisit").disabled=true;
	document.getElementById("addVisit").style.color="#808080";
	$.ajax({
		url:"<%=basePath%>user/lxd/addVisit.action",
		data:{"toUserId":$("#toUserId").val(),},
		dataType:"text",
		type:"post",
		success:function(redata){
			
		}
	});
	
}
</script>

<link rel="stylesheet" href="<%=basePath%>css/styleInfo.css"
	type="text/css" media="all">


<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
<style>
/* .li2 {
	float: left;
	list-style: none;
} */
.table1 {
	width: 500px;
	height: 25px;
	overflow-x: hidden;
	overflow-y: hidden;
}

.table2 {
	table-layout: fixed;
	overflow: hidden;
	white-space: nowrap;
}

.td1 {
	width: 15px;
	height: 25px;
}

.td2 {
	width: 25px;
	height: 25px;
}

table div {
	width: 180px;
}

table {
	height: 50px;
	table-layout: fixed;
	white-space: normal;
	word-break: break-all;
	width: 500px;
}
</style>
</head>
<body>
	<h1>对方资料</h1>

	<div class="containerw3layouts-agileits">

		<div id="verticalTab" class="resp-vtabs w3-agile"
			style="display: block; width: 100%; margin: 0px;">

			<ul class="resp-tabs-list agileits-w3layouts">
				<li class="resp-tab-item"><span>基本资料</span></li>
				<li class="resp-tab-item"><span>自我介绍</span></li>
				<li class="resp-tab-item agileinfo"><span>择偶要求</span></li>
				<li class="resp-tab-item"><span>生活方式</span></li>

				<li class="resp-tab-item"><span>经济实力</span></li>
				<li class="resp-tab-item"><span>关于自己</span></li>
				<li class="resp-tab-item"><span>关于家庭</span></li>

			</ul>

			<div class="resp-tabs-container">

				<div class="resp-tab-content">
					<div class="agileabout">
						<div class="agileabout-image w3-agileits">

							<c:if test="${photoEntity.URL!=null&&photoEntity.URL!=''}">

								<img src="<%=basePath%>${photoEntity.URL}" alt="W3layouts">
							</c:if>
							<c:if test="${photoEntity.URL==null||photoEntity.URL==''}">

								<img src="<%=basePath%>images/moren/timg.jpg" alt="W3layouts">
							</c:if>
							


						</div>

						<div class="agileabout-info">
							<ul>
								<li><div class="li1">姓名</div>
									<div class="li2">:</div>
									<div class="li3">
										${userEntity.userName} &nbsp; 
										<input type="hidden" id="toUserId" value="${userEntity.userId}">
										<span >ID:${userEntity.userId}</span>
										&nbsp; &nbsp;
										
										<c:if test="${focusList.size()==0||focusList[0].deleteId==22}">
                                                 
								         <input type="button" value="+关注" onclick="addFocus()" id="addFocus" style="background:none;border:none;color: #DC143C; font-size: 16px">
							            </c:if>
							            <c:if test="${focusList[0].deleteId==21}">
                                                <input type="button" disabled value="已关注"  id="addFocus" style="background:none;border:none;color: #808080; font-size: 16px">
								         
							            </c:if>
										 &nbsp; &nbsp;
										&nbsp;
										<c:if test="${visitList.size()==0}">
                                            <input type="button" value="赞" onclick="addVisit()" id="addVisit" style="background:none;border:none;color: #DC143C; font-size: 16px">
								          	
							            </c:if>
										<c:if test="${visitList.size()>=1}">
                                             <input type="button" disabled value="赞" distabled=true id="addFocus" style="background:none;border:none;color: #808080; font-size: 16px">
								          
							            </c:if>
										

									</div>
									<div class="clearfix"></div></li>
								<li><div class="li1">出生日期</div>
									<div class="li2">:</div>
									<div class="li3">${userEntity.brithday}</div>
									<div class="clearfix"></div></li>
								<li><div class="li1">婚姻情况</div>
									<div class="li2">:</div>
									<div class="li3">
									   <c:if test="${userEntity.married==1}">
						                  <span>未婚</span>
							           </c:if>
							           <c:if test="${userEntity.married==2}">
						                  <span>离异</span>
							           </c:if>
							           <c:if test="${userEntity.married==3}">
						                  <span>丧偶</span>
							           </c:if>
									</div>
									<div class="clearfix"></div></li>
								<li><div class="li1">民族</div>
									<div class="li2">:</div>
									<div class="li3">${userEntity.nation}</div>
									<div class="clearfix"></div></li>
								<li><div class="li1">身高</div>
									<div class="li2">:</div>
									<div class="li3">${userEntity.height}CM</div>
									<div class="clearfix"></div></li>
								<li><div class="li1">现住地</div>
									<div class="li2">:</div>
									<div class="li3">${userEntity.address}</div>
									<div class="clearfix"></div></li>
								<li><div class="li1">学历</div>
									<div class="li2">:</div>
									<div class="li3">${userEntity.doctor}</div>
									<div class="clearfix"></div></li>
								<li><input type="button" value="发信" onclick="window.location.href='<%=basePath%>user/lxd/showWrite.action?toUserId=${userEntity.userId}'"
									style="color: #DC143C; font-size: 24px; background-color: #7ED321; width: 100px; height: 36px;"></li>

							</ul>
						</div>
						<div class="clear"></div>
					</div>
				</div>

				<div class="resp-tab-content">
					<div class="work">
						<div class="work-info agileits-w3layouts">
							<h4>自我介绍</h4>
							<table>
								<tr>
									<td colspan="4">${userEntity.information}</td>
								</tr>
							</table>

						</div>
						<div class="work-info agile">
							<h4>懂你</h4>

							<table>
								<tr>
									<td colspan="4">兴趣爱好： <c:if
											test="${hobbyEntity.sport!=null&&hobbyEntity.sport!=''}">
						      ${hobbyEntity.sport}、
			        		 </c:if> <c:if
											test="${hobbyEntity.food!=null&&hobbyEntity.food!=''}">
						      ${hobbyEntity.food}、
			        		 </c:if> <c:if
											test="${hobbyEntity.book!=null&&hobbyEntity.book!=''}">
						      ${hobbyEntity.book}、
			        		 </c:if> <c:if
											test="${hobbyEntity.movie!=null&&hobbyEntity.movie!=''}">
						      ${hobbyEntity.movie}、
			        		 </c:if> <c:if
											test="${hobbyEntity.chanel!=null&&hobbyEntity.chanel!=''}">
						      ${hobbyEntity.chanel}、
			        		 </c:if> <c:if
											test="${hobbyEntity.joke!=null&&hobbyEntity.joke!=''}">
						      ${hobbyEntity.joke}、
			        		 </c:if> <c:if
											test="${hobbyEntity.hobby!=null&&hobbyEntity.hobby!=''}">
						      ${hobbyEntity.hobby}、
			        		 </c:if> <c:if
											test="${hobbyEntity.travle!=null&&hobbyEntity.travle!=''}">
						      ${hobbyEntity.travle}
			        		 </c:if>

									</td>
								</tr>
								<tr>
									<td colspan="4">个性标签： <c:forEach items="${labelList}"
											var="ll" varStatus="i">
                             ${ll.labelName} &nbsp;
                             </c:forEach>

									</td>
								</tr>
							</table>

						</div>
					</div>
				</div>

				<div class="resp-tab-content">
					<div class="work w3-agileits">
						<div class="work-info">
							<h4>择偶要求</h4>
							<div class="agileabout-info aitsabout">
								<table>
									<tr>
										<td colspan="2">年龄： <c:if test="${mateEntity.lowAge!=0}">
						             ${mateEntity.lowAge}~${mateEntity.hightAge}之间
			        		            </c:if>

										</td>
										<td colspan="2">身高： <c:if
												test="${mateEntity.lowHeight!=null&&mateEntity.lowAge!=''}">
						             ${mateEntity.lowHeight}~${mateEntity.height}之间
			        		            </c:if>
										</td>
									</tr>
									<tr>
										<td colspan="2">民族 ${mateEntity.nation}</td>
										<td colspan="2">学历：${mateEntity.doctor}</td>
									</tr>
									<tr>
										<td colspan="2">相册：${mateEntity.photo}</td>
										<td colspan="2">婚姻状况：${mateEntity.married}</td>
									</tr>
									<tr>
										<td colspan="2">居住地：${mateEntity.address}</td>
										<td colspan="2">诚信:${mateEntity.honesty}</td>
									</tr>

								</table>
							</div>

						</div>


					</div>
				</div>

				<div class="resp-tab-content">
					<div class="work w3-agileits">
						<div class="work-info">
							<h4>嗜好习惯</h4>
							<div class="agileabout-info aitsabout">
								<table>
									<tr>
										<td colspan="2">吸烟：${lifeEntity.smoke}</td>
										<td colspan="2">饮酒：${lifeEntity.drink}</td>
									</tr>
									<tr>
										<td colspan="2">锻炼习惯：${lifeEntity.exercise}</td>
										<td colspan="2">饮食习惯：${lifeEntity.dietary}</td>
									</tr>
									<tr>
										<td colspan="2">逛街购物：${lifeEntity.shopping}</td>
										<td colspan="2">宗教信仰：${lifeEntity.church}</td>
									</tr>
									<tr>
										<td colspan="2">作息时间：${lifeEntity.rest}</td>
										<td colspan="2">交际圈子${lifeEntity.friend}</td>
									</tr>
									<tr>
										<td colspan="4">最大消费：${lifeEntity.maxcost}</td>
									</tr>
									<tr>
										<td colspan="4">家务：${lifeEntity.homework}</td>

									</tr>
									<tr>
										<td colspan="4">家务分配：${lifeEntity.dohomework}</td>
									</tr>
									<tr>
										<td colspan="4">宠物：${lifeEntity.likeLevel}</td>

									</tr>
									<tr>

										<td colspan="4">关于宠物：${lifeEntity.aboutPet}</td>
									</tr>

								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="resp-tab-content">
					<div class="work w3-agileits">
						<div class="work-info">
							<h4>经济实力</h4>
							<div class="agileabout-info aitsabout">
								<table>
									<tr>
										<td colspan="2">月薪： ${userEntity.salary}</td>
										<td colspan="2">购房： ${userEntity.house}</td>
									</tr>
									<tr>
										<td colspan="2">购车： ${userEntity.car}</td>
										<td colspan="2">经济观念： ${salaryEntity.salaryPoint}</td>
									</tr>
									<tr>
										<td colspan="2">投资理财： ${salaryEntity.finance}</td>
										<td colspan="2">外债贷款： ${salaryEntity.debt}</td>
									</tr>
								</table>
							</div>

						</div>
						<div class="work w3-agileits">
							<div class="work-info">
								<h4>工作学习</h4>
								<div class="agileabout-info aitsabout">
									<table>
										<tr>
											<td colspan="2">职业职位： ${userEntity.salary}</td>
											<td colspan="2">公司行业： ${userEntity.house}</td>
										</tr>
										<tr>
											<td colspan="2">公司类型： ${userEntity.car}</td>
											<td colspan="2">福利待遇： ${salaryEntity.salaryPoint}</td>
										</tr>
										<tr>
											<td colspan="2">工作状态： ${salaryEntity.finance}</td>
											<td colspan="2">调动工作可能性： ${salaryEntity.debt}</td>
										</tr>
										<tr>
											<td colspan="2">事业与家庭：： ${salaryEntity.finance}</td>
											<td colspan="2">海外工作可能性： ${salaryEntity.debt}</td>
										</tr>
										<tr>
											<td colspan="2">毕业院校： ${salaryEntity.finance}</td>
											<td colspan="2">专业类型： ${salaryEntity.debt}</td>
										</tr>
										<tr>
											<td colspan="2">语言能力：： ${salaryEntity.finance}</td>

										</tr>
									</table>



								</div>

							</div>
						</div>



					</div>
					<div class="clear"></div>

				</div>
				<div class="resp-tab-content">
					<div class="work w3-agileits">
						<div class="work-info">
							<h4>关于自己</h4>
							<div class="agileabout-info aitsabout">
								<table>
									<tr>
										<td colspan="2">现居地： ${userEntity.address}</td>
										<td colspan="2">户口： ${userEntity.residence}</td>
									</tr>
									<tr>
										<td colspan="2">国籍： ${marriedEntity.nation}</td>
										<td colspan="2">个性特征： ${marriedEntity.character}</td>
									</tr>
									<tr>
										<td colspan="2">幽默感： ${marriedEntity.humor}</td>
										<td colspan="2">脾气： ${marriedEntity.temper}</td>
									</tr>
									<tr>
										<td colspan="2">对待感情： ${marriedEntity.feeling}</td>
										<td colspan="2">是否要小孩： ${marriedEntity.chriden}</td>
									</tr>
									<tr>
										<td colspan="2">何时结婚： ${marriedEntity.marryTime}</td>
										<td colspan="2">是否接受异地恋： ${marriedEntity.relationship}</td>
									</tr>
									<tr>
										<td colspan="4">理想婚姻： ${marriedEntity.marryMsg}</td>
									</tr>
								</table>
							</div>

						</div>

					</div>
					<div class="clear"></div>
				</div>
				<div class="resp-tab-content">

					<div class="work w3-agileits">
						<div class="work-info">
							<h4>关于家庭</h4>
							<div class="agileabout-info aitsabout">
								<table>
									<tr>
										<td colspan="2">愿与对方父母同住： ${marriedEntity.liveParent}</td>
										<td colspan="2">家中排行： ${marriedEntity.ranking}</td>
									</tr>
									<tr>
										<td colspan="2">父母情况： ${marriedEntity.parentMsg}</td>
										<td colspan="2">兄弟姐妹： ${marriedEntity.brother}</td>
									</tr>
									<tr>
										<td colspan="2">父母经济情况： ${marriedEntity.parentSalary}</td>
										<td colspan="2">父母医保情况： ${marriedEntity.parentInsurance}</td>
									<tr>
										<td colspan="4">父母的工作： ${marriedEntity.parentWork}</td>

									</tr>

								</table>

							</div>

						</div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="clear w3-agile"></div>

		</div>

	</div>





	<!-- Necessary-JavaScript-Files-&-Links -->

	<!-- Tabs-JavaScript -->
	<script src="<%=basePath%>js/easyResponsiveTabs.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#horizontalTab').easyResponsiveTabs({
				type : 'default',
				width : 'auto',
				fit : true,
				closed : 'accordion',
				activate : function(event) {
					var $tab = $(this);
					var $info = $('#tabInfo');
					var $name = $('span', $info);
					$name.text($tab.text());
					$info.show();
				}
			});
			$('#verticalTab').easyResponsiveTabs({
				type : 'vertical',
				width : 'auto',
				fit : true
			});
		});
	</script>
	<!-- //Tabs-JavaScript -->


	<!-- //Necessary-JavaScript-Files-&-Links -->
</body>
</html>