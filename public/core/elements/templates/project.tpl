{extends 'file:templates/base.tpl'}
{block 'content'}
<header class="project-header" style="background: url('{$_modx->resource['project.header-image']}') no-repeat 50% 50%; background-size: cover">
	<div class="uk-container">
		<div class="breadcrumb breadcrumb--white uk-flex uk-flex-center">
		    {'pdoCrumbs' | snippet : [
		        'showHome' => '1',
		        'tplWrapper' => '@INLINE <ul class="uk-breadcrumb">{$output}</ul>'
		    ]}
		</div>
		<h1 class="pagetitle pagetitle--white pagetitle--project">{$_modx->resource.longtitle ?: $_modx->resource.pagetitle}</h1>
		<div class="project-bar">
			<div class="project-bar__control">
				<a href="#" class="project-bar__prev">предыдущий</a>
				<a href="#" class="project-bar__next">следующий</a>
			</div>
			<div class="project-bar__info">
				
			</div>
		</div>
	</div>
</header>

{/block}