import 'package:flutter/material.dart';

class ComponentContainer extends StatelessWidget {
  final String time;
  final String imageUrl;
  final String temp;
  const ComponentContainer(
      {super.key,
      required this.time,
      required this.imageUrl,
      required this.temp});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Color(0xff898993)),
          color: Color(0xff3D2C79).withOpacity(.8)),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(time,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 11)),
            Image.asset(
              imageUrl,
              width: 28,
              height: 28,
              fit: BoxFit.contain,
            ),
            Text(
              '$temp°',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 11),
            )
          ],
        ),
      ),
    );
  }
}
