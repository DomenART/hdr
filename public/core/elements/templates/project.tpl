{extends 'file:templates/base.tpl'}
{block 'content'}
<header class="project-header" style="background: url('{$_modx->resource['project_image']}') no-repeat 50% 50%; background-size: cover">
	<div class="uk-container">
		<div class="breadcrumb breadcrumb--white uk-flex uk-flex-center">
		    {'pdoCrumbs' | snippet : [
		        'showHome' => '1',
		        'tplWrapper' => '@INLINE <ul class="uk-breadcrumb">{$output}</ul>'
		    ]}
		</div>
		<h1 class="pagetitle pagetitle--white pagetitle--project">{$_modx->resource.longtitle ?: $_modx->resource.pagetitle}</h1>
		<div class="project-bar uk-flex uk-flex-wrap uk-flex-middle">
			{'pdoNeighbors' | snippet : [
				'tplPrev' => '@INLINE <span class="link-prev"><a href="/{$uri}" class="project-bar__links"><img src="assets/template/img/project-arr-left.svg" alt=""><span>предыдущий</span></a></span>',
				'tplNext' => '@INLINE <span class="link-next"><a href="/{$uri}" class="project-bar__links"><img src="assets/template/img/project-arr-right.svg" alt=""><span>следующий</span></a></span>',
				'tplWrapper' => '@INLINE <div class="project-bar__control uk-flex uk-flex-middle uk-flex-between uk-flex-left@s">{$prev}{$next}</div>'
			]}
			<div class="project-bar__info uk-flex uk-flex-wrap uk-flex-center uk-flex-left@s">
				<div class="project-bar__year">
					{$_modx->resource.description}
				</div>
				<div class="project-bar__desc">
					{$_modx->resource.introtext}
				</div>
			</div>
		</div>
	</div>
</header>
<main>
	<div class="uk-container">
		<div class="project__category">
			{$_modx->resource.parent |  resource: 'pagetitle'}
		</div>
		<div class="project__text">
			{$_modx->resource.content}
		</div>
	</div>
	<div class="project-pool">
		<div class="uk-grid uk-grid-collapse uk-child-width-1-2@s uk-flex uk-flex-bottom">
			<div id="project-pool-left">
				{foreach $_modx->resource['project.item'] | json_decode as $row}
				<div class="project-item js-project-item">
					<img src="{$row.image}" alt="">
					{if $row['text']}
						<div class="project-item__text">{$row.text | nl2br}</div>
					{/if}
					{if $row['consult']}
						<div class="project-consult">
							{include 'file:partials/consult.tpl'}
						</div>
					{/if}
				</div>
				{/foreach}
			</div>
			<div id="project-pool-right"></div>
		</div>
	</div>
</main>
{/block}
