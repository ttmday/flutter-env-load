# Carga de Environments

![Como cargar Environments](./assets/como_cargar_enviroments_en_flutter.png)

```bash
# Debug mode

flutter run -d <Device_id> --dart-define-from-file=.env

```

```bash

# Release Apk mode

flutter build apk --split-per-abi --dart-define-from-file=.env

```
