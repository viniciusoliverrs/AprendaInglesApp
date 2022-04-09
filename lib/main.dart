import 'package:aprenda_ingles/pages/bichos_page.dart';
import 'package:aprenda_ingles/pages/numeros_page.dart';
import 'package:aprenda_ingles/pages/vogais_dart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Navegacao(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xfff5e9b9),
        primaryColor: const Color(0xff795548),
      ),
    ),
  );
}

class Navegacao extends StatefulWidget {
  const Navegacao({Key? key}) : super(key: key);

  @override
  State<Navegacao> createState() => _NavegacaoState();
}

class _NavegacaoState extends State<Navegacao>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: const Text("Aprenda inglês"),
        bottom: TabBar(
          indicatorWeight: 4,
          indicatorColor: Colors.white,
          labelStyle:
              const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          //labelColor: Colors.green,
          //unselectedLabelColor: Colors.purple,
          controller: _tabController,
          tabs: const [
            Tab(
              text: "Bichos",
            ),
            Tab(
              text: "Números",
            ),
            Tab(
              text: "Vogais",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          BichosPage(),
          NumerosPage(),
          VogaisPage(),
        ],
      ),
    );
  }
}
