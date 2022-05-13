import 'dart:ui';

import 'package:energyproject/view/page7.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page6 extends StatelessWidget {
  const Page6({Key? key}) : super(key: key);

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
                    'images/Menu.png',
                    scale: 2.1,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * 0.05, left: size.width * 0.02),
              child: SizedBox(
                  child: Text(
                'Appointment Set',
                style: TextStyle(color: Color(0xff85C48D), fontSize: 20),
              )),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
              top: size.height * 0.1, bottom: size.height * 0.1),
          child: Container(
            color: Color.fromARGB(255, 219, 238, 238),
            // height: size.height * 0.5,
            width: size.width * 0.8,
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
                        color: Color(0xff85C48D),
                        fontSize: 20,
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
                    top: size.height * 0.02, bottom: size.height * 0.02),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Charging time            ",
                      style: TextStyle(
                        color: Color(0xff85C48D),
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "2",
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
                    top: size.height * 0.02, bottom: size.height * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Charging Current",
                      style: TextStyle(
                        color: Color(0xff85C48D),
                      ),
                    ),
                    Text(
                      "30",
                      style: TextStyle(
                        color: Color(0xff2BB6C7),
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Color(0xff65AF85),
                    )
                  ],
                ),
              ),
            ]),
          ),
        ),
        Row(
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
                    "Cancel",
                    style: TextStyle(color: Color(0xff65AF85)),
                  ),
                  minWidth: size.width * 0.4,
                  onPressed: () {}),
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
              child: MaterialButton(
                  child: const Text(
                    "Confirm",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  minWidth: size.width * 0.4,
                  onPressed: () {
                    Get.to(() => Page7());
                  }),
            ),
          ],
        ),
      ],
    ));
  }
}
