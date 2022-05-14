import 'package:energyproject/view/page5.dart';
import 'package:energyproject/view/page6.dart';
import 'package:energyproject/view/page8.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 20),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blueGrey.withOpacity(0.3),
                          spreadRadius: 6,
                          blurRadius: 3)
                    ],
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff85C48D),
                        Color(0xff2BB6C7),
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    )),
                child: Center(
                  child: Image.asset(
                    'images/drawer.png',
                    scale: 1.3,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * 0.09, left: size.width * 0.01),
              child: SizedBox(
                width: size.width * 0.18,
                height: size.height * 0.065,
                child: Image.asset('images/logo.png'),
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            top: size.height * 0.03,
            left: size.width * 0.35,
          ),
          child: Row(
            children: [
              SizedBox(
                width: size.width * 0.05,
                height: size.height * 0.05,
                child: Image.asset(
                  'images/station.png',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  '7654321',
                  style: TextStyle(color: Color(0xff85C48D), fontSize: 20),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: size.height * 0.001,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text(
              '(Device param : us single 40 A)',
              style: TextStyle(color: Color(0xff85C48D), fontSize: 15),
            ),
            Stack(children: [
              Image.asset(
                'images/startcharging.png',
                width: 175,
                height: 175,
                scale: 0.9,
              ),
              Positioned(
                top: 54,
                left: 45,
                child: RotationTransition(
                  turns: AlwaysStoppedAnimation(-1 / 360),
                  child: Image.asset(
                    'images/layer11.png',
                    scale: 2.8,
                  ),
                ),
              ),
            ]),
            Text(
              'Ready, Please start charging',
              style: TextStyle(color: Color(0xff2BB6C7), fontSize: 15),
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: size.height * 0.01,
            bottom: size.height * 0.02,
          ),
        ),
        Container(
          width: size.width * 0.8,
          height: size.height * 0.2,
          color: Color.fromARGB(255, 219, 238, 238),
          child: Padding(
            padding: EdgeInsets.only(
              top: size.height * 0.03,
            ),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Current",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            "0 A",
                            style: TextStyle(color: Color(0xff85C48D)),
                          ),
                        ],
                      ),
                      Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Voltage",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            "238.3 v",
                            style: TextStyle(color: Color(0xff85C48D)),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Power",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            "0 kw",
                            style: TextStyle(color: Color(0xff85C48D)),
                          ),
                        ],
                      ),
                    ]),
                SizedBox(
                  height: 15,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Charging Powert",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            "0.00 Kw.h",
                            style: TextStyle(color: Color(0xff85C48D)),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Charging Time",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            "0 min",
                            style: TextStyle(color: Color(0xff85C48D)),
                          ),
                        ],
                      ),
                    ]),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: size.height * 0.02, left: size.width * 0.001),
          child: Text(
            'Please set charging current (A) : 40',
            style: TextStyle(color: Color(0xff2BB6C7), fontSize: 15),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: size.height * 0.03,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff65AF85),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: MaterialButton(
                    child: const Text(
                      "Appointment Set",
                      style: TextStyle(color: Color(0xff65AF85)),
                    ),
                    onPressed: () {
                      Get.to(() => Page6());
                    }),
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blueGrey.withOpacity(0.2),
                        spreadRadius: 6,
                        blurRadius: 3)
                  ],
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [const Color(0xff2BB6C7), const Color(0xff65AF85)],
                  ),
                ),
                child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      shadowColor:
                          MaterialStateProperty.all(Colors.transparent),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    child: const Text(
                      "Start charging",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () {
                      Get.to(() => Page8());
                    }),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
