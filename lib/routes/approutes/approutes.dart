import 'package:flutter_application_2/screens/homepage.dart';
import 'package:flutter_application_2/screens/onboardingscreen.dart';
import 'package:get/get.dart';

appRoutes() => [
      GetPage(name: Homepage.router, page: () => const Homepage()),
      GetPage(name: Boardingscreen.router, page: () =>  Boardingscreen()),
             






    ];