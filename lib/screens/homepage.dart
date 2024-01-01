import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/onboardingscreen.dart';
import 'package:get/get.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  static const router = '/Homepage';

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: appBar(),
      body: Padding(
        padding:  EdgeInsets.all(8.0),
        child:  Center(
          child: Column(
            children: [
               const Text('Welcome to sflr appp',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
              ),
              const SizedBox(
                height: 20,
              ),
              IconButton(onPressed:()=>Get.toNamed(Boardingscreen.router),
                
               icon: const Icon(Icons.arrow_forward_ios_rounded))
            ],
          ),
          
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text('Catalog App',
      style: TextStyle(color: Colors.black),),
    backgroundColor: Colors.yellow,
    centerTitle: true,
    elevation: 0.5,
    
    );
  }
}