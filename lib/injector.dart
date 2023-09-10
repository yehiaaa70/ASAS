import 'package:asas/feature/splash/presentation/cubit/splash_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';


final serviceLocator = GetIt.instance;

Future<void> setup() async {
  //! Features

  ///////////////////////// Blocs ////////////////////////

  serviceLocator.registerFactory(
    () => SplashCubit(),
  );


  ///////////////////////////////////////////////////////////////////////////////

  //! External
  // Shared Preferences
  final sharedPreferences = await SharedPreferences.getInstance();
  serviceLocator.registerLazySingleton(() => sharedPreferences);

  // serviceLocator.registerLazySingleton(
  //   () => ServiceApi(
  //     serviceLocator(),
  //     serviceLocator(),
  //   ),
  // );

  // serviceLocator.registerLazySingleton<BaseApiConsumer>(
  //     () => DioConsumer(client: serviceLocator()));
  // serviceLocator.registerLazySingleton(() => AppInterceptors());

  // Dio
  // serviceLocator.registerLazySingleton(
  //   () => Dio(
  //     BaseOptions(
  //       contentType: "application/x-www-form-urlencoded",
  //       headers: {
  //         "Accept": "application/json",
  //         'Content-Type': 'application/x-www-form-urlencoded',
  //       },
  //     ),
  //   ),
  // );
  // serviceLocator.registerLazySingleton(
  //   () => LogInterceptor(
  //     request: true,
  //     requestBody: true,
  //     requestHeader: true,
  //     responseBody: true,
  //     responseHeader: true,
  //     error: true,
  //   ),
  // );
}
