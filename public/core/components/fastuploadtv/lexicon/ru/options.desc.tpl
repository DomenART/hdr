{literal}
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
{/literal}