import 'package:get_it/get_it.dart';
import 'package:send_log/featuers/login/data/repos/auth_repo.dart';
import 'package:send_log/featuers/login/presentation/cubit/login_cubit.dart';

final GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerLazySingleton<AuthRepo>(() => AuthRepo());

  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<AuthRepo>()));
}
