import 'dart:async';
import 'package:energyproject/view/AddDevice.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigateController extends GetxController {
  @override
  void onInit() {
    Timer(Duration(milliseconds: 2000), () {
      Get.to(() => AddDevice());
    });
    super.onInit();
  }
}
