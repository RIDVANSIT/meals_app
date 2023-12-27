import 'package:flutter/material.dart';

class PageRegister extends StatefulWidget {
  const PageRegister({super.key});

  @override
  State<PageRegister> createState() => _PageRegisterState();
}

class _PageRegisterState extends State<PageRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: SafeArea(
      //   child: Column(
      //     children: [
      //       Center(
      //         child: TextButton(
      //           child: const Text('Register'),
      //           onPressed: () {
      //             Navigator.pushNamedAndRemoveUntil(
      //                 context, '/main', (route) => false);
      //           },
      //         ),
      //       ),
      //       const SizedBox(height: 10),
      //       Center(
      //         child: TextButton(
      //           child: const Text('Go back'),
      //           onPressed: () {
      //             Navigator.pop(context);
      //           },
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      appBar: AppBar(),
      body: Padding(
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
                    side: const BorderSide(width: 2, color: Color(0xFFE23E3E)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 8, left: 140),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'name',
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
                    side: const BorderSide(width: 2, color: Color(0xFFE23E3E)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 8, left: 140),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'e-mail',
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
                    side: const BorderSide(width: 2, color: Color(0xFFE23E3E)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 8, left: 140),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'password',
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none)),
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
                child: const Text('Register'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
