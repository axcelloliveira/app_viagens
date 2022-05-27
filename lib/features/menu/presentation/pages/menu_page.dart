import 'package:flutter/material.dart';
import 'package:viagens_app/features/custom_top_appbar/presentation/custom_top_appbar.dart';
import 'package:viagens_app/features/menu/presentation/pages/status_view.dart';
import '../../../custom_bottom_appbar/presentation/pages/custom_bottom_appbar3.dart';
import '../../../custom_drawer/presentation/pages/custom_drawer.dart';
import 'container_travels.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent[700],
      drawer: Drawer(
        child: CustomDrawer(selectedPage: 'menuPage',),
      ),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomTopAppBar(),
      ),
      bottomNavigationBar: CustomBottomAppBar3(),
      body: Column(
        children: [
          StatusView(),
          const SizedBox(height: 30),
          const ContainerTravels(),
        ],
      ),
    );
  }
}
