import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(children: [
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
                'Details Of Charge  ',
                style: TextStyle(color: Color(0xff85C48D), fontSize: 20),
              )),
            ),
          ],
        ),
        SizedBox(height: size.height * 0.03),
        Container(
          width: size.width,
          height: size.height * 0.07,
          color: Color(0xffD5EBDA),
          child: Padding(
            padding: EdgeInsets.only(
                top: size.height * 0.02, left: size.width * 0.3),
            child: Text(
              "Basic Information",
              style: TextStyle(color: Color(0xff2BB6C7), fontSize: 20),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * 0.02, left: size.width * 0.15),
              child: Text(
                "Code : AC10000000000012",
                style: TextStyle(color: Color(0xff85C48D), fontSize: 20),
              ),
            ),
          ],
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * 0.02, left: size.width * 0.15),
              child: Text(
                "Name : 2130729171",
                style: TextStyle(color: Color(0xff85C48D), fontSize: 20),
              ),
            ),
          ],
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * 0.02, left: size.width * 0.15),
              child: Text(
                "Type of plug : please edit",
                style: TextStyle(color: Color(0xff85C48D), fontSize: 20),
              ),
            ),
          ],
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * 0.02, left: size.width * 0.15),
              child: Text(
                "Software version : 4.6",
                style: TextStyle(color: Color(0xff85C48D), fontSize: 20),
              ),
            ),
          ],
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * 0.02,
                  left: size.width * 0.15,
                  bottom: size.height * 0.02),
              child: Text(
                "Bluetooth version : 1(OTA)",
                style: TextStyle(color: Color(0xff85C48D), fontSize: 20),
              ),
            ),
          ],
        ),
        Container(
          width: size.width,
          height: size.height * 0.07,
          color: Color(0xffD5EBDA),
          child: Padding(
            padding: EdgeInsets.only(
                top: size.height * 0.02, left: size.width * 0.15),
            child: Text(
              "Usage",
              style: TextStyle(color: Color(0xff2BB6C7), fontSize: 20),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * 0.02, left: size.width * 0.2),
              child: Text(
                "Total Charging Times : 1",
                style: TextStyle(color: Color(0xff85C48D), fontSize: 20),
              ),
            ),
          ],
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * 0.02, left: size.width * 0.2),
              child: Text(
                "Total Fault Times : 0",
                style: TextStyle(color: Color(0xff85C48D), fontSize: 20),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
