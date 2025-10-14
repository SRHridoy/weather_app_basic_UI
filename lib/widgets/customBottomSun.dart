import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Custombottomsun extends StatelessWidget {
  final String title;
  final String time;
  String? sunsetTime;
  Custombottomsun(
      {super.key, required this.title, required this.time, this.sunsetTime});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    const baseW = 428.0;
    const baseH = 926.0;

    final factorW = size.width / baseW;
    final factorH = size.height / baseH;
    final factorR = factorW < factorH ? factorW : factorH;
    return Container(
      height: 156 * factorH,
      width: 165 * factorW,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/rectangle_376.png'))),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: 21 * factorH, left: 6 * factorW, right: 6 * factorW),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/star_2.png',
                  height: 36 * factorH,
                  width: 36 * factorW,
                ),
                Text(
                  title,
                  style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 16 * factorR,
                      color: Colors.white),
                )
              ],
            ),
          ),
          SizedBox(
            height: 8 * factorH,
          ),
          Text(
            time,
            style: GoogleFonts.openSans(
                fontWeight: FontWeight.w600,
                fontSize: 18 * factorR,
                color: Colors.white),
          ),
          Text(
            sunsetTime!,
            style: GoogleFonts.openSans(
                fontSize: 12 * factorR, color: Colors.white),
          )
        ],
      ),
    );
  }
}
