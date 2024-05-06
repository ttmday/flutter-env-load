# Carga de Environments

![Como cargar Environments](./assets/Como%20cargar%20Enviroments%20en%20Flutter.png)

```bash
# Debug mode

flutter run -d <Device_id> --dart-define-from-file=.env

```

```bash

# Release Apk mode

flutter build apk --split-per-abi --dart-define-from-file=.env

```
