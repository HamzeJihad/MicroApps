import 'package:flutter/material.dart';
import '../../../../injection_container.dart';
import 'avaliacao_notifier.dart';

class AvaliacaoPage extends StatefulWidget {
  const AvaliacaoPage({super.key});

  @override
  State<AvaliacaoPage> createState() => _AvaliacaoPageState();
}

class _AvaliacaoPageState extends State<AvaliacaoPage> {
  final notifier = sl<AvaliacaoNotifier>();

  @override
  void initState() {
    super.initState();
    notifier.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ValueListenableBuilder<String?>(
          valueListenable: notifier.info,
          builder: (_, info, __) {
            return info != null
                ? Text(info)
                : const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
