import 'package:asas/app.dart';
import 'package:asas/feature/Home/presentation/screens/home_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:asas/injector.dart' as injector;
import 'dart:async';

import 'core/utils/restart_app_class.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await injector.setup();
  // Bloc.observer = AppBlocObserver();

  runApp(HotRestartController(child: Asas())
  );
}
