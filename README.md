# capstone

## Структура

    mag-1-sa-capstone/
    ├── README.md
    ├── script.sh                 # Скрипт мониторинга
    ├── sample_output.txt         # Пример результатов
    ├── Dockerfile                # Docker-образ приложения
    ├── .dockerignore             # Исключения контекста сборки
    ├── .gitignore
    └── deploy/
        ├── nginx/
        │   └── my-app.conf       # Reverse proxy и HTTPS
        └── systemd/
            └── my-app.service    # Служба управления контейнером
