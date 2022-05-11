import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'page3.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

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
            top: 40,
            left: 125,
          ),
          child: Row(
            children: [
              SizedBox(
                width: 25,
                height: 25,
                child: Image.asset(
                  'images/station.png',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Unavatilable',
                  style: TextStyle(color: Color(0xff85C48D), fontSize: 20),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 30,
            left: 30,
          ),
          child: Row(
            children: [
              SizedBox(
                width: 130,
                height: 130,
                child: Image.asset(
                  'images/phone.png',
                ),
              ),
              SizedBox(
                width: 30,
                height: 30,
                child: Image.asset(
                  'images/link.png',
                ),
              ),
              SizedBox(
                width: 130,
                height: 130,
                child: Image.asset(
                  'images/station2.png',
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        Container(
          width: size.width * 1.2,
          // height: size.height * 1.0,
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
              "Add a Device",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Theme(
                        data: ThemeData.light(),
                        // data: ,
                        child: CupertinoAlertDialog(
                          content: Container(
                            width: 700,
                            padding: const EdgeInsets.all(4.0),
                            // decoration: BoxDecoration(color: Colors.green[400])
                            child: const Text(
                              'please select the connection method',
                              style: TextStyle(color: const Color(0xff65AF85)),
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
                                Get.to(() => Page3());
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
      ],
    ));
  }
}
