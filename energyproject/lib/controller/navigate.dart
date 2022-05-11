import 'dart:async';

import 'package:energyproject/view/page2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/page3.dart';

class NavigateController extends GetxController {
  @override
  void onInit() {
    Timer(Duration(milliseconds: 2000), () {
      Get.to(() => Page2());
    });
    super.onInit();
  }
}
