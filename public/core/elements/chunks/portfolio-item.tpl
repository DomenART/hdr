<div>
	<a href="{$uri}" class="portfolio-item uk-cover-container uk-flex uk-flex-column uk-flex-center uk-flex-middle">
		<img src="{$project_image}" alt="" class="portfolio-item__image" uk-cover>
		<span class="portfolio-item__title">{$pagetitle}</span>
		<span class="portfolio-item__line"></span>
		<span class="portfolio-item__desc">{$parent | resource : 'pagetitle'}</span>
	</a>
</div>
