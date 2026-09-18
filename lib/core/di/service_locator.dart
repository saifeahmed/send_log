import 'package:get_it/get_it.dart';
import 'package:send_log/featuers/login/data/repos/auth_repo.dart';
import 'package:send_log/featuers/login/presentation/cubit/login_cubit.dart';

final GetIt getIt = GetIt.instance;

/// Registers every dependency once, at app startup.
///
/// Call this from `main()` before `runApp`. Screens then pull what they
/// need via `getIt<T>()` instead of constructing it themselves.
void setupServiceLocator() {
  // Data layer
  getIt.registerLazySingleton<AuthRepo>(() => AuthRepo());

  // Presentation logic — new instance per screen, so state resets
  // every time the login screen is opened.
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<AuthRepo>()));
}
