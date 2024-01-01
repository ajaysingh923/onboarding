import 'package:flutter/material.dart';
import 'package:flutter_application_2/routes/approutes/approutes.dart';
import 'package:flutter_application_2/screens/onboardingscreen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  
     GetMaterialApp(
      
        home:  Boardingscreen(),
        debugShowCheckedModeBanner: false,
        getPages: appRoutes(),
      
    );
  }
}
