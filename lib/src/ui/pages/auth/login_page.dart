import 'package:flutter/material.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: const Alignment(0.00, -1.00),
                end: const Alignment(0, 1),
                colors: [Colors.black, Colors.white.withOpacity(0)])),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/logo.png',
                  scale: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Container(
                  width: 350,
                  height: 47,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 2, color: Color(0xFFE23E3E)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 8, left: 150),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'e-mail',
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
                      side:
                          const BorderSide(width: 2, color: Color(0xFFE23E3E)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 8, left: 150),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'password',
                          border: UnderlineInputBorder(
                              borderSide: BorderSide.none)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.red,
                    shadowColor: Colors.black,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    minimumSize: const Size(350, 40), //////// HERE
                  ),
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/main', (route) => false);
                  },
                  child: const Text('Login'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.red,
                    shadowColor: Colors.black,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    minimumSize: const Size(350, 40), //////// HERE
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: const Text('Register'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
