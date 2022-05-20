import 'package:energyproject/controller/Language.dart';
import 'package:energyproject/view/Details.dart';
import 'package:energyproject/view/AppointmentSet.dart';
import 'package:energyproject/view/HomeEV.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends StatelessWidget {
  Language({Key? key}) : super(key: key);
  final LanguageController ctrl = Get.put(LanguageController());
  final LanguageController ctrl1 = Get.put(LanguageController());
  final LanguageController ctrl2 = Get.put(LanguageController());
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
                    'language',
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
                            "English",
                            style: TextStyle(
                                color: Color(0xff2BB6C7), fontSize: 15),
                          ),
                          value: ctrl.checkBool.value,
                          onChanged: (Value) {
                            ctrl.checkBool.value = !ctrl.checkBool.value;
                            ctrl1.checkBool1.value = false;
                            ctrl2.checkBool2.value = false;
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
                            "Chains",
                            style: TextStyle(
                                color: Color(0xff2BB6C7), fontSize: 15),
                          ),
                          value: ctrl1.checkBool1.value,
                          onChanged: (Value) {
                            ctrl1.checkBool1.value = !ctrl1.checkBool1.value;
                            ctrl.checkBool.value = false;
                            ctrl2.checkBool2.value = false;
                          },
                          activeColor: Color(0xff85C48D),
                        ),
                      ),
                    ),
                  ],
                ))),
          ),
          // Positioned(
          //   bottom: 0,
          //   child: SizedBox(
          //     width: size.width,
          //     height: size.height * 0.5,
          //     child: Image.asset('images/lines.png'),
          //   ),
          // )
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.43),
            child: Container(
              child: Image.asset('images/lines.png'),
            ),
          )
        ],
      ),
    );
  }
}
