import 'package:energyproject/view/ChargingRecord.dart';
import 'package:energyproject/view/VersionUpgrade.dart';
import 'package:energyproject/view/language.dart';
import 'package:energyproject/view/AppointmentSet.dart';
import 'package:energyproject/view/HomeEV.dart';
import 'package:energyproject/view/DeviceManagement.dart';
import 'package:energyproject/view/switching.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeEV extends StatelessWidget {
  const HomeEV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
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
                  'Mine',
                  style: TextStyle(color: Color(0xff85C48D), fontSize: 20),
                )),
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "Home EV",
            style: TextStyle(
              color: Color(0xff2BB6C7),
              fontSize: 25,
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Text(
            "V1.0",
            style: TextStyle(
              color: Color(0xff85C48D),
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Container(
            color: Color(0xffdef7e1).withOpacity(0.3),
            width: size.width * 0.8,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => DeviceManagement());
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: size.height * 0.01, left: size.width * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "images/charger.png",
                              scale: 1.5,
                            ),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Text(
                              'Charge managment',
                              style: TextStyle(
                                  color: Color(0xff85C48D), fontSize: 17),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: const Color(0xff2BB6C7),
                          size: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: const Color(0xff2BB6C7),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => ChargingRecord());
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: size.height * 0.01, left: size.width * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "images/edit.png",
                              scale: 1.5,
                            ),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Text(
                              'Charging record',
                              style: TextStyle(
                                  color: Color(0xff85C48D), fontSize: 17),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: const Color(0xff2BB6C7),
                          size: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: const Color(0xff2BB6C7),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => Language());
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: size.height * 0.01, left: size.width * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "images/translate.png",
                              scale: 1.5,
                            ),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Text(
                              'Language',
                              style: TextStyle(
                                  color: Color(0xff85C48D), fontSize: 17),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: const Color(0xff2BB6C7),
                          size: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: const Color(0xff2BB6C7),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => VersionUpgrade());
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: size.height * 0.01, left: size.width * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "images/system-update.png",
                              scale: 1.5,
                            ),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Text(
                              'Version upgrade',
                              style: TextStyle(
                                  color: Color(0xff85C48D), fontSize: 17),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: const Color(0xff2BB6C7),
                          size: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: const Color(0xff2BB6C7),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Theme(
                              data: ThemeData.light(),
                              child: CupertinoAlertDialog(
                                content: Card(
                                  color: Colors.transparent,
                                  elevation: 0.0,
                                  child: Column(
                                    children: [
                                      TextField(
                                        textAlign: TextAlign.center,
                                        decoration: InputDecoration(
                                            hintText: "Set Maximum Power (W)",
                                            hintStyle: TextStyle(
                                              fontSize: 15,
                                              color: Color(0xff50A75B),
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.teal,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xff50A75B),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xff50A75B),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            disabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xff50A75B),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 0.5),
                                            fillColor: Color(0xffF8FCFC)),
                                      ),
                                    ],
                                  ),
                                ),
                                actions: [
                                  MaterialButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "Cancel",
                                      style: TextStyle(
                                          color: Color(0xff2BB6C7),
                                          fontSize: 20),
                                    ),
                                  ),
                                  MaterialButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "Confirm",
                                      style: TextStyle(
                                          color: Color(0xff2BB6C7),
                                          fontSize: 20),
                                    ),
                                  )
                                ],
                              ));
                        });
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: size.height * 0.01, left: size.width * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "images/loading-process.png",
                              scale: 1.5,
                            ),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Text(
                              'Load Balancing',
                              style: TextStyle(
                                  color: Color(0xff85C48D), fontSize: 17),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: const Color(0xff2BB6C7),
                          size: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: const Color(0xff2BB6C7),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => Switching());
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: size.height * 0.01, left: size.width * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "images/share.png",
                              scale: 1.5,
                            ),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Text(
                              'Switching charging Mode',
                              style: TextStyle(
                                  color: Color(0xff85C48D), fontSize: 17),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: const Color(0xff2BB6C7),
                          size: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: const Color(0xff2BB6C7),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: size.height * 0.01,
                        left: size.width * 0.05,
                        bottom: size.height * 0.01),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "images/power-button.png",
                              scale: 1.5,
                            ),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Text(
                              'Disconnect',
                              style: TextStyle(
                                  color: Color(0xff85C48D), fontSize: 17),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: const Color(0xff2BB6C7),
                          size: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
