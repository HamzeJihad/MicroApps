import 'package:flutter/foundation.dart';
import '../domain/treinos_usecase.dart';

class TreinosNotifier extends ChangeNotifier {
  final TreinosUsecase usecase;

  final ValueNotifier<bool> loading = ValueNotifier(false);
  final ValueNotifier<List<String>> treinos = ValueNotifier([]);
  final ValueNotifier<String?> error = ValueNotifier(null);

  TreinosNotifier(this.usecase);

  Future<void> fetchTreinos() async {
    loading.value = true;
    error.value = null;
    try {
      final result = await usecase();
      treinos.value = result;
    } catch (e) {
      error.value = e.toString();
    } finally {
      loading.value = false;
      notifyListeners();
    }
  }
}
