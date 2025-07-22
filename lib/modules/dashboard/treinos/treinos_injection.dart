import 'package:get_it/get_it.dart';
import 'data/treinos_data_source.dart';
import 'data/treinos_repository_impl.dart';
import 'domain/treinos_repository.dart';
import 'domain/treinos_usecase.dart';
import 'presentation/treinos_notifier.dart';

void setupTreinosModule(GetIt sl) {
  sl.registerLazySingleton(() => TreinosDataSource());
  sl.registerLazySingleton<TreinosRepository>(() => TreinosRepositoryImpl(sl()));
  sl.registerLazySingleton(() => TreinosUsecase(sl()));
  sl.registerFactory(() => TreinosNotifier(sl()));
}
