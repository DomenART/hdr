{extends 'file:templates/base.tpl'}
{block 'content'}
<header class="prices-header">
	<div class="uk-container">
		<div class="breadcrumb uk-flex uk-flex-center">
		    {'pdoCrumbs' | snippet : [
		        'showHome' => '1',
		        'tplWrapper' => '@INLINE <ul class="uk-breadcrumb">{$output}</ul>'
		    ]}
		</div>
		<h1 class="pagetitle pagetitle--prices">{$_modx->resource.longtitle ?: $_modx->resource.pagetitle}</h1>
		<div class="prices__text">
			{$_modx->resource.content}
		</div>
	</div>
</header>
<section class="prices-services">
	<div class="uk-container">
		<div class="section-title section-title--dark">
			<span class="section-title__text">
				Цены на услуги House Design Room
			</span>
		</div>
		<div class="uk-grid uk-grid-collapse uk-child-width-1-4">

				<div class="services-item" style="background-image: url('assets/template/img/service-image-1.jpg')">
					<div class="services-item__title">Планировочное решение</div>
					<div class="services-item__text">с расстановкой мебели</div>
					<div class="services-item__price">
						<span>799</span>
						руб/м<sup>2</sup>
					</div>
				</div>

				<div class="services-item" style="background-image: url('assets/template/img/services-image-2.jpg')">
					<div class="services-item__title">Планировочное решение</div>
					<div class="services-item__text">с расстановкой мебели</div>
					<div class="services-item__price">
						<span>799</span>
						руб/м<sup>2</sup>
					</div>
				</div>

				<div class="services-item" style="background-image: url('assets/template/img/services-image-3.jpg')">
					<div class="services-item__title">Планировочное решение</div>
					<div class="services-item__text">с расстановкой мебели</div>
					<div class="services-item__price">
						<span>799</span>
						руб/м<sup>2</sup>
					</div>
				</div>

				<div class="services-item" style="">
					<div class="services-item__title">Планировочное решение</div>
					<div class="services-item__text">с расстановкой мебели</div>
					<div class="services-item__price">
						<span>799</span>
						руб/м<sup>2</sup>
					</div>
				</div>

		</div>
</section>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br><br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

		



{/block}
