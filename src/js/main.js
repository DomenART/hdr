//= ../../node_modules/jquery/dist/jquery.min.js
//= ../../node_modules/uikit/dist/js/uikit.min.js
//= ../../node_modules/uikit/dist/js/uikit-icons.min.js

// UIkit.use(Icons)


var slideshow = document.getElementById('slideshow');
var slideBar = document.getElementById('slide-bar');
window.addEventListener('scroll', function(e) {
	if(window.scrollY > slideshow.offsetHeight - window.innerHeight) {
		slideBar.classList.add('slide-bar--sticky');
	} else {
		slideBar.classList.remove('slide-bar--sticky');
	}
});