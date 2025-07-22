import 'package:flutter/foundation.dart';
import '../domain/login_usecase.dart';

class LoginNotifier extends ChangeNotifier {
  final LoginUsecase usecase;

  final ValueNotifier<bool> loading = ValueNotifier(false);
  final ValueNotifier<String?> error = ValueNotifier(null);
  final ValueNotifier<bool> success = ValueNotifier(false);

  LoginNotifier(this.usecase);

  Future<void> login(String email, String password) async {
    loading.value = true;
    error.value = null;
    try {
      final result = await usecase(email, password);
      success.value = result;
    } catch (e) {
      error.value = e.toString();
    } finally {
      loading.value = false;
      notifyListeners();
    }
  }
}
