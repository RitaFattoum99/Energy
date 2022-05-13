import 'dart:async';

import 'package:energyproject/view/page2.dart';
import 'package:energyproject/view/page4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class NavigateController extends GetxController {
  @override
  void onInit() {
    Timer(Duration(milliseconds: 2000), () {
      Get.to(() => Page2());
    });
    super.onInit();
  }
}
