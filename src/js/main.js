/* import files */
require.context('../img', true)
require.context('../fonts', true)


/* import styles */
import '../less/main.less'


/* import scripts */
import jQuery from 'jquery'
import UIkit from 'uikit'
import Icons from 'uikit/dist/js/uikit-icons'

// loads the Icon plugin
UIkit.use(Icons)


var slideshow = document.getElementById('slideshow'),
	slideBar = document.getElementById('slide-bar');

if(slideshow && slideBar) {
	window.addEventListener('scroll', (e) => {
		if(window.scrollY > slideshow.offsetHeight - window.innerHeight)
			slideBar.classList.add('slide-bar--sticky')
		else
			slideBar.classList.remove('slide-bar--sticky')
	})
}


if(window.innerWidth > 960) {
	var slideBarSocial = document.querySelector('.slide-bar__social'),
		toolBarSocial = document.querySelector('.toolbar__social');

	if(slideBarSocial) {
		var slideBarSocialTop = slideBarSocial.getBoundingClientRect().top;

		window.addEventListener('scroll', (e) => {
			if(window.scrollY > slideBarSocialTop)
				toolBarSocial.classList.add('toolbar__social--visible')
			else
				toolBarSocial.classList.remove('toolbar__social--visible')
		});
	} else {
		toolBarSocial.classList.add('toolbar__social--visible');
	}
}

var portfolioItems = document.querySelectorAll('.home-portfolio-item');
for(var i = 0; i < portfolioItems.length; i++) {
	let item = portfolioItems[i];
	let image = item.querySelector('.home-portfolio-item__image');

	item.onmousemove = function(e) {
		var offset = item.getBoundingClientRect(),
			x = (e.clientX-offset.left)/item.offsetWidth*100,
			y = (e.clientY-offset.top)/item.offsetHeight*100;
		image.style.transformOrigin = x + '% ' + y + '%';
	}
}

// Вывод фданных по проекту шаблона "Проект"

var projectItem = document.querySelectorAll('.js-project-item'),
	projectLeftCol = document.getElementById('project-pool-left'),
	projectRightCol = document.getElementById('project-pool-right'),
	project_left_height = 0,
	project_right_height = 0;

if (projectItem) {
	for (var i = 1; i < projectItem.length; i++) {
		if (project_left_height < project_right_height) {
			project_left_height += projectItem[i].offsetHeight;
		}
		else {
			projectLeftCol.removeChild(projectItem[i]);
			projectRightCol.appendChild(projectItem[i]);
			project_right_height += projectItem[i].offsetHeight;
		};
	}
}

/*import Vue from 'vue/dist/vue.js'
// var Vue = require('vue')
// var comprasion = require('./components/comprasion.vue')
Vue.component('comprasion', require('./components/comprasion.vue'))
var app = new Vue({ 
	el: '#app'
})*/

// import Vue from 'vue/dist/vue.js'
// Vue.component('comprasion', require('./components/comprasion.vue'))
// var app = new Vue({ 
// 	el: '#app'
// })