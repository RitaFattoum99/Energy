import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          top: 40,
          left: 145,
        ),
        child: Row(
          children: [
            SizedBox(
              width: 25,
              height: 25,
              child: Image.asset(
                'images/station.png',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text(
                '7654321',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: 'ABeeZee',
                    color: Color(0xff85C48D),
                    fontSize: 18),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        width: 350,
        height: 250,
        child: Stack(
          children: [
            Positioned(
              top: 14,
              left: 65,
              child: Text(
                '(Device param : us single 40 A )',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'ABeeZee',
                  color: Color(0xff85C48D),
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 55,
              child: SizedBox(
                width: 270,
                height: 215,
                child: Image.asset('images/car1.png'),
              ),
            ),
            Positioned(
              top: 220,
              left: 74,
              child: Text(
                'Ready, Please start charging',
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff3bb7c5).withOpacity(0.8),
                    fontFamily: 'ABeeZee'),
              ),
            ),
            Positioned(
                top: 74,
                left: 126.5,
                child: SizedBox(
                    width: 17,
                    height: 17,
                    child: Image.asset('images/low.png'))),
          ],
        ),
      ),
      Stack(
        children: [
          SizedBox(
            child: Container(
              width: 300,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xffdef9e1).withOpacity(0.3),
              ),
            ),
          ),
          Positioned(
            top: 15,
            child: Padding(
              padding: EdgeInsets.only(right: 20, left: 40),
              child: SizedBox(
                width: 220,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Current',
                          style:
                              TextStyle(fontSize: 13, fontFamily: 'Montserrat'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 4),
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: '0',
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xff85C48D))),
                              TextSpan(
                                  text: 'A',
                                  style: TextStyle(
                                      fontSize: 7, color: Color(0xff85C48D))),
                            ]),
                          ),
                        )
                      ],
                    ),
                    VerticalDivider(
                      width: 1.3,
                      thickness: 1.3,
                      color: Color(0xff85C48D),
                      indent: 17,
                      endIndent: 12,
                    ),
                    Column(
                      children: [
                        Text(
                          'Voltage',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontFamily: 'Montserrat'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 4),
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: '283.8',
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xff85C48D))),
                              TextSpan(
                                  text: 'V',
                                  style: TextStyle(
                                      fontSize: 7, color: Color(0xff85C48D))),
                            ]),
                          ),
                        )
                      ],
                    ),
                    VerticalDivider(
                      width: 1.3,
                      thickness: 1.3,
                      color: Color(0xff85C48D),
                      indent: 17,
                      endIndent: 12,
                    ),
                    Column(
                      children: [
                        Text(
                          'Power',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontFamily: 'Montserrat'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 4),
                          child: RichText(
                            text: const TextSpan(children: [
                              TextSpan(
                                  text: '0',
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xff85C48D))),
                              TextSpan(
                                  text: 'Kw',
                                  style: TextStyle(
                                      fontSize: 7, color: Color(0xff85C48D))),
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
            top: 45,
            child: Padding(
              padding: EdgeInsets.only(
                top: 20,
                right: 20,
                left: 20,
              ),
              child: SizedBox(
                width: 250,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Charging Power',
                          style:
                              TextStyle(fontSize: 13, fontFamily: 'Montserrat'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 4),
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: '0.00',
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xff85C48D))),
                              TextSpan(
                                  text: 'kw.h',
                                  style: TextStyle(
                                      fontSize: 7, color: Color(0xff85C48D))),
                            ]),
                          ),
                        )
                      ],
                    ),
                    VerticalDivider(
                      width: 1.3,
                      thickness: 1.3,
                      color: Color(0xff85C48D),
                      indent: 20,
                      endIndent: 12,
                    ),
                    Column(
                      children: [
                        Text(
                          'Charging Time',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontFamily: 'Montserrat'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 4),
                          child: RichText(
                            text: const TextSpan(children: [
                              TextSpan(
                                  text: '0',
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xff85C48D))),
                              TextSpan(
                                  text: 'Kw',
                                  style: TextStyle(
                                      fontSize: 7, color: Color(0xff85C48D))),
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
        padding: EdgeInsets.only(top: 10, right: 60),
        child: Text(
          'Please set charging current (A) : 40',
          style: TextStyle(
              fontSize: 15,
              color: Color(0xff3bb7c5).withOpacity(0.8),
              fontFamily: 'ABeeZee'),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 50, left: 15, right: 15),
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
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.only(
                          top: 5,
                          bottom: 5,
                        ),
                        child: Text(
                          'Appointmint Set',
                          maxLines: 1,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            fontFamily: 'ABeeZee',
                            // fontWeight: FontWeight.w700,
                            color: Color(0xff85C48D),
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
                    gradient: LinearGradient(
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
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.only(
                          top: 5,
                          bottom: 5,
                        ),
                        child: Text(
                          'Start Charging',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            fontFamily: 'ABeeZee',
                            // fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ))),
            ),
          ],
        ),
      )
    ]));
  }
}
