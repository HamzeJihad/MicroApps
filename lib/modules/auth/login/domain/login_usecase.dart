import 'login_repository.dart';

class LoginUsecase {
  final LoginRepository repository;

  LoginUsecase(this.repository);

  Future<bool> call(String email, String password) {
    return repository.doLogin(email, password);
  }
}
