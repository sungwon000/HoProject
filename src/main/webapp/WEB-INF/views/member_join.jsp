<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<style>

/* 배경 */
/* body {
	background-color: #F8EFFB !important;
} */

/* 회원가입 박스 */
.join {
	background-color: white !important;
}
</style>
<!-- 헤더 -->
<c:import url="common/header.jsp" />
</head>
<body>
	<div class="container">
		<div class="join">
			<div class="col-lg-8 mb-4">
				<div id="signup_wrapper">
					<br> <br> <br>
					<h3>회원가입</h3>
					<h6 style="text-align: right;">*표는 꼭 기입해주세요</h6>

					<form action="join.me" name="join" id="contactForm" method="post">
						<div class="control-group form-group">
							<div class="controls">
								<label>이름*</label> <input type="text" class="form-control"
									name="name" id="name">
								<div class="alert alert-danger" id="name-danger">이름을 정확히
									입력해주세요</div>
								<p class="help-block"></p>
							</div>
						</div>
						<div class="control-group form-group">
							<div class="controls">
								<label>ID*</label>
								<div style="display: flex;">
									<input type="text" class="form-control" name="id"
										id="id" style="width: 87%">&nbsp;&nbsp;&nbsp; <input
										type="button" name="id" value="중복확인"
										class="btn btn-primary" onclick="openConfirmid(this.form)"
										style="border-radius: 4px; border: 1px solid;" />
								</div>
							</div>
						</div>
						</div>
						<div class="control-group form-group">
							<div class="controls">
								<label>비밀번호*</label> <input type="password" id="pwd1"
									class="form-control" name="password" id="password">
							</div>
						</div>
						<div class="control-group form-group">
							<div class="controls">
								<label>비밀번호 확인*</label> <input type="password" id="pwd2"
									class="form-control" name="USER_PASSWORDENT">
								<div class="alert alert-success" id="alert-success">비밀번호가
									일치합니다.</div>
								<div class="alert alert-danger" id="alert-danger">비밀번호가
									일치하지 않습니다.</div>
								<p class="help-block"></p>
							</div>
						</div>
						<div class="control-group form-group">
							<div class="controls">
								<label>전화번호</label> <input type="tel" class="form-control"
									name="phone" id="phone">
							</div>
						</div>
						
						<input type="submit" class="btn" value="회원가입"/>
						<button type="button" class="btn" value="뒤로가기">뒤로가기</button>
						
				</form>

					<script type="text/javascript">
						$(function() {

							$("#name-danger").hide();

							// 비밀번호 확인
							$("#alert-success").hide();
							$("#alert-danger").hide();
							$("input").keyup(
									function() {
										var pwd1 = $("#pwd1").val();
										var pwd2 = $("#pwd2").val();
										if (pwd1 != "" || pwd2 != "") {
											if (pwd1 == pwd2) {
												$("#alert-success").show();
												$("#alert-danger").hide();
												$("#submit").removeAttr(
														"disabled");
											} else {
												$("#alert-success").hide();
												$("#alert-danger").show();
												$("#submit").attr("disabled",
														"disabled");
											}
										}
									});
						});

						// 로그인 유효성 검사
						function checkz() {
							var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
							var getCheck = RegExp(/^[a-zA-Z0-9]{4,12}$/);
							var getName = RegExp(/^[가-힣]+$/);
							var getPhone = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
							var fmt = RegExp(/^\d{6}[1234]\d{6}$/); //형식 설정

							//이름 공백 확인
							if ($("#name").val() == "") {
								swal("이름이 없어요!", "이름을 입력 해주세요");
								$("#name").focus();
								return false;
							}
							//아이디 공백 확인
							if ($("#id").val() == "") {
								swal("아이디가 없어요!", "아이디를 입력 해주세요");
								$("#id").focus();
								return false;
							}
							//이름 유효성
							if (!getName.test($("#name").val())) {
								swal("이름 에러", "한글로 2글자 이상 넣어주세요");
								$("#name").val("");
								$("#name").focus();
								return false;
							}

							//전화번호 유효성
							if (!getPhone.test($("#phone").val())) {
								swal("전화번호 에러", "010으로 시작해주세요");
								$("#phone").val("");
								$("#phone").focus();
								return false;
							}

						}

						function openConfirmid(join) {

							if (join.USER_ID.value == "") {
								swal("아이디가 없어요", "아이디를 입력해주세요");
								return;
							}
							// ID 전송
							url = "confirmid.jsp?USER_ID=" + join.USER_ID.value;

							// 윈도우 창 생성
							open(url, "confirm",
									"status=no,menubar=no,scrollbars=no,width=310,height=180,left=869,top=294");
						}
						
					</script>
				</div>
			</div>
		</div>
	</div>
	<!-- 푸터 -->
	<%-- <c:import url="common/footer.jsp" /> --%>
</body>
</html>