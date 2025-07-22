import 'package:get_it/get_it.dart';
import 'data/register_data_source.dart';
import 'data/register_repository_impl.dart';
import 'domain/register_repository.dart';
import 'domain/register_usecase.dart';
import 'presentation/register_notifier.dart';

void setupRegisterModule(GetIt sl) {
  sl.registerLazySingleton(() => RegisterDataSource());
  sl.registerLazySingleton<RegisterRepository>(() => RegisterRepositoryImpl(sl()));
  sl.registerLazySingleton(() => RegisterUsecase(sl()));
  sl.registerFactory(() => RegisterNotifier(sl()));
}
