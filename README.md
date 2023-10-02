# Pokeapp

Flutter Pokemon API showcase for Boticario

Bootstraped with Very Good CLI

---

## Base Architecture

![Architecture](https://bloclibrary.dev/_snippets/flutter_todos_tutorial/images/todos_architecture_light.png)

---

## Packages used

- **go_router**: Rotas com Navigator 2.0
- **Dio and Retrofit**: Simplificam o consumo de apis REST (generators)
- **flutter_gen**: evitar uso de assets via 'String-based APIs'
- **intl**: mesmo sendo 1 lingua, simplifica centralização de strings
- **equatable**
- **json_serializable / json_annotation**: generator que facilida criação de data classes

---


## Getting Started 🚀

This project contains 3 flavors:

- development
- staging
- production

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
$ flutter run --flavor development --target lib/main_development.dart

# Staging
$ flutter run --flavor staging --target lib/main_staging.dart

# Production
$ flutter run --flavor production --target lib/main_production.dart
```

_\*Pokeapp works on iOS, Android, and Web

---

## Running Tests 🧪

To run all unit and widget tests use the following command:

```sh
$ flutter test --coverage --test-randomize-ordering-seed random
```

To view the generated coverage report you can use [lcov](https://github.com/linux-test-project/lcov).

```sh
# Generate Coverage Report
$ genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
$ open coverage/index.html
```

---
