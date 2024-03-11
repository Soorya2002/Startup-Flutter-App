import 'package:flutter/material.dart';
import 'package:startup/screens/profile.dart';

import 'package:startup/widgets/coursecontainer.dart';
import 'package:startup/widgets/drawer.dart';
import 'package:startup/widgets/mentorcontainer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: AppBar(
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                );
              },
            ),
            title: const Text(
              "Hi, Akash 👋",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            actions: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen(),
                        ),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(140),
                      child: Image.asset(
                        'assets/pro.gif',
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  )
                ],
              ),
            ],
            backgroundColor: const Color(0xfff5f8ff),
          ),
        ),
      ),
      drawer: MenuDrawer(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Find your favorite startup \ncourse here",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 305,
                  height: 48,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Search course',
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(77, 66, 62, 62),
                      ),
                      prefixIcon: const Icon(Icons.search),
                      prefixIconColor: const Color.fromARGB(77, 66, 62, 62),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xffff7070), Color(0xffff4f4f)],
                      ),
                    ),
                    child: Image.asset('assets/feather_sliders.png'))
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "My Courses",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: 180,
                ),
                Text(
                  "View All",
                  style: TextStyle(
                    color: Color(0xffFF5050),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CourseContainer(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xffffac70), Color(0xffff844f)],
                    ),
                    imagepath: 'assets/avator.png',
                    height: 35,
                    text: 'Finding Co-Founder in \nearly days',
                    imagepath2: 'assets/Ellipse 3.png',
                    text2: 'Ankur Warikoo',
                  ),
                  CourseContainer(
                    imagepath: 'assets/test.png',
                    height: 35,
                    text: 'Getting first seed \nfunding checklist',
                    imagepath2: 'assets/Ellipse 3.png',
                    text2: 'Ankur Warikoo',
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Color(0xff02aab0), Color(0xff00cdac)],
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Courses by Mentors",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  MentorContainer(
                    imagepath: 'assets/ellipse 4.png',
                    text1: 'Ankur Warikoo',
                    text2: 'Founder Nearby | Mentor',
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                      colors: [
                        Color(0xff0052d4),
                        Color(0xff4364f7),
                        Color(0xff6fb1fc)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  MentorContainer(
                    imagepath: 'assets/ellipse 5.png',
                    text1: 'Kunal Shah',
                    text2: 'Founder CRED',
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                      colors: [
                        Colors.black,
                        Color(0xff2d2c2c),
                        Color(0xff626262)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
