import 'package:energyproject/view/HomeEV.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChargingRecord extends StatefulWidget {
  const ChargingRecord({Key? key}) : super(key: key);

  @override
  State<ChargingRecord> createState() => _ChargingRecordState();
}

bool is_Selected = false;

class _ChargingRecordState extends State<ChargingRecord> {
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
                  padding: EdgeInsets.only(
                      top: size.height * 0.06, left: size.width * 0.07),
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
                    'charging Record',
                    style: TextStyle(color: Color(0xff85C48D), fontSize: 20),
                  )),
                )
              ],
            ),
          ),
          Hero(
            tag: 'record',
            child: Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.05,
                  right: size.width * 0.05,
                  top: size.height * 0.03),
              child: Container(
                width: size.width * 0.70,
                height: size.height * 0.08,
                color: Color(0xffdef9e1).withOpacity(0.3),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: size.width * 0.03,
                        top: size.height * 0.01,
                        bottom: size.height * 0.01),
                    child: Row(
                      children: [
                        Text(
                          '2022-24-2 -- 2022-25-2 ',
                          style: TextStyle(
                              color: Color(0xff85C48D),
                              fontSize: size.width * 0.046),
                        ),
                        Padding(
                          padding: EdgeInsets.all(size.width * 0.015),
                          child: Container(
                              width: MediaQuery.of(context).size.width * 0.16,
                              height: MediaQuery.of(context).size.height * 0.03,
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
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                      ),
                                    ),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                    shadowColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                  ),
                                  onPressed: () {
                                    // Navigator.push(context,MaterialPageRoute(builder: (context)=>SearchPage2()));
                                    setState(() {
                                      is_Selected = !is_Selected;
                                    });
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: size.height * 0.009,
                                      bottom: size.height * 0.01,
                                    ),
                                    child: Text(
                                      'Search',
                                      style: TextStyle(
                                        fontSize: size.width * 0.022,
                                        fontFamily: 'ABeeZee',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ))),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.94,
            height: size.height * 0.75,
            child: is_Selected
                ? ListView(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: size.height * 0.01,
                            right: size.width * 0.05,
                            left: size.width * 0.05,
                            bottom: 0),
                        child: Container(
                          color: Color(0xffdef9e1).withOpacity(0.3),
                          width: size.width * 0.7,
                          height: size.height * 0.18,
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: size.height * 0.02,
                                bottom: size.height * 0.02,
                                right: size.width * 0.01,
                                left: size.width * 0.05),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Charging Power',
                                      style: TextStyle(
                                        fontSize: size.width * 0.05,
                                        color: Color(0xff85C48D),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 100,
                                    ),
                                    RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: '0',
                                            style: TextStyle(
                                                fontSize: size.width * 0.050,
                                                color:
                                                    const Color(0xff85C48D))),
                                        TextSpan(
                                            text: 'w.h',
                                            style: TextStyle(
                                                fontSize: size.width * 0.022,
                                                color:
                                                    const Color(0xff85C48D))),
                                      ]),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Charging Time',
                                      style: TextStyle(
                                        fontSize: size.width * 0.05,
                                        color: Color(0xff85C48D),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 112,
                                    ),
                                    RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: '0',
                                            style: TextStyle(
                                                fontSize: size.width * 0.050,
                                                color:
                                                    const Color(0xff85C48D))),
                                        TextSpan(
                                            text: 'w.h',
                                            style: TextStyle(
                                                fontSize: size.width * 0.022,
                                                color:
                                                    const Color(0xff85C48D))),
                                      ]),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Start Time',
                                      style: TextStyle(
                                        fontSize: size.width * 0.05,
                                        color: Color(0xff85C48D),
                                      ),
                                    ),
                                    SizedBox(
                                      width: size.width * 0.15,
                                    ),
                                    Text(
                                      '2022-24-2  10:52:40',
                                      style: TextStyle(
                                        color: Color(0xff85C48D),
                                        fontSize: size.width * 0.040,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        indent: 25,
                        endIndent: 25,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: size.height * 0.01,
                            right: 20,
                            left: 20,
                            bottom: 0),
                        child: Container(
                          color: Color(0xffdef9e1).withOpacity(0.3),
                          width: size.width * 0.7,
                          height: size.height * 0.18,
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: size.height * 0.02,
                                bottom: size.height * 0.02,
                                right: size.width * 0.01,
                                left: size.width * 0.05),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Charging Power',
                                      style: TextStyle(
                                        fontSize: size.width * 0.05,
                                        color: Color(0xff85C48D),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 100,
                                    ),
                                    RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: '0',
                                            style: TextStyle(
                                                fontSize: size.width * 0.050,
                                                color:
                                                    const Color(0xff85C48D))),
                                        TextSpan(
                                            text: 'w.h',
                                            style: TextStyle(
                                                fontSize: size.width * 0.022,
                                                color:
                                                    const Color(0xff85C48D))),
                                      ]),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Charging Time',
                                      style: TextStyle(
                                        fontSize: size.width * 0.05,
                                        color: Color(0xff85C48D),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 112,
                                    ),
                                    RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: '0',
                                            style: TextStyle(
                                                fontSize: size.width * 0.050,
                                                color:
                                                    const Color(0xff85C48D))),
                                        TextSpan(
                                            text: 'w.h',
                                            style: TextStyle(
                                                fontSize: size.width * 0.022,
                                                color:
                                                    const Color(0xff85C48D))),
                                      ]),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Start Time',
                                      style: TextStyle(
                                        fontSize: size.width * 0.05,
                                        color: Color(0xff85C48D),
                                      ),
                                    ),
                                    SizedBox(
                                      width: size.width * 0.15,
                                    ),
                                    Text(
                                      '2022-24-2  10:52:40',
                                      style: TextStyle(
                                        color: Color(0xff85C48D),
                                        fontSize: size.width * 0.040,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        indent: 25,
                        endIndent: 25,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: size.height * 0.01,
                            right: 20,
                            left: 20,
                            bottom: 0),
                        child: Container(
                          color: Color(0xffdef9e1).withOpacity(0.3),
                          width: size.width * 0.7,
                          height: size.height * 0.18,
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: size.height * 0.02,
                                bottom: size.height * 0.02,
                                right: size.width * 0.01,
                                left: size.width * 0.05),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Charging Power',
                                      style: TextStyle(
                                        fontSize: size.width * 0.05,
                                        color: Color(0xff85C48D),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 100,
                                    ),
                                    RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: '0',
                                            style: TextStyle(
                                                fontSize: size.width * 0.050,
                                                color:
                                                    const Color(0xff85C48D))),
                                        TextSpan(
                                            text: 'w.h',
                                            style: TextStyle(
                                                fontSize: size.width * 0.022,
                                                color:
                                                    const Color(0xff85C48D))),
                                      ]),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Charging Time',
                                      style: TextStyle(
                                        fontSize: size.width * 0.05,
                                        color: Color(0xff85C48D),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 112,
                                    ),
                                    RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: '0',
                                            style: TextStyle(
                                                fontSize: size.width * 0.050,
                                                color:
                                                    const Color(0xff85C48D))),
                                        TextSpan(
                                            text: 'w.h',
                                            style: TextStyle(
                                                fontSize: size.width * 0.022,
                                                color:
                                                    const Color(0xff85C48D))),
                                      ]),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Start Time',
                                      style: TextStyle(
                                        fontSize: size.width * 0.05,
                                        color: Color(0xff85C48D),
                                      ),
                                    ),
                                    SizedBox(
                                      width: size.width * 0.15,
                                    ),
                                    Text(
                                      '2022-24-2  10:52:40',
                                      style: TextStyle(
                                        color: Color(0xff85C48D),
                                        fontSize: size.width * 0.040,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                : Container(
                    width: 0,
                    height: 0,
                  ),
          ),
        ],
      ),
    );
  }
}
