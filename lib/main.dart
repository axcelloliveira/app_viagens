import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:viagens_app/features/login/presentation/bindings/login_bindings.dart';
import 'package:viagens_app/features/menu/presentation/bindings/menu_bindings.dart';
import 'package:viagens_app/features/menu/presentation/pages/menu_page.dart';
import 'package:viagens_app/features/splash/presentation/bindings/splash_bindings.dart';
import 'package:viagens_app/features/splash/presentation/pages/splash_page.dart';

import 'features/login/presentation/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TSilveira Mobile',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      getPages: [
        GetPage(
          name: '/',
          page: ()=> SplashPage(),
          binding: SplashBindings(),
        ),
        GetPage(
          name: '/login',
          page: () => const LoginPage(),
          binding: LoginBindings(),
        ),
        GetPage(
            name: '/MenuPage',
            page:()=> const MenuPage(),
            binding: MenuBindings(),
        ),
      ],
    );
  }
}
