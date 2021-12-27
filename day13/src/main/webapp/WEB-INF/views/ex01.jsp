<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<script>
	let scrollCount = 0		// 페이지를 새로고침하기 전까지는 유지되는 변수
	
	async function getBoardData() {  //async: 내부에서 await키워드를 사용할 수 있다
		const cnt = scrollCount * 5
		const url = cpath + '/getBoardData/' + cnt
		const opt = {
			method: 'GET'
		}
		await fetch(url, opt) //이 내용이 처리완료될 때까지 잠시 기다린다. //처리되고나서 작성되니까 작성한게 젤위로 올라온다.
		.then(resp => resp.json())
		.then(json => {
			//console.log(json)
			const dom = getDom(json)
			document.body.innerHTML += dom
		})
		scrollCount += 1
	}
	function getDom(json) {
		let dom = ''
		json.forEach(dto => {
			dom += '<div class="item">'
			for(key in dto) {
				dom += '<div >' + dto[key] + '</div>'
			}
			dom += '</div>'
		})
		return dom
	}
	
</script>

<script>
	const body = document.querySelector('body')
	window.onload = async function() {
	   // getBoardData(20) //초기에는 20개 던져주고 그 후부터는 5개씩스크롤하면 (위에 getBoardData함수에서)
		await getBoardData() //순서대로 작업하기 위해 (함수정의에 async)
		await getBoardData()
		await getBoardData()
		await getBoardData() //20개를 뽑아내기위해 4번반복
	}
	window.onscroll = function() {
		const t = document.documentElement
		console.log(t.scrollTop)
		console.log(t.clientHeight)
		console.log(t.scrollHeight)
		const flag = t.scrollTop + t.clientHeight >= t.scrollHeight -20
		if(flag) {
			getBoardData() //5개씩
			console.log("추가")
		}
	}
</script>

</body>
</html>