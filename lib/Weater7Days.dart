import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/widgets/customBottomSun.dart';
import 'package:weather_app/widgets/customImageCard7.dart';
import 'package:weather_app/widgets/customWInfo.dart';

class Weater7days extends StatelessWidget {
  const Weater7days({super.key});

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
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 94 * factorH,
            ),
            Text(
              'North America\nMax: 24°   Min:18°',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 24 * factorR,
                  color: Colors.white),
            ),
            SizedBox(
              height: 51 * factorH,
            ),
            Text(
              '7-Days Forecasts',
              style: GoogleFonts.openSans(
                  fontSize: 24 * factorR,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            SizedBox(
              height: 15 * factorH,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  SizedBox(
                    width: 14 * factorW,
                  ),
                  Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10 * factorW,
                  ),
                  Customimagecard7(
                    path: 'assets/images/rectangle_369.png',
                    child: Customwinfo(
                        temp: '19°C', path: 'assets/images/w1.png', day: 'Mon'),
                  ),
                  SizedBox(
                    width: 7 * factorW,
                  ),
                  Customimagecard7(
                    path: 'assets/images/rectangle_371.png',
                    child: Customwinfo(
                        temp: '18°C', path: 'assets/images/w2.png', day: 'Tue'),
                  ),
                  SizedBox(
                    width: 7 * factorW,
                  ),
                  Customimagecard7(
                    path: 'assets/images/rectangle_371.png',
                    child: Customwinfo(
                        temp: '18°C', path: 'assets/images/w2.png', day: 'Wed'),
                  ),
                  SizedBox(
                    width: 7 * factorW,
                  ),
                  Customimagecard7(
                    path: 'assets/images/rectangle_371.png',
                    child: Customwinfo(
                        temp: '19°C', path: 'assets/images/w2.png', day: 'Thu'),
                  ),
                  SizedBox(
                    width: 10 * factorW,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 14 * factorW,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32 * factorH,
            ),
            Container(
              height: 174 * factorH,
              width: 352 * factorW,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/rectangle_373.png'),
              )),
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: 29 * factorH, left: 26 * factorW),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/icon_crosshairs_.png',
                          width: 24 * factorW,
                          height: 24 * factorH,
                        ),
                        SizedBox(
                          width: 12 * factorW,
                        ),
                        Text(
                          'AIR QUALITY',
                          style: GoogleFonts.openSans(
                              fontSize: 16 * factorR,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 14 * factorH,
                  ),
                  Text(
                    '3-Low Health Risk',
                    style: GoogleFonts.openSans(
                        fontSize: 24 * factorR,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 18 * factorH,
                  ),
                  Image.asset(
                    'assets/images/line_2.png',
                    width: 308 * factorW,
                  ),
                  SizedBox(
                    height: 4 * factorH,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 28 * factorW,
                      ),
                      Text(
                        'See more',
                        style: GoogleFonts.openSans(
                            fontSize: 12 * factorR,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 14,
                      ),
                      SizedBox(
                        width: 28 * factorW,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40 * factorH,
            ),
            Padding(
              padding: EdgeInsets.only(left: 48 * factorW),
              child: Row(
                children: [
                  Custombottomsun(
                    title: 'SUNRISE',
                    time: "5:28 AM",
                    sunsetTime: 'Sunset: 7.25PM',
                  ),
                  SizedBox(
                    height: 12 * factorW,
                  ),
                  Custombottomsun(
                      title: 'UV INDEX', time: '4\nModerate', sunsetTime: " ")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
