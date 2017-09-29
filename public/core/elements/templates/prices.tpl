{extends 'file:templates/base.tpl'}
{block 'content'}
<header class="prices-header">
	<div class="uk-container">
		<div class="breadcrumb uk-flex uk-flex-center">
		    {'pdoCrumbs' | snippet : [
		        'showHome' => '1',
		        'tplWrapper' => '@INLINE <ul class="uk-breadcrumb">{$output}</ul>'
		    ]}
		</div>
		<h1 class="pagetitle pagetitle--prices">{$_modx->resource.longtitle ?: $_modx->resource.pagetitle}</h1>
		<div class="prices__text">
			{$_modx->resource.content}
		</div>
	</div>
</header>
<section class="prices-services">
	<div class="uk-container">
		<div class="section-title section-title--dark section-title--prices ">
			<span class="section-title__text">
				Цены на услуги House Design Room
			</span>
		</div>
		<div class="uk-grid uk-grid-collapse uk-child-width-1-4" uk-height-match="target: .services-item__text">
			<div class="services-item" style="background-image: url('assets/template/img/service-image-1.jpg')">
				<div class="services-item__title">Планировочное решение</div>
				<div class="services-item__text">с расстановкой мебели</div>
				<div class="services-item__price">
					<span>799</span>
					руб/м<sup>2</sup>
				</div>
			</div>
			<div class="services-item" style="background-image: url('assets/template/img/services-image-2.jpg')">
				<div class="services-item__title">3D-<br>визуализация</div>
				<div class="services-item__text">будущего интерьера</div>
				<div class="services-item__price">
					<span>2590</span>
					руб/м<sup>2</sup>
				</div>
			</div>
			<div class="services-item" style="background-image: url('assets/template/img/services-image-3.jpg')">
				<div class="services-item__title">Строительные чертежи</div>
				<div class="services-item__text">полный комплект</div>
				<div class="services-item__price">
					<span>1290</span>
					руб/м<sup>2</sup>
				</div>
			</div>
			<div class="services-item" style="">
				<div class="services-item__title">Подбор материалов</div>
				<div class="services-item__text">и мебели для интерьера</div>
				<div class="services-item__price">
					<span>899</span>
					руб/м<sup>2</sup>
				</div>
			</div>
		</div>
