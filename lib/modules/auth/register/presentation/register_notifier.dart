import 'package:flutter/foundation.dart';
import '../domain/register_usecase.dart';

class RegisterNotifier extends ChangeNotifier {
  final RegisterUsecase usecase;

  final ValueNotifier<bool> loading = ValueNotifier(false);
  final ValueNotifier<String?> error = ValueNotifier(null);
  final ValueNotifier<bool> success = ValueNotifier(false);

  RegisterNotifier(this.usecase);

  Future<void> register(String name, String email, String password) async {
    loading.value = true;
    error.value = null;
    try {
      final result = await usecase(name, email, password);
      success.value = result;
    } catch (e) {
      error.value = e.toString();
    } finally {
      loading.value = false;
      notifyListeners();
    }
  }
}
