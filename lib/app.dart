import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:get/get.dart';
import 'core/routes/app_routes.dart';
import 'core/utils/app_strings.dart';
import 'package:asas/injector.dart' as injector;

import 'core/utils/authentication.dart';
import 'core/utils/theme_data.dart';
import 'feature/splash/presentation/cubit/splash_cubit.dart';

class Asas extends StatefulWidget {
  const Asas({Key? key}) : super(key: key);

  @override
  State<Asas> createState() => _AsasState();
}

class _AsasState extends State<Asas> {
  Future getUserInfo() async {
    await getUser();
    setState(() {});
    print(uid);
  }


  @override
  void initState() {
    getUserInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Preferences.instance.savedLang(
    //   EasyLocalization.of(context)!.locale.languageCode,
    // );
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => injector.serviceLocator<SplashCubit>(),
        ),
      ],
      child: GetMaterialApp(
        theme: lightThemeData,
        darkTheme: darkThemeData,
        // supportedLocales: context.supportedLocales,
        // locale: context.locale,
        // localizationsDelegates: context.localizationDelegates,
        debugShowCheckedModeBanner: false,
        title: AppStrings.appName,
        // themeMode: EasyDynamicTheme.of(context).themeMode,
        onGenerateRoute: AppRoutes.onGenerateRoute,
      ),
    );
  }
}
