<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
	const update = () => {
		const passwordDB = '${member.memberPassword}';
		/* 비밀번호 폼에 id값을 설정하여 비교하기 */
		const password = document.getElementById("memberPassword").value;
		if(passwordDB == password) {
			document.updateForm.submit();
		}else{
			alert("비밀번호가 일치하지 않습니다!")
		}
	}
</script>
<meta charset="UTF-8">
<title>정보 수정</title>
</head>
<body>
	<form action="/member/update" method="post" name="updateForm">
		<p> <input type="hidden" name="id" value="${member.id}" readonly></p>
		<p>이 메 일: <input type="text" name="memberEmail"  value="${member.memberEmail}" disabled></p>
		<p>비밀번호: <input type="password" name="memberPassword"  id="memberPassword"></p>
		<p>이   름: <input type="text" name="memberName" value="${member.memberName}" disabled></p>
		<p>나 이: <input type="text" name="memberAge"  value="${member.memberAge}"></p>
		<p>전화번호: <input type="text" name="memberMobile"  value="${member.memberMobile}"></p>
		<input type="button" value="수정" onclick="update()">
	</form>
</body>
</html>