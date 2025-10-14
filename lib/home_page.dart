import 'package:flutter/material.dart';
import 'package:weather_app/widgets/componentContainer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int currentDegree = 19;
    int highTemp = 24;
    int lowTemp = 18;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/image.png',
                ),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            SizedBox(
              height: 98,
            ),
            Column(
              children: [
                Text(
                  'Montreal',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "$currentDegree°",
                  style: TextStyle(
                    fontSize: 70,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Mostly Clear',
                  style: TextStyle(
                      color: Color(
                        0xffEBEBF5,
                      ),
                      fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'H:$highTemp°',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'L:$lowTemp°',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 410,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/house.png',
                    fit: BoxFit.cover,
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40)),
                        child: Container(
                          height: 280,
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 12),
                          decoration: BoxDecoration(
                            color: Color(0xff48319D).withOpacity(.12),
                            border: const Border(
                              top: BorderSide(
                                  color: Color(0x80FFFFFF), width: 1),
                            ),
                          ),
                          child: Column(
                            children: [
                              Text(
                                "Hourly Forcast",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              SizedBox(height: 12),
                              Container(
                                height: 120,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: ComponentContainer(
                                        time: '12 AM',
                                        imageUrl: 'assets/images/rain30.png',
                                        temp: '19',
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: ComponentContainer(
                                        time: 'Now',
                                        imageUrl: 'assets/images/rain.png',
                                        temp: '19',
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: ComponentContainer(
                                        time: '2 AM',
                                        imageUrl: 'assets/images/wind.png',
                                        temp: '18',
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: ComponentContainer(
                                        time: '3 AM',
                                        imageUrl: 'assets/images/rain.png',
                                        temp: '19',
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: ComponentContainer(
                                        time: '4 AM',
                                        imageUrl: 'assets/images/rain.png',
                                        temp: '19',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
