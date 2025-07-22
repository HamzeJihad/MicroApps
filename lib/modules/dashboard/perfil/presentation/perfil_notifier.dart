import 'package:flutter/foundation.dart';
import '../domain/perfil_usecase.dart';

class PerfilNotifier extends ChangeNotifier {
  final PerfilUsecase usecase;

  final ValueNotifier<String?> name = ValueNotifier(null);
  final ValueNotifier<bool> loading = ValueNotifier(false);

  PerfilNotifier(this.usecase);

  Future<void> loadProfile() async {
    loading.value = true;
    try {
      name.value = await usecase();
    } finally {
      loading.value = false;
      notifyListeners();
    }
  }
}
