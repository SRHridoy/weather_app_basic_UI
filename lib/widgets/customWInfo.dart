import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Customwinfo extends StatelessWidget {
  final String temp;
  final String path;
  final String day;
  const Customwinfo(
      {super.key, required this.temp, required this.path, required this.day});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    const baseW = 428.0;
    const baseH = 926.0;
    final factorW = size.width / baseW;
    final factorH = size.height / baseH;
    final factorR = factorW < factorH ? factorW : factorH;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            temp,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 20 * factorR,
                color: Colors.white),
          ),
          Image.asset(
            path,
            width: 66 * factorW,
            height: 66 * factorH,
          ),
          SizedBox(
            height: 5 * factorH,
          ),
          Text(
            day,
            style: GoogleFonts.poppins(
                fontSize: 20 * factorR,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          )
        ],
      ),
    );
  }
}
