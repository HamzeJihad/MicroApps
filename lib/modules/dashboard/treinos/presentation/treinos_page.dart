import 'package:flutter/material.dart';
import '../../../../injection_container.dart';
import 'treinos_notifier.dart';

class TreinosPage extends StatefulWidget {
  const TreinosPage({super.key});

  @override
  State<TreinosPage> createState() => _TreinosPageState();
}

class _TreinosPageState extends State<TreinosPage> {
  final notifier = sl<TreinosNotifier>();

  @override
  void initState() {
    super.initState();
    notifier.fetchTreinos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<bool>(
        valueListenable: notifier.loading,
        builder: (_, loading, __) {
          if (loading) {
            return const Center(child: CircularProgressIndicator());
          }

          return ValueListenableBuilder<List<String>>(
            valueListenable: notifier.treinos,
            builder: (_, treinos, __) {
              return ListView.builder(
                itemCount: treinos.length,
                itemBuilder: (_, index) => ListTile(
                  title: Text(treinos[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
