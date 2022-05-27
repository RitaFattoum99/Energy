import 'package:energyproject/view/HomeEV.dart';
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
        body: Stack(
          children: [
            Positioned(
              top: size.height * 0.04,
              left: size.width * 0.06,
              child: GestureDetector(
                child: Row(
                  children: [
                    Container(
                      width: size.width * 0.1,
                      height: size.height * 0.1,
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
                    Positioned(
                      top: size.height * 0.09,
                      left: size.width * 0.01,
                      child: SizedBox(
                        width: size.width * 0.18,
                        height: size.height * 0.065,
                        child: Image.asset('images/logo.png'),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.15,
              left: size.width * 0.35,
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
                      style: TextStyle(
                        color: Color(0xff85C48D),
                        fontSize: size.width * 0.04,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: size.height * 0.2,
              left: size.width * 0.1,
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
            Positioned(
              top: size.height * 0.6,
              left: size.width * 0.16,
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
                    Text(
                      "Add a Device",
                      style: TextStyle(
                          color: Colors.white, fontSize: size.width * 0.06),
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
                                  child: Text(
                                    'please select the connection method',
                                    style: TextStyle(
                                      color: const Color(0xff65AF85),
                                    ),
                                  ),
                                ),
                                actions: [
                                  MaterialButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "WIFI",
                                      style: TextStyle(
                                          color: const Color(0xff2BB6C7)),
                                    ),
                                  ),
                                  MaterialButton(
                                    onPressed: () {
                                      Get.to(() => Bluetooth());
                                    },
                                    child: const Text(
                                      "Bluetooth",
                                      style: TextStyle(
                                          color: const Color(0xff2BB6C7)),
                                    ),
                                  )
                                ],
                              ));
                        });
                  },
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.75,
              child: SizedBox(
                width: size.width,
                height: size.height * 0.3,
                child: Image.asset('images/lines.png'),
              ),
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: const Color(0xffdef9e1),
                ),
                child: Center(
                  child: Image.asset(
                    'images/logo.png',
                    scale: 3.5,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home, color: Color(0xff65AF85)),
                title: Text(
                  "Home",
                  style: TextStyle(
                    color: const Color(0xff65AF85),
                    fontSize: size.width * 0.05,
                  ),
                ),
                onTap: () {
                  Get.to(() => HomeEV());
                },
              ),
              ListTile(
                leading: Icon(Icons.car_repair_sharp, color: Color(0xff65AF85)),
                title: Text(
                  "Add Device",
                  style: TextStyle(
                    color: const Color(0xff65AF85),
                    fontSize: size.width * 0.05,
                  ),
                ),
                onTap: () {
                  Get.to(() => AddDevice());
                },
              ),
            ],
          ),
        ));
  }
}
