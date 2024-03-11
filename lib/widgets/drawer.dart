import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFFFF7171),
            Color(0xFFFF5050),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: ListView(
          padding: EdgeInsets.only(
            top: 40,
          ),
          children: <Widget>[
            ListTile(
              title: const Text(
                'Menu',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Home',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Startup Courses',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Mentors',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Trainings',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Pricing',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'About Us',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'FAQs',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
