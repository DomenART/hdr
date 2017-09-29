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
		<div id="pdopage">

			<div class="rows uk-grid uk-grid-collapse uk-child-width-1-2@m">
				{'!pdoPage' | snippet : [
					'element' => 'pdoResources',
					'depth' => 2,
					'limit' => 4,
				  	'includeTVs' => 'project_image',
		            'tvPrefix' => '',
					'tpl' => '@FILE chunks/portfolio-item.tpl',
					'frontend_js' => 'assets/template/pdopage.js',
					'ajaxMode' => 'button',
					'ajaxElemMore' => '#pdopage .js-portfolio-more',
					'ajaxTplMore' => '@INLINE <div class="portfolio-pool__control uk-flex uk-flex-around uk-flex-center@s uk-flex-middle uk-flex-wrap">
							<button type="button" class="uk-button button-intro button-intro--portfolio js-portfolio-more">Показать ещё<span class="button-intro__arrow"></span></button>
							<button type="button" class="view-all view-all--portfolio js-portfolio-more-all">показать все</button>
					</div>',
					'where' => ['class_key' => 'ticket']
				]}
			</div>
			{$_modx->getPlaceholder('page.nav')}
		</div>

	</div>
</div>
<div class="substrate"></div>
{/block}
