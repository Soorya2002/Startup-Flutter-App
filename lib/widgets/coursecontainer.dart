import 'package:flutter/material.dart';

class CourseContainer extends StatelessWidget {
  final String imagepath;
  final String imagepath2;
  final String text;
  final String text2;
  final LinearGradient gradient;
  final double height;

  const CourseContainer(
      {super.key,
      required this.imagepath,
      required this.text,
      required this.text2,
      required this.imagepath2,
      required this.gradient,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25,
      ),
      child: Container(
        width: 261,
        height: 330,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: gradient,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              top: height,
              left: 40,
              child: Image.asset(imagepath),
            ),
            Positioned(
              bottom: 280,
              left: 200,
              child: Icon(
                Icons.play_circle_fill,
                color: Colors.white,
                size: 40,
              ),
            ),
            Positioned(
              bottom: 50,
              left: 15,
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              bottom: 15,
              left: 15,
              child: Row(
                children: [
                  Image.asset(imagepath2),
                  const SizedBox(width: 5),
                  Text(
                    text2,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
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
