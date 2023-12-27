import 'package:flutter/material.dart';
import 'package:meals_app/src/ui/pages/navbar_items/navbar_item_my_meals_page.dart';
import 'package:meals_app/src/ui/pages/navbar_items/navbar_item_recomended_meals_page.dart';
import 'package:meals_app/src/ui/pages/navbar_items/navbar_item_settings_screen.dart';
import 'package:meals_app/src/ui/pages/navbar_items/navbar_item_welcome_page.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const NavbarItemWelcomePage(),
    const HomePage(),
    const NavbarItemMyMealsPage(),
    const NavbarItemSettingsPage(),
  ];

  void _onNavbarTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          showUnselectedLabels: true,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.white,
          // backgroundColor: Colors.grey,
          currentIndex: _selectedIndex,
          onTap: _onNavbarTapped,
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.soup_kitchen,
              ),
              label: 'Recomended meals',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.plus_one),
              label: 'My meals',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
