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
	<div class="contacts">
		<div class="contacts__background-image"></div>
		<address class="contacts__info">
			<div class="uk-grid uk-grid-collapse uk-child-width-1-2">
				<div>
					Почта@почта<br>
					Телефон<br>
					еще какие-то данные, если надо будет
				</div>
				<div>
					Аккаунты в соцсетях (не кнопки, они есть в меню)
				</div>
			</div>
		</address>
		<div class="contacts-form">
			<div class="contacts-form__title">
				Есть вопросы?<br>Пишите нам
			</div>
			<form>
				<div class="form-row">
					<input type="text" class="uk-input">
				</div>
				<div class="form-row">
					<input type="email" class="uk-input">
				</div>
				<div class="form-row">
					<input type="phone" class="uk-input">
				</div>
				<div class="form-row">
					<textarea class="uk-textarea"></textarea>
				</div>
				<div class="form-row">
					<input type="checkbox" class="uk-checkbox" name="contacts-conditions">
					<div class="contacts-conditions">
						Нажимая “Отправить”, подтверждаю, что прочитал(-а) <a href="#">Конфиденциальное соглашение</a> и соглашаюсь с <a href="#">Политикой обработки персональных данных</a>
					</div>
				</div>
				<button class="uk-button button--pointer">Отправить</button>



</div>
{/block}
