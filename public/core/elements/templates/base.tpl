<!doctype html>
<html class="page" lang="en">
<head>
  {include 'file:partials/head.tpl'}
</head>
<body>
  {block 'content'}
    <div class="uk-container">
      <h1>{$_modx->resource.longtitle ?: $_modx->resource.pagetitle}</h1>
      {$_modx->resource.content}
    </div>
  {/block}

  <script src="assets/template/js/main.js?v={rand()}"></script>
</body>
</html>