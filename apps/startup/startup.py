import environ

env = environ.Env(
    ADMIN_USERNAME=(str, 'admin'),
    ADMIN_PASSWORD=(str, 'admin')
)
environ.Env.read_env()


def startup_routine():
    from django.core.management import call_command
    call_command('makemigrations')
    call_command('migrate')
    call_command('collectstatic')
    from django.contrib.auth.models import User
    if not User.objects.filter(is_superuser=True).exists():
        User.objects.create_superuser(username=env('ADMIN_USERNAME'), password=env('ADMIN_PASSWORD'))
