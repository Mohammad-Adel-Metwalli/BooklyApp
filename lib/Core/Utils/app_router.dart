import 'package:go_router/go_router.dart';
import '../../Features/Home/Presentation/Views/home_view.dart';
import '../../Features/Presentation/Views/splash_view.dart';

abstract class AppRouter
{
  static final router = GoRouter(
      routes: [
        GoRoute(
            path: '/',
            builder: (context, state) => const SplashView()
        ),

        GoRoute(
            path: '/homeView',
            builder: (context, state) => const HomeView()
        )
      ]
  );
}