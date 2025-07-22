import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../injection_container.dart';
import 'register_notifier.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final notifier = sl<RegisterNotifier>();

  @override
  void initState() {
    super.initState();

    notifier.success.addListener(() {
      if (notifier.success.value) {
        Modular.to.navigate('/auth/login');
      }
    });
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    notifier.success.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Nome'),
            ),
            const SizedBox(height: 12),
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
                          final name = nameController.text.trim();
                          final email = emailController.text.trim();
                          final password = passwordController.text.trim();
                          notifier.register(name, email, password);
                        },
                  child: loading
                      ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Text('Cadastrar'),
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
              onPressed: () => Modular.to.navigate('/auth/login'),
              child: const Text("Já tem conta? Entrar"),
            ),
          ],
        ),
      ),
    );
  }
}
