class LoginDataSource {
  Future<bool> login(String email, String password) async {
    await Future.delayed(const Duration(seconds: 2));
    if (email == 'admin@example.com' && password == '123456') {
      return true;
    } else {
      throw Exception('Credenciais inválidas');
    }
  }
}
