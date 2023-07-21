import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_task/presentation/screens/user/otp_screen.dart';

import '../../constants/strings.dart';
import '../screens/shared/splash_screen.dart';
import '../screens/user/help_screen.dart';
import '../screens/user/login_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
    case splashScreen:
      return MaterialPageRoute(
          builder: (_) => const SplashScreen()
      );

    case loginScreen:
      return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
      );

      case otpScreen:
        return MaterialPageRoute(
          builder: (_) => const OtpScreen(),
        );

      case helpScreen:
        return MaterialPageRoute(
          builder: (_) => const HelpScreen(),
        );
    }
  }
}