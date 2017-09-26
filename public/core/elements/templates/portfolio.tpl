{extends 'file:templates/base.tpl'}
{block 'content'}
<div class="uk-container">
	<div class="breadcrumb uk-flex uk-flex-center">
	    {'pdoCrumbs' | snippet : [
	        'showHome' => '1',
	        'tplWrapper' => '@INLINE <ul class="uk-breadcrumb">{$output}</ul>'
	    ]}
	</div>
	<h1 class="pagetitle pagetitle--portfolio">{$_modx->resource.longtitle ?: $_modx->resource.pagetitle}</h1>
	<div class="portfolio__filter uk-flex uk-flex-between uk-flex-middle uk-flex-wrap">
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
				<option selected>Архитектурное проектирование</option>	
			</select>
		</div>
	</div>
</div>
<div class="portfolio-pool">
	<div class="uk-container">
		<div class="uk-grid uk-grid-collapse uk-child-width-1-2@m">
			<div>
				<a href="#" class="portfolio-item uk-cover-container uk-flex uk-flex-column uk-flex-center uk-flex-middle">
					<img src="assets/template/img/project-1.jpg" alt="" class="portfolio-item__image" uk-cover>
					<span class="portfolio-item__title">Название проекта</span>
					<span class="portfolio-item__line"></span>
					<span class="portfolio-item__desc">Категория проекта</span>
				</a>
			</div>
			
		</div>
		<div class="portfolio-pool__control uk-flex uk-flex-around uk-flex-center@s uk-flex-middle uk-flex-wrap">
				<button type="button" class="uk-button button-intro button-intro--portfolio">Показать еще<span class="button-intro__arrow"></span></button>
				<a href="#" class="view-all view-all--portfolio">показать все</a>
		</div>
	</div>
</div>
<div class="substrate"></div>
{/block}
