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
		<div class="section-title section-title--dark">
			<span class="section-title__text">
				Цены на услуги House Design Room
			</span>
		</div>
		<div class="uk-grid uk-grid-collapse uk-child-width-1-4">
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
		<div class="uk-grid uk-grid-collapse uk-child-width-1-4" uk-height-match="target: .packages-item__text">														
			<div class="packages-item">           
				<div class="packages-item__title">«ПРОЕКТ»</div>
				<div class="packages-item__desc">Хороший выбор при удаленной работе:</div>
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
				<div class="packages-item__title">«С АВТОРСКИМ НАДЗОРОМ»</div>
				<div class="packages-item__desc">Оптимальный пакет, подходит для большинства:</div>
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
				<div class="packages-item__title">«ВСЕ ВКЛЮЧЕНО»</div>
				<div class="packages-item__desc">Все организационные вопросы мы берем на себя, вам нужно будет только въехать в новую квартиру без забот:</div>
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
				<div class="packages-item__title">«Индивидуальный»</div>
				<div class="packages-item__desc">Оптимальный пакет, подходит для большинства:</div>
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
		<div class="uk-grid uk-grid-collapse uk-child-width-1-2">
			<div>
				<div class="consult consult--prices">
					<div class="consult__text">
						С ЧЕГО НАЧАТЬ?<br>
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

		



{/block}
