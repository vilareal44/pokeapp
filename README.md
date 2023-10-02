# Pokeapp

Flutter Pokemon API showcase for Boticario

Bootstraped with Very Good CLI

---

## Base Architecture

![Architecture](https://bloclibrary.dev/_snippets/flutter_todos_tutorial/images/todos_architecture_light.png)

---

## Packages used

- **go_router**: Routes with Navigator 2.0
- **Dio and Retrofit**: Simplify use of REST apis (generators)
- **flutter_gen**: Avoid use of assets via 'String-based APIs'
- **intl**: Centralize strings and prepare for localization 
- **json_serializable / json_annotation**: Build systen for handling JSON
- **equatable**: Helps to implement value based equality

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

*Pokeapp works on iOS, Android, and Web

---

