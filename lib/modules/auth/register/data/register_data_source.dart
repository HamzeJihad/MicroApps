class RegisterDataSource {
  Future<bool> register(String name, String email, String password) async {
    await Future.delayed(const Duration(seconds: 2));
    if (email.contains('@')) {
      return true;
    } else {
      throw Exception('Email inválido');
    }
  }
}
