class PerfilDataSource {
  Future<String> fetchUserName() async {
    await Future.delayed(const Duration(milliseconds: 800));
    return 'Hamze Jihad';
  }
}
