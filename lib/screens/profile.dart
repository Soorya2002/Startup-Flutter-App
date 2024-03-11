import 'package:flutter/material.dart';

import 'package:startup/widgets/coursecontainer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Positioned(
                child: Container(
                  width: 828,
                  height: 468,
                ),
              ),
              Positioned(
                child: Image.asset(
                  'assets/Rectangle 264.png',
                  colorBlendMode: BlendMode.colorBurn,
                  color: Color.fromARGB(85, 96, 125, 139),
                ),
              ),
              Positioned(
                top: 60,
                left: 25,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset('assets/feather_arrow-left.png'),
                ),
              ),
              const Positioned(
                top: 60,
                left: 70,
                child: Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                top: 133,
                left: 88,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(140),
                  child: Image.asset(
                    'assets/pro2.gif',
                    width: 232,
                    height: 232,
                  ),
                ),
              ),
              const Positioned(
                top: 375,
                left: 120,
                child: Text(
                  "Akash Solanki",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const Positioned(
                top: 408,
                left: 138,
                child: Text(
                  "@antivirusakash",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF707A8D),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                top: 450,
                child: Container(
                  width: 828,
                  height: 1,
                  color: Color(0xFFDEE8FB),
                ),
              ),
            ],
          ),
          // SizedBox(
          //   height: 5,
          // ),
          const Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text(
                "Completed Courses",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 118,
              ),
              Text(
                "View All",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFFFF5050),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CourseContainer(
                  imagepath: 'assets/Billy 31.png',
                  height: 0,
                  text: 'Growing Startup without \nSales Team',
                  imagepath2: 'assets/kunal.png',
                  text2: 'Kunal Shah',
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xff7ca4e8), Color(0xff517ccd)],
                  ),
                ),
                CourseContainer(
                  height: 0,
                  imagepath: 'assets/Billy 65.png',
                  text: 'Find Powerful Tips for \nWealth & Success',
                  imagepath2: 'assets/kunal.png',
                  text2: 'Kunal Shah',
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Color(0xff605780), Color(0xff909ab8)],
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
