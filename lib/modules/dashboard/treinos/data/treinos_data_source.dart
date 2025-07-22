class TreinosDataSource {
  Future<List<String>> getTreinos() async {
    await Future.delayed(const Duration(seconds: 1));
    return ['Treino A', 'Treino B', 'Treino C'];
  }
}
