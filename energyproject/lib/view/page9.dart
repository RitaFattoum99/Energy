import 'package:energyproject/view/page10.dart';
import 'package:energyproject/view/page6.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page9 extends StatelessWidget {
  const Page9({Key? key}) : super(key: key);

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
                'device management',
                style: TextStyle(color: Color(0xff85C48D), fontSize: 20),
              )),
            )
          ],
        ),
        Divider(),
        Padding(
          padding: EdgeInsets.only(
            top: size.height * 0.04,
            left: size.width * 0.02,
          ),
          child: GestureDetector(
            onTap: () {
              Get.to(() => Page10());
            },
            child: Container(
              color: Color.fromARGB(255, 219, 238, 238),
              width: size.width * 0.8,
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
                    Expanded(
                        child: new ListTile(
                      title: Text(
                        '2130729171',
                        style:
                            TextStyle(color: Color(0xff85C48D), fontSize: 20),
                      ),
                      subtitle: Text(
                        '77E6C2DB-BB07-8C3..',
                        style:
                            TextStyle(color: Color(0xff85C48D), fontSize: 15),
                      ),
                    )),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: const Color(0xff2BB6C7),
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}