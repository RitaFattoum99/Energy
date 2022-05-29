import 'package:energyproject/view/AddDevice.dart';
import 'package:energyproject/view/CarPage1.dart';
import 'package:energyproject/view/HomeEV.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CarPage3 extends StatefulWidget {
  const CarPage3({Key? key}) : super(key: key);

  @override
  State<CarPage3> createState() => _CarPage3State();
}

class _CarPage3State extends State<CarPage3> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.04, left: size.width * 0.06),
                child: Container(
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
                      gradient: const LinearGradient(
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
              top: size.height * 0.04,
              left: size.width * 0.35,
            ),
            child: Row(
              children: [
                SizedBox(
                  width: size.width * 0.08,
                  height: size.height * 0.035,
                  child: Image.asset(
                    'images/station.png',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: size.width * 0.01),
                  child: Text(
                    '7654321',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'ABeeZee',
                        color: Color(0xff85C48D),
                        fontSize: size.width * 0.045),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: size.width * 0.8,
            height: size.height * 0.32,
            child: Stack(
              children: [
                Positioned(
                  top: size.height * 0.001,
                  left: size.width * 0.13,
                  child: SizedBox(
                    width: size.width * 0.65,
                    height: size.height * 0.260,
                    child: Image.asset('images/car1.png'),
                  ),
                ),
                Positioned(
                  top: size.height * 0.26,
                  left: size.width * 0.15,
                  child: Text(
                    'Holding waiting to start',
                    style: TextStyle(
                        fontSize: size.width * 0.05,
                        color: const Color(0xff3bb7c5).withOpacity(0.8),
                        fontFamily: 'ABeeZee'),
                  ),
                ),
                Positioned(
                    top: size.height * 0.056,
                    left: size.width * 0.30,
                    child: SizedBox(
                        width: size.width * 0.042,
                        height: size.height * 0.021,
                        child: Image.asset('images/low.png'))),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: size.height * 0.001,
              left: size.width * 0.02,
              bottom: size.height * 0.012,
            ),
            child: Text(
              'Count down:00:00:06',
              style: TextStyle(
                  fontSize: size.width * 0.035,
                  color: const Color(0xff85C48D),
                  fontFamily: 'ABeeZee'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: size.height * 0.005,
                right: size.width * 0.4,
                bottom: size.height * 0.02),
            child: Text(
              'Reservation Data',
              style: TextStyle(
                  fontSize: size.width * 0.05,
                  color: const Color(0xff85C48D),
                  fontFamily: 'ABeeZee'),
            ),
          ),
          Stack(
            children: [
              SizedBox(
                child: Container(
                  width: size.width * 0.9,
                  height: size.height * 0.22,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffdef9e1).withOpacity(0.3),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: size.height * 0.015,
                            left: size.width * 0.08,
                            bottom: size.height * 0.002,
                            right: 20),
                        child: Row(
                          children: [
                            Text(
                              'Start Time',
                              style: TextStyle(fontSize: size.width * 0.048),
                            ),
                            const SizedBox(
                              width: 65,
                            ),
                            Text(
                              '2022-10-5  14:23',
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color(0xff3bb7c5).withOpacity(0.8),
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: EdgeInsets.only(
                            top: size.height * 0.015,
                            left: size.width * 0.08,
                            bottom: size.height * 0.002,
                            right: 20),
                        child: Row(
                          children: [
                            Text(
                              'Charging Time',
                              style: TextStyle(fontSize: size.width * 0.048),
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            Text(
                              '2',
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color(0xff3bb7c5).withOpacity(0.8),
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: EdgeInsets.only(
                            top: size.height * 0.015,
                            left: size.width * 0.08,
                            bottom: size.height * 0.002,
                            right: 20),
                        child: Row(
                          children: [
                            Text(
                              'Charging Current',
                              style: TextStyle(fontSize: size.width * 0.048),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Text(
                              '30',
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color(0xff3bb7c5).withOpacity(0.8),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                top: size.height * 0.01,
                left: size.width * 0.05,
                right: size.width * 0.05),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.68,
                  height: MediaQuery.of(context).size.height * 0.065,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff85C48D), width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        shadowColor:
                            MaterialStateProperty.all(Colors.transparent),
                      ),
                      onPressed: () {
                        Get.to(() => CarPage1());
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 5,
                          bottom: 5,
                        ),
                        child: Text(
                          'Cancel',
                          maxLines: 1,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: size.width * 0.043,
                            fontFamily: 'ABeeZee',
                            color: const Color(0xff85C48D),
                          ),
                        ),
                      ))),
            ),
          )
        ]),
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
                  style:
                      TextStyle(color: const Color(0xff65AF85), fontSize: 20),
                ),
                onTap: () {
                  Get.to(() => HomeEV());
                },
              ),
              ListTile(
                leading: Icon(Icons.car_repair_sharp, color: Color(0xff65AF85)),
                title: Text(
                  "Add Device",
                  style:
                      TextStyle(color: const Color(0xff65AF85), fontSize: 20),
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
