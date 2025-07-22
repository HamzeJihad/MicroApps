import 'package:flutter/material.dart';
import '../../../../injection_container.dart';
import 'perfil_notifier.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({super.key});

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  final notifier = sl<PerfilNotifier>();

  @override
  void initState() {
    super.initState();
    notifier.loadProfile();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ValueListenableBuilder<bool>(
          valueListenable: notifier.loading,
          builder: (_, loading, __) {
            if (loading) return const CircularProgressIndicator();

            return ValueListenableBuilder<String?>(
              valueListenable: notifier.name,
              builder: (_, name, __) {
                return Text('Bem-vindo, $name');
              },
            );
          },
        ),
      ),
    );
  }
}
