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
		<div class="contacts__bg-image" style="background: url('{$_modx->resource['contacts.bg-image']}') no-repeat 50% 50%"></div>
		<address class="contacts-info">
			<div class="uk-grid uk-grid-collapse uk-child-width-1-2@s">
				<div>
					<div class="contacts-info__col">
						<div class="contacts-info__row">
							Почта@почта
						</div>
						<div class="contacts-info__row">
							Телефон
						</div>
						<div class="contacts-info__row">
							еще какие-то данные, если надо будет
						</div>
					</div>
				</div>
				<div>
					<div class="contacts-info__col">
						Аккаунты в соцсетях (не кнопки, они есть в меню)
					</div>
				</div>
			</div>
		</address>
		<div class="contacts-form">
			<div class="contacts-form__title">
				Есть вопросы?<br>Пишите нам
			</div>
			<form>
				<div class="contacts-input-row">
					<input type="text" class="contacts-input uk-input" placeholder="Представьтесь">
				</div>
				<div class="contacts-input-row">
					<input type="email" class="contacts-input uk-input" placeholder="Электронная почта*" required>
				</div>
				<div class="contacts-input-row">
					<input type="tel" class="contacts-input uk-input" placeholder="Укажите телефон">
				</div>
				<div class="contacts-textarea-row">
					<textarea class="contacts-textarea uk-textarea" rows="5" placeholder="Сообщение"></textarea>
				</div>
				<div class="contacts-input-row uk-flex uk-flex-top">
					<input type="checkbox" id="contacts-conditions" class="uk-checkbox contacts-checkbox" name="contacts-conditions">
					<label for="contacts-conditions" class="contacts__conditions">
						Нажимая “Отправить”, подтверждаю, что прочитал(-а) <a href="#">Конфиденциальное соглашение</a> и соглашаюсь с <a href="#">Политикой обработки персональных данных</a>
					</label>
				</div>
				<button class="uk-button button-intro button-intro--contacts">Отправить<span class="button-intro__arrow"></span></button>
			</form>
		</div>
	</div>
</div>
<div class="substrate"></div>
{/block}
