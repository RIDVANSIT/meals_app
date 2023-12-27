import 'package:flutter/material.dart';

class NavbarItemWelcomePage extends StatefulWidget {
  const NavbarItemWelcomePage({super.key});

  @override
  State<NavbarItemWelcomePage> createState() => _NavbarItemWelcomePageState();
}

class _NavbarItemWelcomePageState extends State<NavbarItemWelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Container(
              width: 350,
              height: 47,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                      width: 2, color: Color.fromARGB(255, 39, 38, 38)),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 8, left: 140),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'filtrele',
                      border:
                          UnderlineInputBorder(borderSide: BorderSide.none)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Container(
              width: 350,
              height: 47,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                      width: 2, color: Color.fromARGB(255, 39, 38, 38)),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 8, left: 140),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'arama',
                      border:
                          UnderlineInputBorder(borderSide: BorderSide.none)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
