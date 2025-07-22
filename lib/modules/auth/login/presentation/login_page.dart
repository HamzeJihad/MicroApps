import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../injection_container.dart';
import 'login_notifier.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final notifier = sl<LoginNotifier>(); 
  @override
  void initState() {
    super.initState();

    notifier.success.addListener(() {
      if (notifier.success.value) {
        Modular.to.navigate('/dashboard/');
      }
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    notifier.success.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Senha'),
            ),
            const SizedBox(height: 20),
            ValueListenableBuilder<bool>(
              valueListenable: notifier.loading,
              builder: (_, loading, __) {
                return ElevatedButton(
                  onPressed: loading
                      ? null
                      : () {
                          final email = emailController.text.trim();
                          final password = passwordController.text.trim();
                          notifier.login(email, password);
                        },
                  child: loading
                      ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Text('Entrar'),
                );
              },
            ),
            const SizedBox(height: 16),
            ValueListenableBuilder<String?>(
              valueListenable: notifier.error,
              builder: (_, error, __) {
                if (error == null) return const SizedBox();
                return Text(error, style: const TextStyle(color: Colors.red));
              },
            ),
            const SizedBox(height: 24),

            TextButton(
              onPressed: () => Modular.to.pushNamed('/auth/register'),
              child: const Text("Não tem conta? Cadastre-se"),
            ),
          ],
        ),
      ),
    );
  }
}
