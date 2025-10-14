import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    const baseW = 428.0;
    const baseH = 926.0;

    final factorW = size.width / baseW;
    final factorH = size.height / baseH;
    final factorR = factorW < factorH ? factorW : factorH;
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg.jpg'), fit: BoxFit.cover)),
        child: Column(
          children: [
            Image.asset(
              'assets/images/w1.png',
              width: 428 * factorW,
              height: 428 * factorH,
            ),
            SizedBox(
              height: 51 * factorH,
            ),
            Text(
              'Weather',
              style: GoogleFonts.openSans(
                  fontSize: 42 * factorR,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'ForeCasts',
              style: GoogleFonts.openSans(
                  fontSize: 42 * factorR,
                  color: Color(0xffDDB031),
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 53 * factorH,
            ),
            Container(
              padding: EdgeInsets.only(left: 50 * factorW, right: 50 * factorW),
              height: 70 * factorH,
              width: 300 * factorW,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffDDB031),
                  ),
                  onPressed: () {
                    Timer(const Duration(seconds: 2), () {
                      Navigator.pushReplacementNamed(context, '/weather7');
                    });
                  },
                  child: Text(
                    'Get Start',
                    style: GoogleFonts.openSans(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff362A84)),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
