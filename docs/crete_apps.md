Создание директорий проекта Django и структуры приложений внутри проекта можно сделать следующим образом:

1. Создайте директорию для вашего проекта Django, например, `maindir`:

```
$ mkdir maindir
$ cd maindir
```

2. Внутри `maindir` создайте директорию `src`, где будет располагаться исходный код вашего проекта:

```
$ mkdir src
$ cd src
```

3. Создайте директорию `apps`, где будут храниться все приложения Django:

```
$ mkdir apps
$ touch apps/__init__.py
```

Или в PyCharm, как указано в тексте, можно кликнуть по `src`, выбрать "New", затем "Python Package", и создать пакет `apps`.

4. Для создания нового приложения Django, например, `payment`, внутри `apps`, выполните следующие команды:

```
$ mkdir apps/payment
$ python manage.py startapp payment apps/payment
```

Это создаст структуру приложения `payment` внутри директории `apps`, и Django автоматически добавит необходимые файлы.

5. После выполнения этих шагов, структура вашего проекта Django должна выглядеть примерно так:

```
maindir/
└── src/
    ├── apps/
    │   ├── __init__.py
    │   └── payment/
    │       ├── admin.py
    │       ├── apps.py
    │       ├── __init__.py
    │       ├── migrations/
    │       │   └── __init__.py
    │       ├── models.py
    │       ├── tests.py
    │       └── views.py
    └── config/
        ...
```

В конце необходимо отредактировать apps.py подобным образом:
![](https://habrastorage.org/r/w1560/getpro/habr/upload_files/157/5d0/b28/1575d0b28968065994656822d8cf47f4.png)