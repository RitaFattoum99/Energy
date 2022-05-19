import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Bluetooth.dart';

class AddDevice extends StatelessWidget {
  const AddDevice({Key? key}) : super(key: key);

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
                padding: EdgeInsets.only(left: size.width * 0.03),
                child: Text(
                  'Unavatilable',
                  style: TextStyle(color: Color(0xff85C48D), fontSize: 15),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: size.height * 0.01,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: size.width * 0.35,
                height: size.height * 0.35,
                child: Image.asset(
                  'images/phone.png',
                ),
              ),
              SizedBox(
                width: size.width * 0.1,
                height: size.height * 0.1,
                child: Image.asset(
                  'images/link.png',
                ),
              ),
              SizedBox(
                width: size.width * 0.35,
                height: size.height * 0.35,
                child: Image.asset(
                  'images/station2.png',
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: size.height * 0.1,
          ),
          child: Container(
            width: size.width * 0.7,
            height: size.height * 0.1,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey.withOpacity(0.3),
                  spreadRadius: 4,
                  blurRadius: 3,
                )
              ],
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [const Color(0xff2BB6C7), const Color(0xff65AF85)],
              ),
            ),
            child: MaterialButton(
              child: Stack(children: [
                const Text(
                  "Add a Device",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ]),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Theme(
                          data: ThemeData.light(),
                          child: CupertinoAlertDialog(
                            content: Container(
                              width: 700,
                              padding: const EdgeInsets.all(4.0),
                              child: const Text(
                                'please select the connection method',
                                style:
                                    TextStyle(color: const Color(0xff65AF85)),
                              ),
                            ),
                            actions: [
                              MaterialButton(
                                onPressed: () {},
                                child: const Text(
                                  "WIFI",
                                  style:
                                      TextStyle(color: const Color(0xff2BB6C7)),
                                ),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  Get.to(() => Bluetooth());
                                },
                                child: const Text(
                                  "Bluetooth",
                                  style:
                                      TextStyle(color: const Color(0xff2BB6C7)),
                                ),
                              )
                            ],
                          ));
                    });
              },
            ),
          ),
        ),
      ],
    ));
  }
}
