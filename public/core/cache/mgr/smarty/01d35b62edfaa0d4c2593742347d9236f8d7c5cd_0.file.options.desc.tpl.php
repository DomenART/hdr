<?php /* Smarty version 3.1.27, created on 2017-09-21 07:57:50
         compiled from "/var/www/hdr.dev/public/core/components/fastuploadtv/lexicon/ru/options.desc.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:189638575659c370fe0d0071_64989917%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '01d35b62edfaa0d4c2593742347d9236f8d7c5cd' => 
    array (
      0 => '/var/www/hdr.dev/public/core/components/fastuploadtv/lexicon/ru/options.desc.tpl',
      1 => 1505888562,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '189638575659c370fe0d0071_64989917',
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_59c370fe0d1f75_99198865',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_59c370fe0d1f75_99198865')) {
function content_59c370fe0d1f75_99198865 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '189638575659c370fe0d0071_64989917';
?>

<h3>Динамические параметры маршрутов</h3>
<h4>Использование замещающегося текста (Placeholders)</h4>
<p>Путь к сохраненному файлу и дополнительный префикс имени файла могут быть настроены динамически с несколькими заполнителями:
    <ul>
        <li><span>{id}</span>     - ID ресурса</li>
        <li><span>{pid}</span>    - ID ресурса родителя</li>
        <li><span>{alias}</span>  - Алиас ресурса</li>
        <li><span>{palias}</span> - Алиас ресурса родителя</li>
        <li><span>{tid}</span>    - ID доп. поля (tv)</li>
        <li><span>{uid}</span>    - ID юзера</li>
        <li><span>{rand}</span>   - Случайная строка из 6 символов</li>
        <li><span>{t}</span>      - Время в формате timestamp</li>
        <li><span>{y}</span>      - Год</li>
        <li><span>{m}</span>      - Месяц</li>
        <li><span>{d}</span>      - День</li>
        <li><span>{h}</span>      - Час</li>
        <li><span>{i}</span>      - Минута</li>
        <li><span>{s}</span>      - Секунда</li>
    </ul>
</p>
<h4>Настройка пути сохранения, используя сниппет</h4>
<p>Вы также можете указать сниппет, который возвращает строку пути для продвинутой маршрутизации с помощью префикса @SNIPPET</p>
<p>Например, <code>@SNIPPET myPathingSnippet</code></p>
<h4>Ограничение типов файлов, используя MIME</h4>
<p>Опишите через запятую MIME-типы, которые могут быть загружены.</p>
<p>Например, <code>image/jpeg, image/png, application/pdf</code></p>
<p>Полный список MIME-типов можно найти <a href="http://webdesign.about.com/od/multimedia/a/mime-types-by-file-extension.htm" target="_blank">здесь</a>.</p>
<?php }
}
?>