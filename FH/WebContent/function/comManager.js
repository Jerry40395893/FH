$(document).ready(
		function() {
			/*修改的时候名字查重*/
			$("#alertName").blur(function() {
				$.ajax({
					url : $("#hidenPath").val() + "admin/sj/checkName.action",
					type : "post",
					dataType : "text",
					data : {
						name : $("#name").val().trim(),
					},
					success : function(res) {
						console.log(res);
						if ((res!=null)&&(res!="")) {
							alert("套餐重名, 请重新设定");
						}
					}
				});
			});

			/*添加套餐的时候名字查重*/
			$("#name").blur(function() {
				$.ajax({
					url : $("#hidenPath").val() + "admin/sj/checkName.action",
					type : "post",
					dataType : "text",
					data : {
						name : $("#name").val().trim(),
					},
					success : function(res) {
						console.log(res);
						if ((res!=null)&&(res!="")) {
							alert("套餐重名, 请重新设定");
						}
					}
				});
			});

			/* 套餐新增的时候要对数据进行检验，提交之前用ajax判断套餐名字是否重复 */
			$("#addFrom").submit(function dataCheck() {
				var comName = $("#name").val().trim();
				if ((comName == "") || (comName == " ")) {
					alert("套餐名称不能为空");
					return false;

				} else if (comName.length < 4) {
					alert("套餐名称不能小于4位数");
					return false;

				} else if (comName.length > 20) {
					alert("套餐名称不能超过20位数");
					return false;
				}
				/* 费用、时间正能为正整数 */
				var reg = new RegExp(/^\+?[1-9][0-9]*$/);
				var fare = $("#fare").val().trim();
				if (!reg.test(fare)) {
					alert("套餐费用只能为正整数");
					return false;

				} else if (fare.length > 10) {
					alert("费用不能超过10位数");
					return false;
				}

				var time = $("#time").val().trim();
				if (!reg.test(time)) {
					alert("套餐有效期只能为正整数");
					return false;

				} else if (time.length > 3) {
					alert("套餐有效期不能超过3位数");
					return false;
				}
				var discount = $("#discount").val().trim();

				if (!reg.test(discount)) {
					alert("套餐折扣只能为正整数");
					return false;

				} else if (discount.length > 1) {
					alert("套餐折扣不能超过2位数");
					return false;
				}
				var recommend = $("#recommend").val().trim();
				if (!reg.test(recommend)) {
					alert("套餐每天推荐人数只能为正整数");
					return false;

				} else if (time.length > 10) {
					alert("套餐每天推荐人数不能超过10位数");
					return false;
				}

				return true;
			});
			/* 套餐修改的时候要对数据进行检验 */
			$("#alertFrom").submit(function dataCheck() {

				var comName = $("#name").val().trim();
				if ((comName == "") || (comName == " ")) {
					alert("套餐名称不能为空");
					return false;

				} else if (comName.length < 4) {
					alert("套餐名称不能小于4位数");
					return false;

				} else if (comName.length > 20) {
					alert("套餐名称不能超过20位数");
					return false;
				}
				/* 费用、时间正能为正整数 */
				var reg = new RegExp(/^\+?[1-9][0-9]*$/);
				var fare = $("#fare").val().trim();
				if (!reg.test(fare)) {
					alert("套餐费用只能为正整数");
					return false;

				} else if (fare.length > 10) {
					alert("费用不能超过10位数");
					return false;
				}

				var time = $("#time").val().trim();
				if (!reg.test(time)) {
					alert("套餐有效期只能为正整数");
					return false;

				} else if (time.length > 3) {
					alert("套餐有效期不能超过3位数");
					return false;
				}
				var discount = $("#discount").val().trim();
				if (!reg.test(discount)) {
					alert("套餐折扣只能为正整数");
					return false;

				} else if (discount.length > 1) {
					alert("套餐折扣不能超过2位数");
					return false;
				}
				var recommend = $("#recommend").val().trim();
				if (!reg.test(recommend)) {
					alert("套餐每天推荐人数只能为正整数");
					return false;

				} else if (time.length > 10) {
					alert("套餐每天推荐人数不能超过10位数");
					return false;
				}

				return true;
			});
			/* 模糊搜索提交确认数据类型 */
			$("#listform").submit(function dataCheck() {

				var comName = $("#comName").val();
				$("#comName").val(comName);
				if (comName.length > 20) {
					alert("套餐名称不能超过20位数");
					return false;
				}
				/* 费用、时间正能为正整数 */
				var reg = new RegExp(/^\+?[1-9][0-9]*$/);
				var fare = $("#price").val();
				if (fare != "") {
					if (!reg.test(fare)) {
						alert("套餐费用只能为正整数");
						return false;

					} else if (fare.length > 10) {
						alert("费用不能超过10位数");
						return false;
					}
				}

				var time = $("#time").val();
				if (time != "") {
					if (!reg.test(time)) {
						alert("套餐时间只能为正整数");
						return false;

					} else if (time.length > 3) {
						alert("套餐时间不能超过3位数");
						return false;
					}
				}

				return true;
			});

			/* 首页 */
			$("#firstPage").click(
					function() {
						location.href = $("#hidenPath").val()
								+ "admin/sj/comManager.action?"
								+ "turnPage=1&currentPage="
								+ $("#currentPage").val() + "&comName="
								+ $("#hidenName").val() + "&price="
								+ $("#hidenPrice").val() + "&time="
								+ $("#hidenTime").val();

					});
			/* 上一页 */
			$("#lastPage").click(
					function() {
						location.href = $("#hidenPath").val()
								+ "admin/sj/comManager.action?"
								+ "turnPage=2&currentPage="
								+ $("#currentPage").val() + "&comName="
								+ $("#hidenName").val() + "&price="
								+ $("#hidenPrice").val() + "&time="
								+ $("#hidenTime").val();

					});
			/* 下一页 */
			$("#nextPage").click(
					function() {
						location.href = $("#hidenPath").val()
								+ "admin/sj/comManager.action?"
								+ "turnPage=3&currentPage="
								+ $("#currentPage").val() + "&comName="
								+ $("#hidenName").val() + "&price="
								+ $("#hidenPrice").val() + "&time="
								+ $("#hidenTime").val();

					});
			/* 末页 */
			$("#finalPage").click(
					function() {

						location.href = $("#hidenPath").val()
								+ "admin/sj/comManager.action?"
								+ "turnPage=4&currentPage="
								+ $("#currentPage").val() + "&comName="
								+ $("#hidenName").val() + "&price="
								+ $("#hidenPrice").val() + "&time="
								+ $("#hidenTime").val();

					});
			/* 跳转页面 */
			$("#selectPage").change(
					function() {
						var page = $(this).children('option:selected').val();
						location.href = $("#hidenPath").val()
								+ "admin/sj/comManager.action?"
								+ "turnPage=5&currentPage=" + page
								+ "&comName=" + $("#hidenName").val()
								+ "&price=" + $("#hidenPrice").val() + "&time="
								+ $("#hidenTime").val();

					});
		});
