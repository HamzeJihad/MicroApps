import 'perfil_repository.dart';

class PerfilUsecase {
  final PerfilRepository repository;

  PerfilUsecase(this.repository);

  Future<String> call() {
    return repository.getUserName();
  }
}
