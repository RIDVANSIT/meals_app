import 'package:flutter/material.dart';

class NavbarItemMyMealsPage extends StatefulWidget {
  const NavbarItemMyMealsPage({super.key});

  @override
  State<NavbarItemMyMealsPage> createState() => _NavbarItemMyMealsPageState();
}

class _NavbarItemMyMealsPageState extends State<NavbarItemMyMealsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/myrback.jpg"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            centerTitle: true,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.black,
            child: const Icon(
              Icons.plus_one,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
