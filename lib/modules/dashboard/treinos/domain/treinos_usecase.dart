import 'treinos_repository.dart';

class TreinosUsecase {
  final TreinosRepository repository;

  TreinosUsecase(this.repository);

  Future<List<String>> call() {
    return repository.fetchTreinos();
  }
}
