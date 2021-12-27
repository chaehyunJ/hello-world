<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!-- 
                                      body:JSON(db에 넣기위한)
	selectAll GET        /board        없음
	selectOne GET        /board/id     없음
	insert    POST       /board        있음
	update    Put        /board        있음
	delete    DELETE     /board/id     없음
 -->
	
<script>
	function submitHandler(event) {
		event.preventDefault()
		console.log('submitHandler 호출') //전송버튼누르면 이벤트함수랑 잘연걸됬는지 확인
		//출력할때는 자바객체 -> 자바스크립트
		//입력할때는 자바스크립트 객체형태로 준비 -> 자바객체 -> 디비에넣기
		
		//폼안에 있는 모든요소를 객체로 만드는 방법
		const ob = {} //const는 값이 안바뀌는것이아니고, 대상이 바뀌지 않는 것이다. 자바의 map이라 생각 -> key value
		const formData = new FormData(event.target)  //새로운 폼데이터만들고 이 해당이벤트 폼안에 데이터를 긁어오라
		console.log(formData.keys()) //내용이 없는거처럼 보인다.
		for(key of formData.keys()) {
			console.log(key)  //title, writer, content, ipaddr
			console.log(formData.get(key)) //value가 나온다.
			console.log(key, ': ',formData.get(key)) //이렇게 같이 출력 가능
			ob[key] = formData.get(key)
		}
		console.log(ob) //객체형식으로 준비된걸 볼수있다. 
		
		//2)POST형식에 맞춰서 서버에 전송하기(post요청은 body를 가진다)
		const url = cpath + '/postBoardData'
		const opt = {
				method: 'POST',
				body: JSON.stringify(ob), //json으로 바꿔서 전달
				headers: {
					'Content-Type': 'application/json; charset=utf-8' //json은 문자열 형식이기 때문에 인코딩설정을 해준다
				}
		}
		//3)전송 후 받은 응답에 따라 이후 처리진행(ajaxcontroller에서 넣은 후)
		fetch(url,opt)
		.then(resp => resp.text())
		.then(text => {
			if(text == 1) {
				alert('작성성공')
				location.href=cpath + '/ex01'
			}
			else {
				alert('작성실패')
				event.target.reset() //form내부의 값을 초기화한다. hidden은 남아있는다(ipaddr)
			}
		})
	}
</script>
<h2>ajax로 POST형식으로 데이터 전송하기</h2>
<div>
	<form method="POST"> <!-- 여기에 POST굳이필요없다. fetch에 method: POST라고 했기떄문에 -->
		<p><input name="title" placeholder="제목" required autofocus></p>
		<p><input name="writer" placeholder="작성자" required></p>
		<p><textarea name="content" placeholder="내용" required></textarea></p>
		<input type="hidden" name="ipaddress" value="${pageContext.request.remoteAddr }">
		<p><button>작성</button></p>
	</form>
</div>


<script>
	const form = document.forms[0]
	form.onsubmit = submitHandler
</script>
</body>
</html>