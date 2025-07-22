import 'avaliacao_repository.dart';

class AvaliacaoUsecase {
  final AvaliacaoRepository repository;

  AvaliacaoUsecase(this.repository);

  Future<String> call() {
    return repository.getUltimaAvaliacao();
  }
}
