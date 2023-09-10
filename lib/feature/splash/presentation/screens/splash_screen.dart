import 'dart:async';
import 'package:flutter/material.dart';
import 'package:asas/core/utils/assets_manager.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/routes/app_routes.dart';
import '../../../../core/utils/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;

  _goNext() {
    Get.offNamedUntil(
      Routes.homeRoute,
      (route) => false,
    );
    // _getStoreUser();
  }

  _startDelay() async {
    _timer = Timer(
      const Duration(seconds: 6),
      () async {
        // AuthModel model = await Preferences.instance.getUserModel();
        // Preferences.instance.clearUserData();
        // print(model.toJson());
        _goNext();
      },
    );
  }

  // _getStoreUser() async {
  // //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   // AuthModel authModel = await Preferences.instance.getUserModel();
  //
  //   if (prefs.getString(AppStrings.locale) != null) {
  //     if (prefs.getString('user') != null) {
  //       if (authModel.id == 0||authModel.id == null) {
  //         if (authModel.role == 'Company') {
  //           Get.offNamedUntil(
  //             Routes.completeRegisterRoute,
  //             (route) => false,
  //           );
  //         } else {
  //           Get.offNamedUntil(
  //             Routes.completeEmployeeRegisterRoute,
  //             (route) => false,
  //           );
  //         }
  //       } else {
  //         Get.offNamedUntil(
  //           Routes.navigationBottomRoute,
  //           (route) => false,
  //         );
  //       }
  //     } else {
  //       Get.offNamedUntil(
  //         Routes.chooseUserRoute,
  //         (route) => false,
  //       );
  //     }
  //   } else {
  //     Get.offNamed(
  //       Routes.chooseLanguageRoute,
  //     );
  //   }
  //
  //   // Navigator.pushReplacement(
  //   //   context,
  //   //   PageTransition(
  //   //     type: PageTransitionType.fade,
  //   //     alignment: Alignment.center,
  //   //     duration: const Duration(milliseconds: 1300),
  //   //     child: const ChooseLanguageScreen(),
  //   //   ),
  //   // );
  // }

  @override
  void initState() {
    super.initState();
    // context.read<RegisterCubit>().getCitiesData();
    _startDelay();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: AppColors.linearColors,
          ),
        ),
        child: Center(
          child: Hero(
            tag: 'logo',
            child: SizedBox(
              width: 500,
              height: 500,
              child: Lottie.asset('lottie/asas_loading.json'),
            ),
          ),
        ),
      ),
    );
  }
}
