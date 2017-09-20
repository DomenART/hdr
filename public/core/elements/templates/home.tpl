{extends 'file:templates/base.tpl'}

{block 'content'}
	<div class="toolbar uk-flex uk-flex-middle">
		<a href="/" class="toolbar__sitename">
			<span>House Room<br>Design</span>
		</a>
		<div class="toolbar__contacts">
			<span>Севастополь: +7(978) 070 43 33</span>
			<span>Москва: +7 (985) 875 29 17</span>
		</div>
		<div class="toolbar__social">
			<div class="social-links">
				<a href="#" class="social-links__item social-links__item--twitter"></a>
				<a href="#" class="social-links__item social-links__item--vk"></a>
				<a href="#" class="social-links__item social-links__item--instagram"></a>
				<a href="#" class="social-links__item social-links__item--youtube"></a>
			</div>
		</div>
	</div>

	<div class="menu-overlay" uk-toggle="target: html; cls: page--open-menu"></div>

	<div class="menu">		
		<div class="menu__bg"></div>
		<div class="menu__title-bg"></div>
		<div class="menu__title-text">Меню</div>
		<div class="menu__toggle" uk-toggle="target: html; cls: page--open-menu">
			<div class="menu__toggle__logo"></div>
			<div class="menu__toggle__icon">
				<i></i>
				<i></i>
				<i></i>
			</div>
		</div>
		<div class="menu__close" uk-toggle="target: html; cls: page--open-menu"></div>
		{'pdoMenu' | snippet : [
			'level' => 1,
			'parents' => 0,
			'outerClass' => 'menu__list'
		]}
	</div>

	<div class="slideshow" id="slideshow">
		<ul class="uk-hidden" uk-switcher="connect: .js-slideshow">
			<li></li>
			<li></li>
			<li></li>
		</ul>
		<ul class="slideshow__content uk-switcher js-slideshow">
			<li class="slide uk-flex uk-flex-middle uk-flex-center" style="background-image: url('assets/template/img/slide-1.jpg')">
				<div class="slide__inner">
					<div class="slide__type">Спецпредложение</div>
					<div class="slide__title">Планировочное решение 1</div>
					<div class="slide__desc">Вы приобрели новую квартиру, дом или решили сделать ремонт? Грамотный и правильный ремонт любого интерьера, всегда должен начинаться с планировочного решения — это основа для всех ремонтных работ. Спланированный интерьер вашей квартиры или дома, даст гармонию, комфорт и индивидуальную атмосферу вашего интерьера. Совершенно неважно планируете Вы ремонт однокомнатной квартиры или загородного дома, профессиональный подход избавит Вас от лишних трат времени и денег и в том, и в другом случае.</div>
					<div class="slide__more">
						<a href="#" class="uk-button button-intro">Узнать больше&emsp;<i class="arrow-right"></i></a>
					</div>
				</div>
			</li>
			<li class="slide uk-flex uk-flex-middle uk-flex-center" style="background-image: url('assets/template/img/26566002706_73efdae8e4_o.jpg')">
				<div class="slide__inner">
					<div class="slide__type">Спецпредложение</div>
					<div class="slide__title">Планировочное решение 2</div>
					<div class="slide__desc">
					Вы приобрели новую квартиру, дом или решили сделать ремонт? Грамотный и правильный ремонт любого интерьера, всегда должен начинаться с планировочного решения — это основа для всех ремонтных работ. Спланированный интерьер вашей квартиры или дома, даст гармонию, комфорт и индивидуальную атмосферу вашего интерьера. Совершенно неважно планируете Вы ремонт однокомнатной квартиры или загородного дома, профессиональный подход избавит Вас от лишних трат времени и денег и в том, и в другом случае.</div>
					<div class="slide__more">
						<a href="#" class="uk-button button-intro">Узнать больше&emsp;<i class="arrow-right"></i></a>
					</div>
				</div>
			</li>
			<li class="slide uk-flex uk-flex-middle uk-flex-center" style="background-image: url('assets/template/img/40c810ff5b71441cc9f807a1acccf6ad.png')">
				<div class="slide__inner">
					<div class="slide__type">Спецпредложение</div>
					<div class="slide__title">Планировочное решение 3</div>
					<div class="slide__desc">
					Вы приобрели новую квартиру, дом или решили сделать ремонт? Грамотный и правильный ремонт любого интерьера, всегда должен начинаться с планировочного решения — это основа для всех ремонтных работ. Спланированный интерьер вашей квартиры или дома, даст гармонию, комфорт и индивидуальную атмосферу вашего интерьера. Совершенно неважно планируете Вы ремонт однокомнатной квартиры или загородного дома, профессиональный подход избавит Вас от лишних трат времени и денег и в том, и в другом случае.</div>
					<div class="slide__more">
						<a href="#" class="uk-button button-intro">Узнать больше&emsp;<i class="arrow-right"></i></a>
					</div>
				</div>
			</li>
		</ul>
		<div class="slide-bar" id="slide-bar">
			<div class="slide-bar__arrows js-slideshow">
				<span uk-switcher-item="previous"><i uk-icon="icon: chevron-left"></i></span>
				<span uk-switcher-item="next"><i uk-icon="icon: chevron-right"></i></span>
			</div>

			<div class="slide-bar__count">
				<span class="uk-switcher js-slideshow"><b>1</b><b>2</b><b>3</b></span> из 3
			</div>

			<div class="slide-bar__social">
				<div class="social-links">
					<a href="#" class="social-links__item social-links__item--twitter"></a>
					<a href="#" class="social-links__item social-links__item--vk"></a>
					<a href="#" class="social-links__item social-links__item--instagram"></a>
					<a href="#" class="social-links__item social-links__item--youtube"></a>
				</div>
			</div>

			<a href="#second" class="slide-bar__arrow" uk-scroll><i uk-icon="icon: arrow-down; ratio: 1.2"></i></a>
		</div>
	</div>

	<div id="second">
		
	</div>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
{/block}