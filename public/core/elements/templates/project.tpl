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
			<div class="project-bar uk-flex uk-flex-wrap uk-flex-middle">
				<div class="project-bar__control uk-flex uk-flex-middle">
					<a href="#" class="project-bar__links">
						<span></span>предыдущий
					</a>
					<a href="#" class="project-bar__links">
						следующий
					</a>
				</div>
				<div class="project-bar__info uk-flex uk-flex-wrap">
					<div class="project-bar__year">
						2017
					</div>
					<div class="project-bar__desc">
						Студия дизайна House Room Design<br>
						Описание поставленной задачи - краткое
					</div>
				</div>
			</div>
		</div>
	</header>
	<main>
		<div class="uk-container">
			<div class="project__category">Категория проекта или стиль</div>
			<div class="project__text">
				{$_modx->resource.content}
			</div>
		</div>
		<div class="project-pool">
			<div class="uk-grid uk-grid-collapse uk-child-width-1-2@s uk-flex uk-flex-bottom">
				<div id="project-pool-left">
					{foreach $_modx->resource['project.item'] | json_decode as $row}
					<div class="js-project-item">
						<img src="{$row.image}" alt="">
						{if $row['text']}
							<div class="project-item__text">{$row.text | nl2br}</div>
						{/if}
					</div>
					{/foreach}
				</div>
				<div id="project-pool-right"></div>
			</div>
		</div>
	</main>
{/block}