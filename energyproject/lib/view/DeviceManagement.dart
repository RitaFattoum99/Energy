import 'package:energyproject/view/Details.dart';
import 'package:energyproject/view/AppointmentSet.dart';
import 'package:energyproject/view/HomeEV.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeviceManagement extends StatelessWidget {
  const DeviceManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Get.to(
                () => HomeEV(),
              );
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
                    'Device management',
                    style: TextStyle(color: Color(0xff85C48D), fontSize: 20),
                  )),
                )
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.only(
              top: size.height * 0.04,
              left: size.width * 0.02,
            ),
            child: GestureDetector(
              onTap: () {
                Get.to(() => Details());
              },
              child: Container(
                color: Color(0xffdef7e1).withOpacity(0.3),
                width: size.width * 0.8,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: size.height * 0.05,
                      left: size.width * 0.02,
                      bottom: size.height * 0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: size.width * 0.05,
                                right: size.width * 0.02),
                            child: Image.asset(
                              "images/charger.png",
                              scale: 1.5,
                            ),
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '2130729171',
                                  style: TextStyle(
                                      color: Color(0xff85C48D), fontSize: 20),
                                ),
                                Text(
                                  '77E6C2DB-BB07-8C3..',
                                  style: TextStyle(
                                      color: Color(0xff85C48D), fontSize: 15),
                                ),
                              ]),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: size.width * 0.02,
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: const Color(0xff2BB6C7),
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Positioned(
          //   // top: size.height * 0.8,
          //   bottom: 10,
          //   child: SizedBox(
          //     width: size.width,
          //     height: 150,
          //     child: Image.asset('images/lines.png'),
          //   ),
          // )
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.47),
            child: Container(
              child: Image.asset('images/lines.png'),
            ),
          )
        ],
      ),
    );
  }
}
