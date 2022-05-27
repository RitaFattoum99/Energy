import 'package:energyproject/view/AddDevice.dart';
import 'package:energyproject/view/AppointmentSet.dart';
import 'package:energyproject/view/CarPage2.dart';
import 'package:energyproject/view/CarPage3.dart';
import 'package:energyproject/view/HomeEV.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CarPage1 extends StatefulWidget {
  const CarPage1({Key? key}) : super(key: key);

  @override
  State<CarPage1> createState() => _CarPage1State();
}

class _CarPage1State extends State<CarPage1> {
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
            height: size.height * 0.3,
            child: Stack(
              children: [
                Positioned(
                  top: size.height * 0.005,
                  left: size.width * 0.14,
                  child: Text(
                    '(Device param : us single 40 A )',
                    style: TextStyle(
                      fontSize: size.width * 0.04,
                      fontFamily: 'ABeeZee',
                      color: const Color(0xff85C48D),
                    ),
                  ),
                ),
                Positioned(
                  top: size.height * 0.025,
                  left: size.width * 0.13,
                  child: SizedBox(
                    width: size.width * 0.65,
                    height: size.height * 0.260,
                    child: Image.asset('images/car1.png'),
                  ),
                ),
                Positioned(
                  top: size.height * 0.270,
                  left: size.width * 0.16,
                  child: Text(
                    'Ready, Please start charging',
                    style: TextStyle(
                        fontSize: size.width * 0.04,
                        color: const Color(0xff3bb7c5).withOpacity(0.8),
                        fontFamily: 'ABeeZee'),
                  ),
                ),
                Positioned(
                  top: size.height * 0.08,
                  left: size.width * 0.30,
                  child: SizedBox(
                      width: size.width * 0.042,
                      height: size.height * 0.021,
                      child: Image.asset('images/low.png')),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              SizedBox(
                child: Container(
                  width: size.width * 0.88,
                  height: size.height * 0.17,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffdef9e1).withOpacity(0.3),
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.02,
                child: Padding(
                  padding: EdgeInsets.only(
                      right: size.width * 0.1, left: size.width * 0.12),
                  child: SizedBox(
                    width: size.width * 0.65,
                    height: size.height * 0.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Current',
                              style: TextStyle(
                                fontSize: size.width * 0.044,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: size.height * 0.01),
                              child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: '0',
                                      style: TextStyle(
                                          fontSize: size.width * 0.038,
                                          color: Color(0xff85C48D))),
                                  TextSpan(
                                      text: 'A',
                                      style: TextStyle(
                                          fontSize: size.width * 0.022,
                                          color: Color(0xff85C48D))),
                                ]),
                              ),
                            )
                          ],
                        ),
                        const VerticalDivider(
                          width: 1.3,
                          thickness: 1.3,
                          color: Color(0xff85C48D),
                          indent: 15,
                          endIndent: 20,
                        ),
                        Column(
                          children: [
                            Text(
                              'Voltage',
                              style: TextStyle(
                                fontSize: size.width * 0.044,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: size.height * 0.01),
                              child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: '283.8',
                                      style: TextStyle(
                                          fontSize: size.width * 0.038,
                                          color: Color(0xff85C48D))),
                                  TextSpan(
                                      text: 'V',
                                      style: TextStyle(
                                          fontSize: 9,
                                          color: Color(0xff85C48D))),
                                ]),
                              ),
                            )
                          ],
                        ),
                        const VerticalDivider(
                          width: 1.3,
                          thickness: 1.3,
                          color: Color(0xff85C48D),
                          indent: 15,
                          endIndent: 20,
                        ),
                        Column(
                          children: [
                            Text(
                              'Power',
                              style: TextStyle(
                                fontSize: size.width * 0.044,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: size.height * 0.01),
                              child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: '0',
                                      style: TextStyle(
                                          fontSize: size.width * 0.038,
                                          color: Color(0xff85C48D))),
                                  TextSpan(
                                      text: 'Kw',
                                      style: TextStyle(
                                          fontSize: size.width * 0.032,
                                          color: Color(0xff85C48D))),
                                ]),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.065,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: size.height * 0.028,
                    right: size.width * 0.1,
                    left: size.width * 0.07,
                  ),
                  child: SizedBox(
                    width: size.width * 0.70,
                    height: size.height * 0.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Charging Power',
                              style: TextStyle(
                                fontSize: size.width * 0.044,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: size.height * 0.01),
                              child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: '0.00',
                                      style: TextStyle(
                                          fontSize: size.width * 0.038,
                                          color: Color(0xff85C48D))),
                                  TextSpan(
                                      text: 'kw.h',
                                      style: TextStyle(
                                          fontSize: size.width * 0.022,
                                          color: Color(0xff85C48D))),
                                ]),
                              ),
                            )
                          ],
                        ),
                        const VerticalDivider(
                          width: 1.3,
                          thickness: 1.3,
                          color: Color(0xff85C48D),
                          indent: 20,
                          endIndent: 20,
                        ),
                        Column(
                          children: [
                            Text(
                              'Charging Time',
                              style: TextStyle(
                                fontSize: size.width * 0.044,
                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: size.height * 0.01),
                              child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: '0',
                                      style: TextStyle(
                                          fontSize: size.width * 0.038,
                                          color: const Color(0xff85C48D))),
                                  TextSpan(
                                      text: 'Kw',
                                      style: TextStyle(
                                          fontSize: size.width * 0.022,
                                          color: const Color(0xff85C48D))),
                                ]),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                top: size.height * 0.01, right: size.width * 0.06),
            child: Text(
              'Please set charging current (A) : 40',
              style: TextStyle(
                  fontSize: size.width * 0.038,
                  color: const Color(0xff3bb7c5).withOpacity(0.8),
                  fontFamily: 'ABeeZee'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: size.height * 0.08,
                left: size.width * 0.05,
                right: size.width * 0.05),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: MediaQuery.of(context).size.width * 0.40,
                      height: MediaQuery.of(context).size.height * 0.048,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff85C48D), width: 1),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
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
                            Get.to(() => AppointmentSet());
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 5,
                              bottom: 5,
                            ),
                            child: Text(
                              'Appointmint Set',
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: MediaQuery.of(context).size.width * 0.40,
                      height: MediaQuery.of(context).size.height * 0.048,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(-2, 5),
                            blurRadius: 4.0,
                            spreadRadius: 1.6,
                          )
                        ],
                        gradient: const LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color(0xff31b7c3),
                            Color(0xff85C48D),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
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
                            Get.to(() => CarPage2());
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 5,
                              bottom: 5,
                            ),
                            child: Text(
                              'Start Charging',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: size.width * 0.048,
                                fontFamily: 'ABeeZee',
                                color: Colors.white,
                              ),
                            ),
                          ))),
                ),
              ],
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
