var sliderInterval = "";
document.addEventListener('DOMContentLoaded', () => {

	let contentWrapperElement = document.querySelector('.content-wrapper');
	let sliderContainerElement = document.querySelector('.slider-container');
	sliderContainerElement.style.width = (contentWrapperElement.offsetWidth - 20) + `px`; // using the contentwrapperelements width to determine how wide the visual container of the slider should be by using offsetWidth


	let variableSliderWidth = contentWrapperElement.offsetWidth - 20; // giving the variablesliderwidth the same width as the visual slider container to later use that width to divide by the amount of images you want shown in the visual slider
	let sliderItemElements = document.querySelectorAll('.slider-item');
	let sliderSizeRegulatorElement = document.querySelector('.slider-size-regulator');


	sliderItemElements.forEach((sliderItemElement) => {
		sliderItemElement.style.width = variableSliderWidth / 3 + `px`; // dividing variablesliderwidth by 3 to display 3 images on the visual slider
	})

	sliderSizeRegulatorElement.style.width = ((variableSliderWidth / 3) * sliderItemElements.length) + `px`; // finds the width of a single slider item and times it by the amount of slider items in total to give the hiden slider-item container it's width.

	slideImagesByInterval();
	
	sliderContainerElement.addEventListener('mouseenter',()=>{
		clearInterval(sliderInterval);
	})

	sliderContainerElement.addEventListener('mouseout',()=>{
		slideImagesByInterval();
	})

	
		sliderSizeRegulatorElement.addEventListener('transitionend', () => {
			sliderSizeRegulatorElement.style.transition = "unset";
			let firstChild = sliderSizeRegulatorElement.removeChild(sliderSizeRegulatorElement.childNodes[0]);
			sliderSizeRegulatorElement.insertAdjacentElement('beforeend', firstChild);
			sliderSizeRegulatorElement.style.marginLeft = 0;

		})

	function slideImagesByInterval() {

		let sliderMovedDistance = variableSliderWidth / 3;

		sliderInterval = setInterval(() => {
			sliderSizeRegulatorElement.style.transition = "all 0.3s";
			sliderSizeRegulatorElement.style.marginLeft = -sliderMovedDistance + 'px';

		}, 2500)

	}

})