import 'package:flutter/foundation.dart';
import '../domain/avaliacao_usecase.dart';

class AvaliacaoNotifier extends ChangeNotifier {
  final AvaliacaoUsecase usecase;

  final ValueNotifier<String?> info = ValueNotifier(null);
  final ValueNotifier<bool> loading = ValueNotifier(false);

  AvaliacaoNotifier(this.usecase);

  Future<void> fetch() async {
    loading.value = true;
    try {
      info.value = await usecase();
    } finally {
      loading.value = false;
      notifyListeners();
    }
  }
}
