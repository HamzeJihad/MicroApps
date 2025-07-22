import 'reset_password_repository.dart';

class ResetPasswordUsecase {
  final ResetPasswordRepository repository;

  ResetPasswordUsecase(this.repository);

  Future<void> execute() => repository.resetPassword();
}
