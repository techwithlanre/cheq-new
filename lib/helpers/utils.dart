import 'dart:developer' as developer;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void myDebugPrint(dynamic data, {String? errorIn, String? event}) {
  if (errorIn != null) {
    if (kDebugMode) print('****************************** error ******************************');
    developer.log('[Error]', time: DateTime.now(), error:data, name:errorIn);
    if (kDebugMode) print('****************************** error ******************************');
    return;
  }

  if (data != null) {
    developer.log(data, time: DateTime.now(), );
    return;
  }

  if (event != null) {
    // logEvent(event);
  }
}

double fullWidth = Get.width;