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
</div>
{/block}
