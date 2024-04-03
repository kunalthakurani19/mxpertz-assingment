import 'package:app_design_mx/screens/home_page.dart';
import 'package:app_design_mx/screens/login_screen.dart';
import 'package:app_design_mx/screens/onbording_screen.dart';
import 'package:app_design_mx/screens/register_screen.dart';
import 'package:app_design_mx/screens/splash_screen.dart';
import 'package:app_design_mx/util/routes/routes_name.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //home and splash
      case RoutesName.splash:
        return MaterialPageRoute(builder: (BuildContext context) => const SplashScreen());
      case RoutesName.onbording:
        return MaterialPageRoute(builder: (BuildContext context) => const OnboardingScreen());
      case RoutesName.home:
        return MaterialPageRoute(builder: (BuildContext context) => const HomePage());

      //auth route
      case RoutesName.login:
        return MaterialPageRoute(builder: (BuildContext context) => const LoginScreen());
      case RoutesName.signup:
        return MaterialPageRoute(builder: (BuildContext context) => const SignUpScreen());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No Route Defined'),
            ),
          );
        });
    }
  }
}
