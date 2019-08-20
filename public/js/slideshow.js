document.addEventListener('DOMContentLoaded',()=>{
	console.log("hej Verden");


	let contentWrapperElement = document.querySelector('.content-wrapper');

	let sliderContainerElement = document.querySelector('.slider-container');
	sliderContainerElement.style.width = (contentWrapperElement.offsetWidth-25)+`px`;
	

	let variableSliderWidth = contentWrapperElement.offsetWidth -25;
	let sliderItemElements = document.querySelectorAll('.slider-item');
	let sliderSizeRegulatorElement = document.querySelector('.slider-size-regulator');

	console.log(variableSliderWidth);


	sliderItemElements.forEach((sliderItemElement)=>{
		// sliderItemElement.style.backgroundColor = "green";
		// sliderItemElement.style.border = "1px solid yellow";
		
		

		sliderItemElement.style.width = variableSliderWidth/3+`px`;
	})

	sliderSizeRegulatorElement.style.width = ((variableSliderWidth/3) * sliderItemElements.length)+`px`;

})