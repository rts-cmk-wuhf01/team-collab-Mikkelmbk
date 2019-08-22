document.addEventListener('DOMContentLoaded',()=>{
	let movieOverlayElements = document.querySelectorAll('.movie-overlay');

	movieOverlayElements.forEach((movieOverlayElement)=>{

		movieOverlayElement.addEventListener('mouseover',()=>{
			movieOverlayElement.style.transition = "opacity 0.5s";
			movieOverlayElement.style.opacity = 1;
		});

		movieOverlayElement.addEventListener('mouseout',()=>{
			movieOverlayElement.style.transition = "opacity 0.5s";
			movieOverlayElement.style.opacity = 0;
		});




	})
});