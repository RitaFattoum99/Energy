import 'package:energyproject/view/page6.dart';
import 'package:energyproject/view/HomeEV.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page7 extends StatelessWidget {
  const Page7({Key? key}) : super(key: key);

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
              'Holding Waiting to charge',
              style: TextStyle(color: Color(0xff2BB6C7), fontSize: 20),
            ),
            SizedBox(height: size.height * 0.01),
            Text(
              "Countdown :00:00:06",
              style: TextStyle(color: Color(0xff85C48D), fontSize: 15),
            )
          ]),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: size.height * 0.01,
            right: size.width * 0.35,
          ),
          child: Text(
            "Reservation Data",
            style: TextStyle(color: Color(0xff85C48D), fontSize: 20),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: size.height * 0.01,
          ),
          child: Container(
            color: Color(0xffdef7e1).withOpacity(0.3),
            width: size.width * 0.7,
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.02, bottom: size.height * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Start time",
                      style: TextStyle(
                        color: Color.fromARGB(255, 10, 10, 10),
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "2022-2-25  14:23",
                      style: TextStyle(
                        color: Color(0xff2BB6C7),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.01, bottom: size.height * 0.01),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Charging time",
                      style: TextStyle(
                        color: Color.fromARGB(255, 10, 10, 10),
                        fontSize: 15,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.15),
                      child: Text(
                        "2",
                        style: TextStyle(
                          color: Color(0xff2BB6C7),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.01, bottom: size.height * 0.01),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Charging Current",
                      style: TextStyle(
                        color: Color.fromARGB(255, 10, 10, 10),
                        fontSize: 15,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.07),
                      child: Text(
                        "30",
                        style: TextStyle(
                          color: Color(0xff2BB6C7),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: size.height * 0.03,
          ),
          child: Container(
            height: size.height * 0.06,
            width: size.width * 0.5,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xff65AF85),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: MaterialButton(
                child: const Text(
                  "Cancel",
                  style: TextStyle(fontSize: 15, color: Color(0xff65AF85)),
                ),
                onPressed: () {}),
          ),
        ),
      ],
    ));
  }
}
