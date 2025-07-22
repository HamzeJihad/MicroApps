import 'package:flutter/foundation.dart';
import '../domain/reset_password_usecase.dart';

class ResetPasswordNotifier extends ChangeNotifier {
  final ResetPasswordUsecase usecase;

  final ValueNotifier<bool> loading = ValueNotifier(false);
  final ValueNotifier<String?> error = ValueNotifier(null);

  ResetPasswordNotifier(this.usecase);

  Future<void> execute() async {
    loading.value = true;
    error.value = null;
    try {
      await usecase.execute();
    } catch (e) {
      error.value = e.toString();
    } finally {
      loading.value = false;
      notifyListeners();
    }
  }
}
