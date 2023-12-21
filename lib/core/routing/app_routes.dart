import 'package:flutter/material.dart';
import 'package:stock/core/routing/routing.dart';
import 'package:stock/features/home/home_screen.dart';
import 'package:stock/features/onbording/onbordingScreen.dart';

class AppRouter {
  Route genetateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routing.onBording:
        return MaterialPageRoute(
          builder: (_) => const OnBordingScreen(),
        );
      case Routing.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No HOME fot this ${settings.name}')),
          ),
        );
    }
  }
}
