import 'package:energyproject/view/AddDevice.dart';
import 'package:energyproject/view/HomeEV.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';

import '../controller/VersionUpgrade.dart';

class VersionUpgrade extends StatelessWidget {
  VersionUpgrade({Key? key}) : super(key: key);
  final VersionUpgradeontroller ctrl = Get.put(VersionUpgradeontroller());
  final VersionUpgradeontroller ctrl1 = Get.put(VersionUpgradeontroller());
  final VersionUpgradeontroller ctrl2 = Get.put(VersionUpgradeontroller());
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Get.to(() => HomeEV());
            },
            child: Row(
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
                    'Version Upgrade',
                    style: TextStyle(color: Color(0xff85C48D), fontSize: 20),
                  )),
                )
              ],
            ),
          ),
          Divider(),
          Container(
            child: Obx((() => Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.04,
                        left: size.width * 0.02,
                      ),
                      child: Container(
                        color: Color(0xffdef7e1).withOpacity(0.3),
                        width: size.width * 0.8,
                        height: size.height * 0.08,
                        child: CheckboxListTile(
                          title: Text(
                            "NA single",
                            style: TextStyle(
                                color: Color(0xff2BB6C7), fontSize: 15),
                          ),
                          value: ctrl.checkBool.value,
                          onChanged: (Value) {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return Theme(
                                      data: ThemeData.light(),
                                      child: CupertinoAlertDialog(
                                        title: Text(
                                          'Are you sure upgrade the firme ware?',
                                          style: TextStyle(
                                              color: Color(0xff85C48D),
                                              fontSize: 20),
                                        ),
                                        actions: [
                                          MaterialButton(
                                            onPressed: () {
                                              Navigator.pop(context, true);
                                            },
                                            child: const Text(
                                              "Cancel",
                                              style: TextStyle(
                                                  color: Color(0xff2BB6C7),
                                                  fontSize: 20),
                                            ),
                                          ),
                                          MaterialButton(
                                            onPressed: () {
                                              ctrl.checkBool.value =
                                                  !ctrl.checkBool.value;
                                              ctrl1.checkBool1.value = false;
                                              ctrl2.checkBool2.value = false;
                                              Navigator.pop(context, true);
                                            },
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
                          activeColor: Color(0xff85C48D),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.02,
                        left: size.width * 0.02,
                      ),
                      child: Container(
                        color: Color(0xffdef7e1).withOpacity(0.3),
                        width: size.width * 0.8,
                        height: size.height * 0.08,
                        child: CheckboxListTile(
                          title: Text(
                            "EU single",
                            style: TextStyle(
                                color: Color(0xff2BB6C7), fontSize: 15),
                          ),
                          value: ctrl1.checkBool1.value,
                          onChanged: (Value) {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return Theme(
                                      data: ThemeData.light(),
                                      child: CupertinoAlertDialog(
                                        title: Text(
                                          'Are you sure upgrade the firme ware?',
                                          style: TextStyle(
                                              color: Color(0xff85C48D),
                                              fontSize: 20),
                                        ),
                                        actions: [
                                          MaterialButton(
                                            onPressed: () {
                                              Navigator.pop(context, true);
                                            },
                                            child: const Text(
                                              "Cancel",
                                              style: TextStyle(
                                                  color: Color(0xff2BB6C7),
                                                  fontSize: 20),
                                            ),
                                          ),
                                          MaterialButton(
                                            onPressed: () {
                                              ctrl1.checkBool1.value =
                                                  !ctrl1.checkBool1.value;
                                              ctrl.checkBool.value = false;
                                              ctrl2.checkBool2.value = false;
                                              Navigator.pop(context, true);
                                            },
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
                          activeColor: Color(0xff85C48D),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.02,
                        left: size.width * 0.02,
                      ),
                      child: Container(
                        color: Color(0xffdef7e1).withOpacity(0.3),
                        width: size.width * 0.8,
                        height: size.height * 0.08,
                        child: CheckboxListTile(
                          title: Text(
                            "EU Three",
                            style: TextStyle(
                                color: Color(0xff2BB6C7), fontSize: 15),
                          ),
                          value: ctrl2.checkBool2.value,
                          onChanged: (Value) {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return Theme(
                                      data: ThemeData.light(),
                                      child: CupertinoAlertDialog(
                                        title: Text(
                                          'Are you sure upgrade the firme ware?',
                                          style: TextStyle(
                                              color: Color(0xff85C48D),
                                              fontSize: 20),
                                        ),
                                        actions: [
                                          MaterialButton(
                                            onPressed: () {
                                              Navigator.pop(context, true);
                                            },
                                            child: const Text(
                                              "Cancel",
                                              style: TextStyle(
                                                  color: Color(0xff2BB6C7),
                                                  fontSize: 20),
                                            ),
                                          ),
                                          MaterialButton(
                                            onPressed: () {
                                              ctrl2.checkBool2.value =
                                                  !ctrl2.checkBool2.value;
                                              ctrl.checkBool.value = false;
                                              ctrl1.checkBool1.value = false;
                                              Navigator.pop(context, true);
                                            },
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
                          activeColor: Color(0xff85C48D),
                        ),
                      ),
                    ),
                  ],
                ))),
          ),
        ],
      ),
    );
  }
}
