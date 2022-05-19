import 'package:energyproject/view/Details.dart';
import 'package:energyproject/view/page6.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChargingRecord extends StatelessWidget {
  const ChargingRecord({Key? key}) : super(key: key);

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
                        spreadRadius: 4,
                        blurRadius: 3,
                      )
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
                'charging Record',
                style: TextStyle(color: Color(0xff85C48D), fontSize: 20),
              )),
            )
          ],
        ),
        Divider(),
        Padding(
          padding: EdgeInsets.only(
              top: size.height * 0.05, bottom: size.height * 0.1),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              color: Color(0xffdef7e1).withOpacity(0.3),
              height: size.height * 0.1,
              width: size.width * 0.8,
              child: Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.02, left: size.width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "2022-02-24 -- 2022-02-25",
                      style: TextStyle(color: Color(0xff85C48D), fontSize: 17),
                    ),
                    SizedBox(
                      width: size.width * 0.03,
                    ),
                    Container(
                      height: size.height * 0.03,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(-1, 3),
                            blurRadius: 4.0,
                            spreadRadius: 1.6,
                          )
                        ],
                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            const Color(0xff2BB6C7),
                            const Color(0xff65AF85)
                          ],
                        ),
                      ),
                      child: MaterialButton(
                          child: const Text(
                            "Search",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                          minWidth: size.width * 0.01,
                          onPressed: () {}),
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
