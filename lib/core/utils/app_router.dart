import 'package:bookly_app/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../Features/splash/splash_view.dart';

abstract class AppRouter{

  static const KHomeView = '/homeView';
  static const KBookDetailsView = '/bookDetailsView';
 static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) =>const SplashView(),
      ),
      GoRoute(
        path: KHomeView,
        builder: (context, state) =>const HomeView(),
      ),
      GoRoute(
        path: KBookDetailsView,
        builder: (context, state) =>const BookDetailsView(),
      ),
    ],
  );
}