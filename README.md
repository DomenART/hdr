# House Design Room

## Build Setup

``` bash
# установка зависимостей
npm install

# хапуск сборки для разработки
npm run dev

# запуск сборки для продакшена
npm run build
```
## Gitify

``` bash
# 1. Заходим в контейнер докера
docker-compose exec --user $(id -u) php bash

# 2. Заходим в папку с проектом
cd hdr.dev/public

# 3. Импортируем базу
../../Gitify build

# 4. Экспортируем базу
../../Gitify extract

# 5. Выходим из контейнера
exit
```