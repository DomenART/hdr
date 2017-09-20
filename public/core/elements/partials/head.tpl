<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="cmsmagazine" content="ef9002bde22164e1bb8ca1b1793cf47b">

<title>{$_modx->resource['seo.pagetitle'] ?: 'pdoTitle' | snippet | strip_tags}</title>
<meta name="description" content="{$_modx->resource['seo.description']}">
<meta name="keywords" content="{$_modx->resource['seo.keywords']}">

<meta property="og:image" content="{'site_url' | config ~ $_modx->resource.image}">
<meta property="og:title" content="{$_modx->resource.pagetitle}">
<meta property="og:url" content="{$_modx->resource.id | url : ['scheme' => 'full']}">
<meta property="og:description" content="{$_modx->resource.introtext | strip_tags}">

<link rel="canonical" href="{$_modx->resource.id | url : ['scheme' => 'full']}">
<base href="{'site_url' | config}">
<link rel="stylesheet" href="assets/template/css/main.css?v={rand()}" type="text/css">