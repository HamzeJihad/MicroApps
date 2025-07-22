import 'package:get_it/get_it.dart';
import 'data/perfil_data_source.dart';
import 'data/perfil_repository_impl.dart';
import 'domain/perfil_repository.dart';
import 'domain/perfil_usecase.dart';
import 'presentation/perfil_notifier.dart';

void setupPerfilModule(GetIt sl) {
  sl.registerLazySingleton(() => PerfilDataSource());
  sl.registerLazySingleton<PerfilRepository>(() => PerfilRepositoryImpl(sl()));
  sl.registerLazySingleton(() => PerfilUsecase(sl()));
  sl.registerFactory(() => PerfilNotifier(sl()));
}
