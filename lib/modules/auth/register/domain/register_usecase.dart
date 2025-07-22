import 'register_repository.dart';

class RegisterUsecase {
  final RegisterRepository repository;

  RegisterUsecase(this.repository);

  Future<bool> call(String name, String email, String password) {
    return repository.register(name, email, password);
  }
}
