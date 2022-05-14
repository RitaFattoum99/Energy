import 'package:energyproject/view/page6.dart';
import 'package:energyproject/view/page8.dart';
import 'package:energyproject/view/page9.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page8 extends StatelessWidget {
  const Page8({Key? key}) : super(key: key);

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
          height: 5,
        ),
        Text(
          "V1.0",
          style: TextStyle(
            color: Color(0xff85C48D),
            fontSize: 20,
          ),
        ),
        Container(
          color: Color.fromARGB(255, 219, 238, 238),
          width: size.width * 0.7,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(() => Page9());
                },
                child: Padding(
                  padding: EdgeInsets.only(
                      top: size.height * 0.02, left: size.width * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "images/charger.png",
                        scale: 1.5,
                      ),
                      Text(
                        'Charge managment',
                        style:
                            TextStyle(color: Color(0xff85C48D), fontSize: 15),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: const Color(0xff2BB6C7),
                        size: 20,
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
                      top: size.height * 0.02, left: size.width * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "images/edit.png",
                        scale: 1.5,
                      ),
                      Text(
                        'Charging record',
                        style:
                            TextStyle(color: Color(0xff85C48D), fontSize: 15),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: const Color(0xff2BB6C7),
                        size: 20,
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
                      top: size.height * 0.02, left: size.width * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "images/translate.png",
                        scale: 1.5,
                      ),
                      Text(
                        'Language',
                        style:
                            TextStyle(color: Color(0xff85C48D), fontSize: 15),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: const Color(0xff2BB6C7),
                        size: 20,
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
                      top: size.height * 0.02, left: size.width * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "images/system-update.png",
                        scale: 1.5,
                      ),
                      Text(
                        'Version upgrade',
                        style:
                            TextStyle(color: Color(0xff85C48D), fontSize: 15),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: const Color(0xff2BB6C7),
                        size: 20,
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
                      top: size.height * 0.02, left: size.width * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "images/loading-process.png",
                        scale: 1.5,
                      ),
                      Text(
                        'Load Balancing',
                        style:
                            TextStyle(color: Color(0xff85C48D), fontSize: 15),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: const Color(0xff2BB6C7),
                        size: 20,
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
                      top: size.height * 0.02, left: size.width * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "images/share.png",
                        scale: 1.5,
                      ),
                      Text(
                        'Switching charging Mode',
                        style:
                            TextStyle(color: Color(0xff85C48D), fontSize: 15),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: const Color(0xff2BB6C7),
                        size: 20,
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
                      top: size.height * 0.02,
                      left: size.width * 0.05,
                      bottom: size.height * 0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "images/power-button.png",
                        scale: 1.5,
                      ),
                      Text(
                        'Disconnect',
                        style:
                            TextStyle(color: Color(0xff85C48D), fontSize: 15),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: const Color(0xff2BB6C7),
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