</section>
<section class="prices-packages">
	<div class="uk-container">
		<div class="section-title section-title--dark">
			<span class="section-title__text">
				Пакеты
			</span>
		</div>
		<div class="js-packages-wrapper uk-grid uk-grid-collapse uk-child-width-1-4">
			<div class="packages-item">
				<div class="packages-item__title uk-flex uk-flex-middle uk-flex-center">«ПРОЕКТ»</div>
				<div class="packages-item__desc uk-flex uk-flex-middle uk-flex-center">Хороший выбор при удаленной работе:</div>
				<div class="packages-item__actual-price">
					<span>7 990</span>
					<sup class="packages-item__unit">
						руб/м<sup>2</sup>
					</sup>
				</div>
				<div class="packages-item__old-price">
					9000 руб.
				</div>
				<div class="packages-item__text">
					ВКЛЮЧАЕТ:<br>
					— Планировочное решение<br>
					— 3Д Визуализации<br>
					— Подбор материалов<br>
					— Строительные чертежи
				</div>
				<div class="packages-item__button">
					<a href="#" class="uk-button button-intro button-intro--packages">Заказать<span class="button-intro__arrow"></span></a>
				</div>
			</div>
			<div class="packages-item">
				<div class="packages-item__title uk-flex uk-flex-middle uk-flex-center">«С АВТОРСКИМ НАДЗОРОМ»</div>
				<div class="packages-item__desc uk-flex uk-flex-middle uk-flex-center">Оптимальный пакет, подходит для большинства:</div>
				<div class="packages-item__actual-price">
					<span>11 990</span>
					<sup class="packages-item__unit">
						руб/м<sup>2</sup>
					</sup>
				</div>
				<div class="packages-item__old-price">
					14000 руб.
				</div>
				<div class="packages-item__text">
					Включает:<br>
					— Планировочное решение<br>
					— 3Д Визуализации<br>
					— Подбор материалов<br>
					— Строительные чертежи<br>
					— Авторский надзор
				</div>
				<div class="packages-item__button">
					<a href="#" class="uk-button button-intro button-intro--packages">Заказать<span class="button-intro__arrow"></span></a>
				</div>
			</div>
			<div class="packages-item">
				<div class="packages-item__title uk-flex uk-flex-middle uk-flex-center">«ВСЕ ВКЛЮЧЕНО»</div>
				<div class="packages-item__desc uk-flex uk-flex-middle uk-flex-center">Все организационные вопросы мы берем на себя, вам нужно будет только въехать в новую квартиру без забот:</div>
				<div class="packages-item__actual-price">
					<span>19 990</span>
					<sup class="packages-item__unit">
						руб/м<sup>2</sup>
					</sup>
				</div>
				<div class="packages-item__old-price">
					23000 руб.
				</div>
				<div class="packages-item__text">
					Включает:<br>
					— Планировочное решение<br>
					— 3Д Визуализации<br>
					— Подбор материалов<br>
					— Строительные чертежи<br>
					— Авторский надзор<br>
					<br>
					+ Поставки мебели и материалов<br>
					+ Финальное декорирование<br>
					+ Неограниченное количество правок

				</div>
				<div class="packages-item__button">
					<a href="#" class="uk-button button-intro button-intro--packages">Заказать<span class="button-intro__arrow"></span></a>
				</div>
			</div>
			<div class="packages-item">
				<div class="packages-item__title uk-flex uk-flex-middle uk-flex-center">«Индивидуальный»</div>
				<div class="packages-item__desc uk-flex uk-flex-middle uk-flex-center">Оптимальный пакет, подходит для большинства:</div>
				<div class="packages-item__actual-price">
					<span>11 990</span>
					<sup class="packages-item__unit">
						руб/м<sup>2</sup>
					</sup>
				</div>
				<div class="packages-item__old-price">
					9000 руб.
				</div>
				<div class="packages-item__text">
					Включает:<br>
					— 1<br>
					— 2<br>
					— 3<br>
					— 4<br>
					— 5
				</div>
				<div class="packages-item__button">
					<a href="#" class="uk-button button-intro button-intro--packages">Заказать<span class="button-intro__arrow"></span></a>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="prices-cost">
	<div class="uk-container">
		<div class="section-title section-title--white">
			<span class="section-title__text">
				ЧТО ВХОДИТ В СТОИМОСТЬ?
			</span>
		</div>
		<div class="uk-grid uk-child-width-1-2">
			<div>
				<div class="consult consult--prices">
					<div class="consult__title">С ЧЕГО НАЧАТЬ?</div>
					<div class="consult__text">
						Запишитесь на консультацию<br>
						с возможностью выезда на ваш объект
					</div>
					<button class="uk-button button-intro button-intro--consult">Записаться<span class="button-intro__arrow"></span></button>
				</div>
			</div>
			<div>
				<div class="prices-cost__text">
					<h2>Что такое Lorem Ipsum?</h2>
					<p>
					Lorem Ipsum - это текст-"рыба", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной "рыбой" для текстов на латинице с начала XVI века.
					</p>
					<p>
					В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.
					</p>
					<h2>Почему он используется?</h2>
					<p>
					Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации "Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст.."
					</p>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="prices-composition">
	<div class="uk-container">
		<div class="section-title section-title--dark">
			<span class="section-title__text">
				 СОСТАВ ДИЗАЙН-ПРОЕКТА
			</span>
		</div>
		<div class="uk-grid uk-child-width-1-2">
			<div>
			  	<div class="prices-composition-slider">
					<ul class="uk-hidden" uk-switcher="connect: .js-prices-slider">
						<li></li>
						<li></li>
						<li></li>
					</ul>
					<ul class="composition-slider__content uk-flex uk-flex-middle uk-flex-center uk-switcher js-prices-slider">
						<li style="background-image: url('assets/template/img/project-1.jpg')"></li>
						<li style="background-image: url('assets/template/img/project-2.jpg')"></li>
						<li style="background-image: url('assets/template/img/project-3.jpg')"></li>
					</ul>
					<div class="composition-slider__control uk-flex uk-flex-right uk-flex-middle">
						<div class="slide-bar__arrows js-prices-slider">
							<span uk-switcher-item="previous"><i uk-icon="icon: chevron-left"></i></span>
							<span uk-switcher-item="next"><i uk-icon="icon: chevron-right"></i></span>
						</div>
						<div class="composition-slider__counter">
							<span class="uk-switcher js-prices-slider"><span class="composition-slider__active">1</span><span class="composition-slider__active">2</span>
							<span class="composition-slider__active">3</span> из 16
						</div>
					</div>
				</div>
			</div>
			<div>
				<ol class="prices-compostion__list">
					<li>Обмерный чертеж объекта</li>
					<li>План расстановки мебели и оборудования</li>
					<li>План демонтажа перегородок и инженерных коммуникаций</li>
					<li>План возводимых перегородок</li>
					<li>План потолка с указанием типа используемого материала, отдельных узлов и сечений</li>
					<li>План размещения осветительных приборов</li>
					<li>План привязки выключателей с указанием включения групп светильников</li>
					<li>План электрики и электровыводов с привязками</li>
					<li>План полов</li>
					<li>План размещения сантехнического оборудования</li>
					<li>3D-визуализации помещений</li>
					<li>План размещения электрического подогрева пола*</li>
					<li>Развёртка стен с раскладкой кафельной плитки с указанием размеров*</li>
					<li>Чертежи заказных изделий*</li>
					<li>Спецификация дверных проёмов и полотен*</li>
					<li>Ведомость отделки помещений*</li>
				</ol>
			</div>
		</div>
	</div>
