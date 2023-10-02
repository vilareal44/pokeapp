// GoRouter configuration
import 'package:go_router/go_router.dart';
import 'package:pokeapp/home/view/home_page.dart';

final router = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
  ],
);
