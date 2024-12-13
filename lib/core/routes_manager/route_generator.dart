import 'package:chat_app/core/routes_manager/routes.dart';
import 'package:chat_app/features/auth/presentation/login_screen.dart';
import 'package:flutter/material.dart';

import '../../features/auth/presentation/sign_up_screen.dart';
import '../../features/main_layout/main_layout.dart';
import '../../features/taps/home/presentation/home_screen.dart';
import '../../features/taps/posts/presentation/post_screen.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.signup:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.main:
        return MaterialPageRoute(builder: (_) => const MainLayout());
      case Routes.post:
        return MaterialPageRoute(builder: (_) => const PostScreen());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('No Route Found'),
        ),
        body: const Center(child: Text('No Route Found')),
      ),
    );
  }
}
