//= ../../node_modules/jquery/dist/jquery.min.js
//= ../../node_modules/uikit/dist/js/uikit.min.js
//= ../../node_modules/uikit/dist/js/uikit-icons.min.js

// UIkit.use(Icons)


var slideshow = document.getElementById('slideshow');
var slideBar = document.getElementById('slide-bar');

if (slideshow && slideBar) {
	window.addEventListener('scroll', function(e) {
		if (window.scrollY > slideshow.offsetHeight - window.innerHeight) {
			slideBar.classList.add('slide-bar--sticky');
		} else {
			slideBar.classList.remove('slide-bar--sticky');
		}
	});
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