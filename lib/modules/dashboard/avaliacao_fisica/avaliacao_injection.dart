import 'package:get_it/get_it.dart';
import 'data/avaliacao_data_source.dart';
import 'data/avaliacao_repository_impl.dart';
import 'domain/avaliacao_repository.dart';
import 'domain/avaliacao_usecase.dart';
import 'presentation/avaliacao_notifier.dart';

void setupAvaliacaoModule(GetIt sl) {
  sl.registerLazySingleton(() => AvaliacaoDataSource());
  sl.registerLazySingleton<AvaliacaoRepository>(() => AvaliacaoRepositoryImpl(sl()));
  sl.registerLazySingleton(() => AvaliacaoUsecase(sl()));
  sl.registerFactory(() => AvaliacaoNotifier(sl()));
}
