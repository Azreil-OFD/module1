# Модуль 1 для дэм экзамена

## Настройка окружения

Для настройки окружения на ПК, выполните от имени администратора:
Удаление всех версий python:

```shell
start .\scripts\delete-all-python.bat
```

Установка python3.12:

```shell
.\scripts\install-python.ps1
```

Установка poetry:

```shell
.\scripts\install-poetry.ps1
```

## Запуск проекта

1. Переименуйте в папке config dist.env в .env:

```shell
cp .\config\dist.env .\config\.env
```

2. Установите зависимости:

```bash
poetry install
```

3. Запск проекта:

```bash
poetry run project
```