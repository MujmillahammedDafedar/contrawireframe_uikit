import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mysocial/ui/views/login.dart';
import 'package:mysocial/ui/views/next_slider.dart';
import 'package:mysocial/ui/views/onboardingScreen.dart';
import 'package:mysocial/ui/views/splashscreen.dart';
import 'package:mysocial/utils/constant/route_path.dart';

dynamic animateRoute(Widget routeName) {
  return Platform.isIOS
      ? MaterialPageRoute(builder: (_) => routeName)
      : PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => routeName,
          transitionDuration: Duration(milliseconds: 600),
          reverseTransitionDuration: Duration(milliseconds: 600),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var begin = Offset(0.0, 1.0);
            var end = Offset.zero;
            var curve = Curves.ease;
            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        );
}

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.Splash:
        return animateRoute(SplashScreen());
      case RoutePaths.Slider:
        return animateRoute(OnBoarding());
      case RoutePaths.Onboard:
        return animateRoute(OnBoardingScreen());
      case RoutePaths.Login:
        return animateRoute(Login());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
