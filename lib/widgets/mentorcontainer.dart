import 'package:flutter/material.dart';

class MentorContainer extends StatelessWidget {
  final String imagepath;
  final String text1;
  final String text2;
  final LinearGradient gradient;

  const MentorContainer({
    super.key,
    required this.imagepath,
    required this.text1,
    required this.text2,
    required this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 261,
      height: 72,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: gradient,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 15,
          ),
          Image.asset(imagepath),
          SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text1,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                text2,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
