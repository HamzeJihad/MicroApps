import 'package:flutter/material.dart';
import 'package:micro_front_ends/modules/dashboard/avaliacao_fisica/presentation/avaliacao_page.dart';
import 'package:micro_front_ends/modules/dashboard/perfil/presentation/perfil_page.dart';
import 'package:micro_front_ends/modules/dashboard/treinos/presentation/treinos_page.dart';

class DashboardHomePage extends StatefulWidget {
  const DashboardHomePage({super.key});

  @override
  State<DashboardHomePage> createState() => _DashboardHomePageState();
}

class _DashboardHomePageState extends State<DashboardHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    TreinosPage(),
    AvaliacaoPage(),
    PerfilPage(),
  ];

  final List<String> _titles = [
    'Treinos',
    'Avaliação Física',
    'Perfil',
  ];

  void _onItemTapped(int index) {
    if (index != _selectedIndex) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_selectedIndex]),
        centerTitle: true,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Treinos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics_outlined),
            label: 'Avaliação',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
