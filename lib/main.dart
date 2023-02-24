import 'package:cheq/config/route/route_constants.dart';
import 'package:cheq/config/route/routes.dart';
import 'package:cheq/config/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cheq',
      theme: lightTheme,
      initialRoute: RConst.splashScreen,
      getPages: getPages,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: ElevatedButton(
              onPressed: () => "",
              child: Text("Hello"),
            ),
          ),
        ),
      ),
    );
  }
}