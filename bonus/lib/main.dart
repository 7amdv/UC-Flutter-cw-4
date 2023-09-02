import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget prayerTime({required String name, required String time}) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            time,
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          SizedBox(
            width: 152,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 30, color: Colors.white),
          )
        ],
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 8, 37, 134),
            Colors.cyan,
          ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.mode_night, color: Colors.white),
                  SizedBox(width: 125),
                  Text(
                    "الكويت",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  SizedBox(width: 120),
                  Icon(Icons.settings, color: Colors.white),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "12:32",
                    style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Text(
                      "25",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 65,
              ),
              Text(
                "باقي على الأذان",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(bottom: 58),
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 8, 37, 134),
                  Colors.cyan,
                ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 73,
                          ),
                          Text(
                            "١ سبتمبر - ١٦ صفر",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      prayerTime(name: "الفجر", time: "4:03 AM"),
                      SizedBox(
                        height: 20,
                      ),
                      prayerTime(name: "الشروق", time: "5:25 AM"),
                      SizedBox(
                        height: 20,
                      ),
                      prayerTime(name: "الظهر", time: "11:48 AM"),
                      SizedBox(
                        height: 20,
                      ),
                      prayerTime(name: "العصر", time: "3:22 PM"),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          padding: EdgeInsets.all(7),
                          color: Color.fromARGB(255, 4, 60, 106),
                          child: prayerTime(name: "المغرب", time: "6:11 PM")),
                      SizedBox(
                        height: 20,
                      ),
                      prayerTime(name: "العشاء", time: "7:30 PM"),
                    ]),
              )
            ],
          )),
        ),
      ),
    );
  }
}
