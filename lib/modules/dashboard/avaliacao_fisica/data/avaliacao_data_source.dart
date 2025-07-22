class AvaliacaoDataSource {
  Future<String> getInfo() async {
    await Future.delayed(const Duration(seconds: 3));
    return 'Última avaliação: 05/07/2025';
  }
}
