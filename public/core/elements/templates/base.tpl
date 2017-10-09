<!doctype html>
<html class="page" lang="en">
<head>
	{include 'file:partials/head.tpl'}
</head>
<body>
	<div id="app" class="wrapper">
		{include 'file:partials/header.tpl'}

		{block 'content'}
			<div class="uk-container">
				<h1>{$_modx->resource.longtitle ?: $_modx->resource.pagetitle}</h1>
				{$_modx->resource.content}
			</div>
		{/block}

		{include 'file:partials/footer.tpl'}
	</div>

	<script src="assets/template/main.js?v={rand()}"></script>
</body>
</html>