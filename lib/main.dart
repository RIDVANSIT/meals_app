import 'package:flutter/material.dart';
import 'package:meals_app/src/ui/pages/auth/login_page.dart';
import 'package:meals_app/src/ui/pages/auth/register_page.dart';
import 'package:meals_app/src/ui/pages/layouts/main_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const PageLogin(),
        '/register': (context) => const PageRegister(),
        '/main': (context) => const MainLayout(),
      },
    );
  }
}
