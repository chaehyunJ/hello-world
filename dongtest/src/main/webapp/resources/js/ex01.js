function dataHandler() {
		const url = cpath + '/ajax1'
		const opt = {
				method: 'GET'
		}
		fetch(url,opt)
		.then(resp => resp.json())
		.then(json => render(menuinfo,getDom(json)))
	}
	
	function render(target, dom) {
		console.log('render 호출!!')
		target.innerHTML = dom
	}
	
	function getDom(json) {
		console.log('getDom호출!!')
		let tag;
		json.forEach(dto => {
			console.log(json)
			tag += `<div>`
			for(key in dto) {
				let value=dto[key]
				if(key =='filesource')
					tag += `<div><img src="${value}" style="box-shadow: 0 4px 4px -4px gray;"></div>`
				else{
					if(key=='price') {
						tag += `<div style="font-size: 0.8rem; color: #44900c;">가격 ￦ ${value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")}</div>`
					}
					else if(key=='kcal') {
						tag += `<div style="font-size: 0.8rem;">${value} Kcal</div>`
					}
					else {
						tag += `<div>${value}</div>`
					}
				}
			}
			tag += `</div>`
			
		})
		return tag;
	}