</section>
<section class="prices-calculations">
	<div class="uk-container">
		<div class="section-title section-title--dark">
			<span class="section-title__text">
				Рассчитать стоимость
			</span>
		</div>
		<div class="prices-calculations__text">
			Узнайте сколько вам нужно будет потратить на: дизайнера, мебель, технику, материалы и отделочные работы. Мы бесплатно проконсультируем, о том где можно купить как дорогие, качественные материалы, так и недорогие с хорошим соотношением цена/качества.
	    </div>
		<div class="prices-calculations__tip">
			Введите ваши данные и мы рассчитаем стоимость дизайн проекта в 3-х категориях<br>
				<span class="form-required">*</span>Поле “Телефон” обязательно для заполнения
		</div>
		<form class="prices-calc">
			<div class="uk-grid uk-child-width-1-2">
				<div>
					<div class="uk-grid uk-grid-collapse uk-flex-top">
						<div class="uk-width-1-6">
							Стиль
						</div>
						<div cass="uk-width-5-6">
							<div class="prices-calc__input-box">
								<input type="text" class="uk-input prices-calc-input" placeholder="Классический">
							</div>
							<div class="prices-calc__desc">
								Выберите стиль интерьера, который вам больше нравится
							</div>
						</div>
					</div>
				</div>
				<div>
					<div class="uk-flex uk-flex-middle">
						<div class="prices-calc__title">
							Площадь
						</div>
						<div>
							<div class="prices-calc__input-box">
								<input type="text" class="uk-input prices-calc-input" placeholder="100">
							</div>
							<div class="prices-calc__desc">
								Введите площадь (по полу)вашего помещения
							</div>
						</div>
						<div>
							м<sup>2</sup>
						</div>
					</div>
				</div>
			</div>
			<div class="uk-grid uk-child-width-1-2">
				<div>
					<div class="uk-flex uk-flex-middle">
						<div class="prices-calc__title">
							Место
						</div>
						<div>
							<div class="prices-calc__input-box">
								<input type="text" class="uk-input prices-calc-input" placeholder="Севастополь">
							</div>
						</div>
					</div>
				</div>
				<div>
					<div class="uk-flex uk-flex-middle">
						<div class="prices-calc__title">
							Место
						</div>
						<div>
							<div class="prices-calc__input-box">
								<input type="text" class="uk-input prices-calc-input" placeholder="Севастополь">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="prices-calc__desc">
				Введите город или название населенного пункта, где находится ваш объект
			</div>
			<div class="uk-grid uk-child-width-1-2">
				<div>
					<div class="uk-flex uk-flex-middle">
						<div class="prices-calc__title">
							Имя
						</div>
						<div>
							<div class="prices-calc__input-box">
								<input type="text" class="uk-input prices-calc-input" placeholder="Севастополь">
							</div>
						</div>
					</div>
				</div>
				<div>
					<div class="uk-flex uk-flex-middle">
						<div class="prices-calc__title">
						 	Телефон<span class="form-required">*</span>
						</div>
						<div>
							<div class="prices-calc__input-box">
								<input type="tel" class="uk-input prices-calc-input" placeholder="+7 123 000 00 00" required>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="prices-calc__desc">
				Введите данные, по которым с вами можно связаться после расчета стоимости
			</div>
			<div class="prices-calc__submit uk-grid">
				<div class="uk-width-2-3">
					<input type="checkbox" name="price-calc-check" checked>
					<div class="price-calc__conditions">
						Нажимая кнопку “Отправить”, подтверждаю, что прочитал(-а) <a href="#">Конфиденциальное соглашение</a> и соглашаюсь с <a href="#">Политикой обработки персональных данных</a>
					</div>
				</div>
				<div class="uk-width-1-3">
					<button type="submit" class="uk-button button-intro">Отправить<span class="button-intro__arrow"></span></button>
				</div>
			</div>
		</form>
	</section>






{/block}
