{extends 'file:templates/base.tpl'}
{block 'content'}
<div class="uk-container">
	<div class="breadcrumb uk-flex uk-flex-center">
	    {'pdoCrumbs' | snippet : [
	        'showHome' => '1',
	        'tplWrapper' => '@INLINE <ul class="uk-breadcrumb">{$output}</ul>'
	    ]}
	</div>
	<h1 class="pagetitle">{$_modx->resource.longtitle ?: $_modx->resource.pagetitle}</h1>
	<div class="portfolio__filter uk-flex uk-flex-between uk-flex-middle">
		<div class="filter__years">
			<ul>
				<li><a href="#">Все</a></li>
				<li><a href="#">2016</a></li>
				<li><a href="#">2015</a></li>
				<li><a href="#">2014</a></li>
				<li><a href="#">2013</a></li>
			</ul>
		</div>
		<div class="filter__category">
			<select class="uk-select filter__select">
				<option selected>Стиль интерьера</option>	
			</select>
		</div>
	</div>
</div>
<div class="portfolio-pool">
	<div class="uk-container">
		<div class="portfolio-item">
			<div class="uk-grid uk-grid-collapse">
				<div class="uk-width-1-4">
					<div class="portfolio-item__title">
						Название проекта
					</div>
					<div class="portfolio-item__category">
						Категория проекта
					</div>
					<div class="portfolio-item__desc">
						Краткий текст-описание, если есть, если нет - не выводится
					</div>
				</div>
				<div class="uk-width-3-4">
					<div class="portfolio-item__image">
						<img src="assets/template/img/portfolio-item.jpg" alt="">
						<div class="portfolio-item__hover uk-flex uk-flex-bottom uk-flex-right">
							<a href="#" class="uk-button button-intro button-intro--portfolio">Смотреть проект<span class="button-intro__arrow"></span></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="portfolio-item">
			<div class="uk-grid uk-grid-collapse">
				<div class="uk-width-1-4">
					<div class="portfolio-item__title">
						Название проекта
					</div>
					<div class="portfolio-item__category">
						Категория проекта
					</div>
					<div class="portfolio-item__desc">
						Краткий текст-описание, если есть, если нет - не выводится
					</div>
				</div>
				<div class="uk-width-3-4">
					<div class="portfolio-item__image">
						<img src="assets/template/img/portfolio-item.jpg" alt="">
						<div class="portfolio-item__hover uk-flex uk-flex-bottom uk-flex-right">
							<a href="#" class="uk-button button-intro button-intro--portfolio">Смотреть проект<span class="button-intro__arrow"></span></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="portfolio-item">
			<div class="uk-grid uk-grid-collapse">
				<div class="uk-width-1-4">
					<div class="portfolio-item__title">
						Название проекта
					</div>
					<div class="portfolio-item__category">
						Категория проекта
					</div>
					<div class="portfolio-item__desc">
						Краткий текст-описание, если есть, если нет - не выводится
					</div>
				</div>
				<div class="uk-width-3-4">
					<div class="portfolio-item__image">
						<img src="assets/template/img/portfolio-item.jpg" alt="">
						<div class="portfolio-item__hover uk-flex uk-flex-bottom uk-flex-right">
							<a href="#" class="uk-button button-intro button-intro--portfolio">Смотреть проект<span class="button-intro__arrow"></span></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="uk-grid uk-grid-collapse">
			<div class="uk-width-1-4"></div>
			<div class="uk-width-3-4">
				<div class="portfolio-pool__control uk-flex uk-flex-center uk-flex-middle">
					<a href="#" class="uk-button button-intro button-intro--portfolio">Показать еще<span class="button-intro__arrow"></span></a>
					<a href="#" class="portfolio-pool__view-all">показать все</a>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="substrate"></div>
{/block}
