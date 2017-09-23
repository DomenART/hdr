//= ../../node_modules/jquery/dist/jquery.min.js
//= ../../node_modules/uikit/dist/js/uikit.min.js
//= ../../node_modules/uikit/dist/js/uikit-icons.min.js

// UIkit.use(Icons)


var slideshow = document.getElementById('slideshow'),
	slideBar = document.getElementById('slide-bar');

if(slideshow && slideBar) {
	window.addEventListener('scroll', function(e) {
		if(window.scrollY > slideshow.offsetHeight - window.innerHeight) {
			slideBar.classList.add('slide-bar--sticky');
		} else {
			slideBar.classList.remove('slide-bar--sticky');
		}
	});
}


if(window.innerWidth > 960) {
	var slideBarSocial = document.querySelector('.slide-bar__social'),
		toolBarSocial = document.querySelector('.toolbar__social');

	if(slideBarSocial) {
		var slideBarSocialTop = slideBarSocial.getBoundingClientRect().top;

		window.addEventListener('scroll', function(e) {
			if(window.scrollY > slideBarSocialTop) {
				toolBarSocial.classList.add('toolbar__social--visible');
			} else {
				toolBarSocial.classList.remove('toolbar__social--visible');
			}
		});
	} else {
		toolBarSocial.classList.add('toolbar__social--visible');
	}
}