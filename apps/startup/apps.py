from django.apps import AppConfig


class StartupConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'apps.startup'

    def ready(self):
        from .startup import startup_routine
        startup_routine()
