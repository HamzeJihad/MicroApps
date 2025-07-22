import 'package:get_it/get_it.dart';
import 'data/login_data_source.dart';
import 'data/login_repository_impl.dart';
import 'domain/login_repository.dart';
import 'domain/login_usecase.dart';
import 'presentation/login_notifier.dart';

void setupLoginModule(GetIt sl) {
  sl.registerLazySingleton(() => LoginDataSource());
  sl.registerLazySingleton<LoginRepository>(() => LoginRepositoryImpl(sl()));
  sl.registerLazySingleton(() => LoginUsecase(sl()));
  sl.registerFactory(() => LoginNotifier(sl()));
}
