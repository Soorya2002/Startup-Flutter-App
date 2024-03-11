import 'package:flutter/material.dart';
import 'package:startup/widgets/custompainter.dart';
import 'package:startup/screens/homescreen.dart';

class SplashScreenB extends StatelessWidget {
  const SplashScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xffff7070),
            Color(0xffff4f4f),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Stack(
              children: [
                Image.asset(
                  'assets/rocket.png',
                  width: 402,
                  height: 403,
                ),
                Positioned(
                  top: 5,
                  left: 185,
                  child: Image.asset(
                    'assets/mooncloud.png',
                    width: 175,
                    height: 175,
                  ),
                ),
                Positioned(
                  top: 100,
                  right: 225,
                  child: Image.asset(
                    'assets/cloud.png',
                    width: 190,
                    height: 190,
                  ),
                ),
                Positioned(
                  top: 306,
                  left: 195,
                  child: Image.asset('assets/Vector 1.png'),
                ),
              ],
            ),
            const Spacer(),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              child: ClipPath(
                clipper: TwoSidedClipper(),
                child: Container(
                  width: 414,
                  height: 424,
                  color: Colors.white,
                  // decoration: const BoxDecoration(

                  //   borderRadius: BorderRadius.only(
                  //       topLeft: Radius.circular(40),
                  //       topRight: Radius.circular(40)),
                  // ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 55,
                      ),
                      const Text(
                        "Launch and Grow ",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const Text(
                        "your startup",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "The average company forecasts a growth",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF707A8D),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "178% in revenues for their first year, 100%",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF707A8D),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "for second, and 71% for third.",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF707A8D),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: 344,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xffff7070),
                            ),
                          ),
                          child: const Text(
                            'Get Started',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
