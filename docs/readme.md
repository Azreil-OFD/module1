# Создание проекта Django с использованием Poetry

Этот README.md документ представляет собой пошаговое руководство по созданию проекта Django с использованием инструмента Poetry для управления зависимостями и виртуальным окружением Python.

## Шаг 1: Создание общей директории

```bash
$ poetry new maindir
$ tree maindir
```

В результате выполнения этих команд будет создана структура директорий, подобная следующей:

```
maindir/
├── maindir
│   └── __init__.py
├── pyproject.toml
├── README.rst
└── tests
    ├── __init__.py
    └── test_maindir.py
```

## Шаг 2: Установка зависимости Django

```bash
$ poetry shell
$ poetry add django
```

## Шаг 3: Создание проекта Django

### 3.1 Переименование внутренней директории и создание проекта

```bash
$ cd maindir
~/maindir
$ mv maindir src
$ cd src
$ django-admin startproject config .
```

### 3.2 Удаление тестов и README

После выполнения предыдущих шагов структура директорий изменится следующим образом:

```
$tree maindir
maindir/
├── poetry.lock
├── pyproject.toml
└── src
    ├── config
    │   ├── asgi.py
    │   ├── __init__.py
    │   ├── settings.py
    │   ├── urls.py
    │   └── wsgi.py
    ├── __init__.py
    └── manage.py
```

## Шаг 4: Инициализация Git

```bash
$ git init
$ touch .gitignore
$ touch README.md
```

## Итог

После завершения всех шагов структура директорий и файлов проекта будет выглядеть следующим образом:

```
maindir/
├── .git
│   ├── ...
├── .gitignore
├── poetry.lock
├── pyproject.toml
├── README.md
└── src
    ├── config
    │   ├── asgi.py
    │   ├── __init__.py
    │   ├── settings.py
    │   ├── urls.py
    │   └── wsgi.py
    ├── __init__.py
    └── manage.py
```

Проект Django находится в директории src/, а остальные файлы и приложения находятся на одном уровне с src/.