import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class Boardingscreen extends StatefulWidget {
   const Boardingscreen({super.key});
  static const router = '/Boardingscreen';

  @override
  State<Boardingscreen> createState() => _BoardingscreenState();
}

class _BoardingscreenState extends State<Boardingscreen> {
  final comtroller=LiquidController();

  int page=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            pages: [
              page1(context),
              page2(context),
              page3(context),
              
            ],
            onPageChangeCallback: onPageChangeCallback,
            
            liquidController: comtroller,
          ),
          Positioned(
            top: 30.0,
            right: 10.0,
            child: TextButton(onPressed: (){
              comtroller.animateToPage(page: 2);
            }, child:const Text('Skip',style: TextStyle(color: Colors.black),)),),
        Positioned( 
            bottom: 130.0,
            right: 10.0,
            child:  SizedBox(
                      width: Get.width * 0.1,
                      height: Get.height * 0.04,
                      child: IconButton(
                        onPressed: () {
                        comtroller.animateToPage(page: page+1);
                        },
                        icon: const Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,
                      ),
                    ),),),
        
                Positioned( 
            bottom: 130.0,
            left: 10.0,
            child:   SizedBox(
                      width: Get.width * 0.1,
                      height: Get.height * 0.04,
                      child: IconButton(
                        onPressed: () {
                        comtroller.animateToPage(page: page-1);
                        },
                        icon: const Icon(Icons.arrow_back_ios_rounded,color: Colors.black,
                      ),
                    ),),),
             const Positioned(
            bottom: 136.0,
            right: 45.0,
            child:  Text('Next',style: TextStyle(color: Colors.black),),),
       
              const Positioned(
            bottom: 136.0,
            left: 45.0,
            child:  Text('Prev',style: TextStyle(color: Colors.black),),),
       
        
        ],)
    );
  }

  Container page3(BuildContext context) {
    return Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(20),
              color: Color.fromARGB(255, 201, 187, 195),
              child:const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Image(image: AssetImage('assets/images/pic3.png'),
                width: 200 ,),
                Column(),
                Text("Third page", style: TextStyle(color: Color.fromARGB(255, 2, 44, 78),fontWeight: FontWeight.bold,fontSize: 20
                ),),
                
                Text('lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                style: TextStyle(color: Color.fromARGB(255, 2, 44, 78),fontWeight: FontWeight.bold,fontSize: 15
                ),
                ),
                SizedBox(height: 100,),
                Text('3/3' ,style: TextStyle(color: Color.fromARGB(255, 2, 44, 78),fontWeight: FontWeight.bold,fontFamily: 'Serif'),
                ),
                
              
              ],)
            );
  }

  Container page2(BuildContext context) {
    return Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(20),
              color: const Color.fromARGB(255, 117, 159, 194),
              child:const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Image(image: AssetImage('assets/images/pic2.png'),
                width: 200,
                ),
                Column(),
                Text("Second page", style: TextStyle(color: Color.fromARGB(255, 2, 44, 78),fontWeight: FontWeight.bold,fontSize: 20
                ),
                ),
                
                Text('lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                style: TextStyle(color: Color.fromARGB(255, 2, 44, 78),fontWeight: FontWeight.bold,fontSize: 15
                ),
                ),SizedBox(height: 100,),
                Text('2/3' ,style: TextStyle(color: Color.fromARGB(255, 2, 44, 78),fontWeight: FontWeight.bold,fontFamily: 'Serif'),
                ),
                
              
              ],)
            );
  }

  Container page1(BuildContext context) {
    return Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(20),
              color: Colors.yellow,
              child:const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  
                Image(image: AssetImage('assets/images/pic1.png'),
                width: 200,
                height: 200,
                ),
                Column(),
                Text("First page", style: TextStyle(color: Color.fromARGB(255, 2, 44, 78),fontWeight: FontWeight.bold,fontSize: 20
                ),),
                
                Text('lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                style: TextStyle(color: Color.fromARGB(255, 2, 44, 78),fontWeight: FontWeight.bold,fontSize: 15
                ),
                ),SizedBox(height: 100,),
                Text('1/3' ,style: TextStyle(color: Color.fromARGB(255, 2, 44, 78),fontWeight: FontWeight.bold,fontFamily: 'Serif'),
                ),
              
              ],)
            );
  }

onPageChangeCallback(int pageindex) {
   page=pageindex;
  }
}