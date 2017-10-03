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

	<section class="slideshow" id="slideshow">
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
						<a href="#" class="uk-button button-intro">Узнать больше<span class="button-arrow"></span></a>
					</div>
				</div>
			</li>
			<li class="slide uk-flex uk-flex-middle uk-flex-center" style="background-image: url('assets/template/img/slide-2.jpg')">
				<div class="slide__inner">
					<div class="slide__type">Спецпредложение</div>
					<div class="slide__title">Планировочное решение 2</div>
					<div class="slide__desc">
					Вы приобрели новую квартиру, дом или решили сделать ремонт? Грамотный и правильный ремонт любого интерьера, всегда должен начинаться с планировочного решения — это основа для всех ремонтных работ. Спланированный интерьер вашей квартиры или дома, даст гармонию, комфорт и индивидуальную атмосферу вашего интерьера. Совершенно неважно планируете Вы ремонт однокомнатной квартиры или загородного дома, профессиональный подход избавит Вас от лишних трат времени и денег и в том, и в другом случае.</div>
					<div class="slide__more">
						<a href="#" class="uk-button button-intro">Узнать больше<span class="button-arrow"></span></a>
					</div>
				</div>
			</li>
			<li class="slide uk-flex uk-flex-middle uk-flex-center" style="background-image: url('assets/template/img/slide-3.jpg')">
				<div class="slide__inner">
					<div class="slide__type">Спецпредложение</div>
					<div class="slide__title">Планировочное решение 3</div>
					<div class="slide__desc">
					Вы приобрели новую квартиру, дом или решили сделать ремонт? Грамотный и правильный ремонт любого интерьера, всегда должен начинаться с планировочного решения — это основа для всех ремонтных работ. Спланированный интерьер вашей квартиры или дома, даст гармонию, комфорт и индивидуальную атмосферу вашего интерьера. Совершенно неважно планируете Вы ремонт однокомнатной квартиры или загородного дома, профессиональный подход избавит Вас от лишних трат времени и денег и в том, и в другом случае.</div>
					<div class="slide__more">
						<a href="#" class="uk-button button-intro">Узнать больше<span class="button-arrow"></span></a>
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
	</section>
	
	<section class="section-about" id="second">
		<div class="uk-container">
			<div class="section-about__desc">{$_modx->resource.description}</div>
			<h1 class="section-about__title">{$_modx->resource.longtitle ?: $_modx->resource.pagetitle}</h1>
			<div class="section-about__content">{$_modx->resource.content}</div>
		</div>
	</section>
	
	<section class="section-comprasion">
		<div class="uk-container">
			<comprasion initial-images='{$_modx->resource.comprasion}'></comprasion>
		</div>
	</section>

	<section class="section-directions">
		<div class="uk-container">
			<div class="uk-grid uk-grid-collapse">
				<div class="uk-width-1-2@m">
					<a href="" class="direction-styles uk-flex uk-flex-middle">
						<span class="direction-styles__title">
							<span>Исторические стили интерьера</span>
						</span>
					</a>					
				</div>
				<div class="uk-width-1-2@m direction-consult uk-flex">
					{include 'file:partials/consult.tpl'}
				</div>
				<div class="uk-width-1-2@m">
					<div class="direction-design uk-flex uk-flex-middle">
						<div class="direction-design__image"></div>
						<div class="direction-design__container">
							<div class="direction-design__title">Дизайн-проекты</div>
							<ul class="direction-design__list">
								<li><a href="">квартир</a></li>
								<li><a href="">загородных домов</a></li>
								<li><a href="">офисов</a></li>
								<li><a href="">коммерческой недвижимости</a></li>
								<li><a href="">общественных заведений</a></li>
								<li><a href="">магазинов, ресторанов и кафе</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="uk-width-1-2@m">
					<a href="" class="direction-planning uk-flex uk-flex-middle">
						<div class="direction-planning__image"></div>
						<span class="direction-planning__title">
							<span>Архитектурное проектирование</span>
						</span>
					</a>					
				</div>
				<div class="uk-width-1-2@m"></div>
				<div class="uk-width-1-2@m">
					<a href="" class="direction-interior">
						<span>Качественный<br>и функциональный интерьер</span>
					</a>
				</div>
			</div>
		</div>
	</section>

	<section class="section-portfolio">
		<div class="uk-container">
			<div class="section-title section-title--with-all">
				<span class="section-title__text">
					Портфолио
					<a href="#" class="view-all">смотреть все</a>
				</span>
			</div>
			<div class="uk-grid uk-grid-collapse uk-child-width-1-2@m">
				<div>
					<a href="#" class="portfolio-item uk-cover-container uk-flex uk-flex-column uk-flex-center uk-flex-middle">
						<img src="assets/template/img/project-1.jpg" alt="" class="portfolio-item__image" uk-cover>
						<span class="portfolio-item__title">Название проекта</span>
						<span class="portfolio-item__line"></span>
						<span class="portfolio-item__desc">Категория проекта</span>
					</a>
				</div>
				<div>
					<a href="#" class="portfolio-item uk-cover-container uk-flex uk-flex-column uk-flex-center uk-flex-middle">
						<img src="assets/template/img/project-2.jpg" alt="" class="portfolio-item__image" uk-cover>
						<span class="portfolio-item__title">Название проекта</span>
						<span class="portfolio-item__line"></span>
						<span class="portfolio-item__desc">Категория проекта</span>
					</a>
				</div>
				<div>
					<a href="#" class="portfolio-item uk-cover-container uk-flex uk-flex-column uk-flex-center uk-flex-middle">
						<img src="assets/template/img/project-3.jpg" alt="" class="portfolio-item__image" uk-cover>
						<span class="portfolio-item__title">Название проекта</span>
						<span class="portfolio-item__line"></span>
						<span class="portfolio-item__desc">Категория проекта</span>
					</a>
				</div>
				<div>
					<a href="#" class="portfolio-item uk-cover-container uk-flex uk-flex-column uk-flex-center uk-flex-middle">
						<img src="assets/template/img/project-4.jpg" alt="" class="portfolio-item__image" uk-cover>
						<span class="portfolio-item__title">Название проекта</span>
						<span class="portfolio-item__line"></span>
						<span class="portfolio-item__desc">Категория проекта</span>
					</a>
				</div>
			</div>
		</div>
	</section>

	<section class="section-working">
		<div class="uk-container">
			<div class="section-title section-title--dark">
				<span class="section-title__text">
					Как мы работаем
				</span>
			</div>

			<div class="working-list uk-grid uk-grid-collapse uk-child-width-1-2@s uk-child-width-1-4@m">
				<div class="working-item uk-cover-container">
					<img src="assets/template/img/working-1.jpg" alt="" class="working-item__image" uk-cover>
					<div class="working-item__container">
						<div class="working-item__title">Дизайнер планирует пространство</div>
						<div class="working-item__desc">
							<p>Это основа дизайн-проекта, на этом этапе студия дизайна интерьера прорисовывает не менее 3-х вариантов планировочных решений каждого помещения и уже из них вы</p>
							<p>Дизайн-проект вашего дома, выполненный по такой продуманной системе, обеспечит сокращение непредвиденных расходов на возможную перепланировку в процессе строительства.</p>
						</div>
					</div>
				</div>
				<div class="working-item uk-cover-container">
					<img src="assets/template/img/working-2.jpg" alt="" class="working-item__image" uk-cover>
					<div class="working-item__container">
						<div class="working-item__title">Дизайнер планирует пространство</div>
						<div class="working-item__desc">
							<p>Это основа дизайн-проекта, на этом этапе студия дизайна интерьера прорисовывает не менее 3-х вариантов планировочных решений каждого помещения и уже из них вы</p>
							<p>Дизайн-проект вашего дома, выполненный по такой продуманной системе, обеспечит сокращение непредвиденных расходов на возможную перепланировку в процессе строительства.</p>
						</div>
					</div>
				</div>
				<div class="working-item uk-cover-container">
					<img src="assets/template/img/working-3.jpg" alt="" class="working-item__image" uk-cover>
					<div class="working-item__container">
						<div class="working-item__title">Дизайнер планирует пространство</div>
						<div class="working-item__desc">
							<p>Это основа дизайн-проекта, на этом этапе студия дизайна интерьера прорисовывает не менее 3-х вариантов планировочных решений каждого помещения и уже из них вы</p>
							<p>Дизайн-проект вашего дома, выполненный по такой продуманной системе, обеспечит сокращение непредвиденных расходов на возможную перепланировку в процессе строительства.</p>
						</div>
					</div>
				</div>
				<div class="working-item uk-cover-container">
					<img src="assets/template/img/working-4.jpg" alt="" class="working-item__image" uk-cover>
					<div class="working-item__container">
						<div class="working-item__title">Дизайнер планирует пространство</div>
						<div class="working-item__desc">
							<p>Это основа дизайн-проекта, на этом этапе студия дизайна интерьера прорисовывает не менее 3-х вариантов планировочных решений каждого помещения и уже из них вы</p>
							<p>Дизайн-проект вашего дома, выполненный по такой продуманной системе, обеспечит сокращение непредвиденных расходов на возможную перепланировку в процессе строительства.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="section-life">
		<div class="uk-container">
			<div class="section-title section-title--dark">
				<span class="section-title__text">
					Из жизни дизайнера
				</span>
			</div>

			<div class="uk-grid uk-grid-collapse">
				<div class="uk-width-1-2@m">
					<div class="uk-grid uk-grid-collapse">
						<div class="uk-width-1-2">
							<a href="" class="life-item">
								<img src="assets/template/img/spacer.gif" alt="" class="life-item__spacer">
								<span class="life-item__title">Отзывы</span>
							</a>
							<a href="" class="life-item uk-cover-container">
								<img src="assets/template/img/life-3.jpg" alt="" class="life-item__image" uk-cover>
								<img src="assets/template/img/spacer.gif" alt="" class="life-item__spacer">
								<span class="life-item__title">Вакансии</span>
							</a>
						</div>
						<div class="uk-width-1-2">
							<a href="" class="life-item uk-cover-container">
								<img src="assets/template/img/life-1.jpg" alt="" class="life-item__image" uk-cover>
								<img src="assets/template/img/spacer.gif" alt="" class="life-item__spacer">
								<span class="life-item__title life-item__title--wide">Картины&nbsp;в<br> интерьер</span>
							</a>
							<a href="" class="life-item uk-cover-container">
								<img src="assets/template/img/life-4.jpg" alt="" class="life-item__image" uk-cover>
								<img src="assets/template/img/spacer.gif" alt="" class="life-item__spacer">
								<span class="life-item__square uk-flex uk-flex-middle uk-flex-center">
									<span>О нас</span>
								</span>
							</a>
						</div>
					</div>
				</div>
				<div class="uk-width-1-2@m">
					<div class="uk-grid uk-grid-collapse">
						<div class="uk-width-1-2">
							<a href="" class="life-item uk-cover-container">
								<img src="assets/template/img/life-2.jpg" alt="" class="life-item__image" uk-cover>
								<img src="assets/template/img/spacer.gif" alt="" class="life-item__spacer">
								<span class="life-item__desc">Дни дизайна в Китае</span>
							</a>
							<a href="" class="life-item life-item--light">
								<img src="assets/template/img/spacer.gif" alt="" class="life-item__spacer">
								<span class="life-item__mc uk-flex uk-flex-column uk-flex-middle uk-flex-center">
									<span class="life-item__mc__abbr">МК</span>
									<span class="life-item__mc__text">
										Мастер-классы
										<hr>
										СТАЖИРОВКА
									</span>
								</span>
							</a>
						</div>
						<div class="uk-width-1-2">
							<a href="" class="life-item">
								<img src="assets/template/img/spacer.gif" alt="" class="life-item__spacer">
								<img src="assets/template/img/spacer.gif" alt="" class="life-item__spacer">
								<span class="life-item__blog">
									<span class="life-item__blog__title">Зачем нужна<br> 3D-визуализация?</span>
									<span class="life-item__blog__desc">Блог House Room Design</span>
								</span>
							</a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="home-text">
				<h2>Сео-текст заголовок 2</h2>
				<h3>Что вы получаете, делая заказ в студии дизайна?</h3>
				<div class="receive-list">
					<div class="receive-item uk-flex uk-flex-middle">
						<div class="receive-item__icon"><img src="assets/template/img/cube.svg" width="102" alt=""></div>
						<div class="receive-item__text">Над вашим проектом будут работать не менее 3х профессиональных дизайнеров и визуализаторов под руководством опытных арт-директоров. </div>
					</div>
					<div class="receive-item uk-flex uk-flex-middle">
						<div class="receive-item__icon"><img src="assets/template/img/graphic-design.svg" width="102" alt=""></div>
						<div class="receive-item__text">В течении уже 5-6ти рабочих дней, вы получаете готовую визуализацию дизайн проекта, что даст вам возможность оценить дизайн интерьера до начала отделочных работ. </div>
					</div>
					<div class="receive-item uk-flex uk-flex-middle">
						<div class="receive-item__icon"><img src="assets/template/img/portfolio.svg" width="102" alt=""></div>
						<div class="receive-item__text">Средствами авторского надзора мы проконтролируем весь ход реализации проекта и поможем в подборе и закупке материалов.</div>
					</div>
				</div>
				<h3>Что мы учитываем в дизайне интерьера?</h3>
				<ol class="list-numbers">
					<li>Правильное зонирование помещений и пространства в целом.</li>
					<li>Проводим грамотную работу с освещением.</li>
					<li>Учитываем влияние цвета и предлагаем цветовые решения.</li>
					<li>Продумываем различные системы хранения для кухонь и жилых комнат.</li>
					<li>Используем правильные материалы, с учетом их свойств.</li>
					<li>Реализовываем любые стили и техники, максимально подходящие вами вашей семье.</li>
					<li>Работаем в заданной ценовой политике.</li>
				</ol>
			</div>
		</div>
	</section>

	<footer class="section-footer">
		<section class="footer-first uk-container">
			<div class="uk-grid" uk-grid>
				<div class="uk-width-2-5@m">
					<a href="/"><img src="assets/template/img/logo-footer.png" alt="" class="footer__logo"></a>
					<ul class="footer__rights">
						<li><a href="#">Пользовательское соглашение</a></li>
						<li><a href="#">Политика обработки персональных данных</a></li>
					</ul>
				</div>

				<div class="uk-width-3-5@m">
					<div class="uk-grid" uk-grid>
						<div class="uk-width-1-2@s uk-width-expand@m">
							<div class="footer__title">Наш офис</div>
							<table class="footer__contacts">
								<tr>
									<td>Севастополь:</td>
									<td>
										+7 (978) 070-43-33<br> +7 (978) 042-24-43
									</td>
								</tr>
								<tr>
									<td colspan="2"><br></td>
								</tr>
								<tr>
									<td>Москва:</td>
									<td>+7 (985) 875-29-17</td>
								</tr>
								<tr>
									<td colspan="2"><br></td>
								</tr>
								<tr>
									<td>E-mail:</td>
									<td><a href="mailto:info@gerabyte.ru">info@gerabyte.ru</a></td>
								</tr>
							</table>
						</div>

						<div class="uk-width-1-2@s uk-width-1-4@m">
							<div class="footer__title">Время работы</div>
							<table class="footer__contacts">
								<tr>
									<td>Пн-пт:</td>
									<td>
										с 10:00 до 19:00
									</td>
								</tr>
								<tr>
									<td>Сб-вс:</td>
									<td>Выходные</td>
								</tr>
							</table>
						</div>

						<div class="uk-width-1-2@s uk-width-1-4@m">
							<div class="footer__title">Портфолио</div>
							<ul class="footer__menu">
								<li><a href="#">Кафе, рестораны и т.д.</a></li>
								<li><a href="#">Современные</a></li>
								<li><a href="#">Прованс</a></li>
								<li><a href="#">Классические</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="footer-second uk-container">
			<div class="uk-grid uk-flex-middle" uk-grid>
				<div class="uk-width-2-5@m">
					<div class="footer__copyright">©2017, Студия дизайна GERABYTE: дизайн-проекты квартир, загородных домов, офисов, коммерческой недвижимости, общественных заведений, магазинов, ресторанов и кафе</div>
					<div></div>
				</div>

				<div class="uk-width-3-5@m">
					<div class="footer__right uk-flex uk-flex-between uk-flex-middle">
						<div class="uk-flex uk-flex-between uk-flex-middle uk-width-1-1 uk-width-auto@s">
							<a href="#" class="footer__sitemap">Карта сайта</a>
							<div class="footer__counters">
								[^t^]
							</div>
						</div>
						<a href="http://domenart-studio.ru" class="footer__creator" target="_blank">Разработка сайта</a>
					</div>
				</div>
			</div>
		</section>
	</footer>
{/block}