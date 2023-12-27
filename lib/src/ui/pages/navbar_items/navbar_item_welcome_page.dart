import 'package:flutter/material.dart';

class NavbarItemWelcomePage extends StatefulWidget {
  const NavbarItemWelcomePage({super.key});

  @override
  State<NavbarItemWelcomePage> createState() => _NavbarItemWelcomePageState();
}

class _NavbarItemWelcomePageState extends State<NavbarItemWelcomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: const Alignment(0.00, -1.00),
              end: const Alignment(0, 1),
              colors: [Colors.white, Colors.black.withOpacity(1)]),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
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
                          border: UnderlineInputBorder(
                              borderSide: BorderSide.none)),
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
                          border: UnderlineInputBorder(
                              borderSide: BorderSide.none)),
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/corba.png',
                        height: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/corba.png',
                        height: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/corba.png',
                        height: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/corba.png',
                        height: 200,
                      ),
                    )
                  ],
                ),
              ),
              const SingleChildScrollView(
                child: Row(children: []),
              )
            ],
          ),
        ),
      ),
    );
  }
}
