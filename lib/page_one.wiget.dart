import 'package:flutter/material.dart';

class NewWidgetTwo extends StatelessWidget {
  final Color color;
  final String text1;
  final String text2;
  final String text3;
  final IconData icon;

  const NewWidgetTwo({
    super.key,
    required this.color,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 45,
          width: 42,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          child: Icon(icon),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text1,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
            ),
            Text(
              text2,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.w100),
            ),
          ],
        ),
        const Expanded(child: SizedBox()),
        Text(
          text3,
          style: const TextStyle(fontSize: 15, color: Colors.white),
        ),
      ],
    );
  }
}

class NewWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  const NewWidget({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.12,
      width: MediaQuery.of(context).size.width * 0.24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(255, 13, 10, 55),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(
          icon,
          color: Colors.white,
          size: 24,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          text,
          style: const TextStyle(
              color: Colors.white60, fontWeight: FontWeight.w500),
        )
      ]),
    );
  }
}
