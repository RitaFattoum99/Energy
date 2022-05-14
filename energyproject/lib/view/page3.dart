import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'page4.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

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
                'Add charger',
                style: TextStyle(color: Color(0xff85C48D), fontSize: 20),
              )),
            )
          ],
        ),
        const Divider(),
        Padding(
          padding: EdgeInsets.only(
            top: size.height * 0.01,
            left: size.width * 0.2,
          ),
          child: Center(
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: size.width * 0.01,
                  ),
                  child: Text(
                    'Bluetooth Scanning ',
                    style: TextStyle(color: Color(0xff2BB6C7), fontSize: 20),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.08,
                  height: size.height * 0.08,
                  child: Image.asset(
                    'images/bluetooth.png',
                    scale: 0.9,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(top: size.height * 0.01, left: size.width * 0.05),
          child: TextButton(
            onPressed: () {
              showModalBottomSheet(
                  backgroundColor: Color.fromARGB(255, 219, 238, 238),
                  context: context,
                  builder: (context) {
                    return Wrap(children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: size.height * 0.02, left: size.width * 0.05),
                        child: Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: size.height * 0.01,
                                    left: size.width * 0.05),
                                child: TextButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return Theme(
                                              data: ThemeData.light(),
                                              child: CupertinoAlertDialog(
                                                title: Text(
                                                  'Please input SN',
                                                  style: TextStyle(
                                                      color: Color(0xff2BB6C7),
                                                      fontSize: 20),
                                                ),
                                                content: Card(
                                                  color: Colors.transparent,
                                                  elevation: 0.0,
                                                  child: Column(
                                                    children: [
                                                      TextField(
                                                        decoration:
                                                            InputDecoration(
                                                                enabledBorder:
                                                                    OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Color(0xff50A75B),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                                20)),
                                                                disabledBorder:
                                                                    OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Color(0xff50A75B),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                                20)),
                                                                contentPadding:
                                                                    EdgeInsets.symmetric(
                                                                        vertical:
                                                                            0.5),
                                                                fillColor: Color(
                                                                    0xffF8FCFC)),
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
                                                          color:
                                                              Color(0xff2BB6C7),
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  MaterialButton(
                                                    onPressed: () {
                                                      Get.to(() => Page4());
                                                    },
                                                    child: const Text(
                                                      "OK",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff2BB6C7),
                                                          fontSize: 20),
                                                    ),
                                                  )
                                                ],
                                              ));
                                        });
                                  },
                                  child: Text(
                                    "Need Get Charging Pile Sn",
                                    style: TextStyle(
                                        color: Color(0xff2BB6C7), fontSize: 20),
                                  ),
                                ),
                              ),
                              const Divider(),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: size.height * 0.01,
                                    left: size.width * 0.01,
                                    bottom: size.height * 0.01),
                                child: Text(
                                  "Scan QR Code",
                                  style: TextStyle(
                                      color: Color(0xff85C48D), fontSize: 20),
                                ),
                              ),
                              const Divider(),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: size.height * 0.01,
                                    left: size.width * 0.01,
                                    bottom: size.height * 0.01),
                                child: Text(
                                  "Manual input",
                                  style: TextStyle(
                                      color: Color(0xff85C48D), fontSize: 20),
                                ),
                              ),
                              const Divider(),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: size.height * 0.01,
                                    left: size.width * 0.01,
                                    bottom: size.height * 0.03),
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(
                                      color: Color(0xff85C48D), fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]);
                  });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/bluetooth (1).png",
                  scale: 1.5,
                ),
                Expanded(
                    child: new ListTile(
                  title: Text(
                    'Name:HB53356465',
                    style: TextStyle(color: Color(0xff85C48D), fontSize: 20),
                  ),
                  subtitle: Text('Device ID: C9:8E:D3:4B:9C:70'),
                )),
                Icon(
                  Icons.arrow_forward_ios,
                  color: const Color(0xff85C48D),
                  size: 20,
                ),
              ],
            ),
          ),
        ),
        const Divider(),
        Center(
          child: Padding(
            padding: EdgeInsets.only(
                top: size.height * 0.03, left: size.width * 0.02),
            child: Text(
              'Disconnected ',
              style: TextStyle(color: Color(0xff85C48D), fontSize: 20),
            ),
          ),
        ),
      ],
    ));
  }
}
