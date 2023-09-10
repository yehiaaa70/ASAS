import 'package:asas/feature/Home/presentation/screens/home_page.dart';
import 'package:flutter/material.dart';
import '../utils/app_strings.dart';
import '../../feature/splash/presentation/screens/splash_screen.dart';

class Routes {
  static const String initialRoute = '/';
  static const String homeRoute = '/homePage';
  // static const String chooseLanguageRoute = '/chooseLanguage';
  // static const String chooseUserRoute = '/chooseUser';
  // static const String loginScreenRoute = '/loginScreen';
  // static const String registerScreenRoute = '/registerScreen';
  // static const String forgetScreenRoute = '/forgetScreen';
  // static const String otpScreenRoute = '/otpScreen';
  // static const String newPasswordScreenRoute = '/newPasswordScreen';
  // static const String navigationBottomRoute = '/navigationBottom';
  // static const String completeRegisterRoute = '/completeRegister';
  // static const String completeEmployeeRegisterRoute = '/completeEmployeeRegister';
}

class AppRoutes {
  static String route = '';

  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
        case Routes.homeRoute:
        return MaterialPageRoute(
          builder: (context) =>  HomePage(),
        );
      // case Routes.registerScreenRoute:
      //   return MaterialPageRoute(
      //     builder: (context) => RegisterScreen(),
      //   );
      // case Routes.forgetScreenRoute:
      //   return MaterialPageRoute(
      //     builder: (context) => ForgetPasswordScreen(),
      //   );
      // case Routes.otpScreenRoute:
      //   return MaterialPageRoute(
      //     builder: (context) => OTPScreen(),
      //   );
      // case Routes.newPasswordScreenRoute:
      //   return MaterialPageRoute(
      //     builder: (context) => NewPasswordScreen(),
      //   );
      // case Routes.navigationBottomRoute:
      //   return PageRouteBuilder(
      //     // builder: (context) => const ChooseUserScreen(),
      //     pageBuilder: (BuildContext context, Animation<double> animation,
      //             Animation<double> secondaryAnimation) =>
      //         const NavigationBottom(),
      //     transitionDuration: const Duration(milliseconds: 1000),
      //     transitionsBuilder: (_, a, __, c) =>
      //         FadeTransition(opacity: a, child: c),
      //   );
      // case Routes.chooseUserRoute:
      //   return PageRouteBuilder(
      //     // builder: (context) => const ChooseUserScreen(),
      //     pageBuilder: (BuildContext context, Animation<double> animation,
      //             Animation<double> secondaryAnimation) =>
      //         const ChooseUserScreen(),
      //     transitionDuration: const Duration(milliseconds: 1000),
      //     transitionsBuilder: (_, a, __, c) =>
      //         FadeTransition(opacity: a, child: c),
      //   );
      // case Routes.chooseLanguageRoute:
      //   return PageRouteBuilder(
      //     // builder: (context) => const ChooseUserScreen(),
      //     pageBuilder: (BuildContext context, Animation<double> animation,
      //             Animation<double> secondaryAnimation) =>
      //         const ChooseLanguageScreen(),
      //     transitionDuration: const Duration(milliseconds: 1000),
      //     transitionsBuilder: (_, a, __, c) =>
      //         FadeTransition(opacity: a, child: c),
      //   );
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text(AppStrings.noRouteFound),
        ),
      ),
    );
  }
}
