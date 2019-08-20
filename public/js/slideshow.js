document.addEventListener('DOMContentLoaded',()=>{
	console.log("hej Verden");


	let staticSliderWidth = 1374;
	let sliderItemElements = document.querySelectorAll('.slider-item');
	let sliderSizeRegulatorElement = document.querySelector('.slider-size-regulator');

	// console.log(sliderItemElements.length);

	sliderItemElements.forEach((sliderItemElement)=>{
		sliderItemElement.style.backgroundColor = "green";
		sliderItemElement.style.border = "1px solid yellow";

		sliderItemElement.style.width = staticSliderWidth/3+`px`;
	})

	sliderSizeRegulatorElement.style.width = ((staticSliderWidth/3) * sliderItemElements.length)+`px`;

	console.log(sliderSizeRegulatorElement.style.width)
})