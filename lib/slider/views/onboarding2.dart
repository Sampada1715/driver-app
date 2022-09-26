//import 'package:app_decby/others/custome_widget.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            //color: primaryColor
              image: DecorationImage(image: AssetImage("images/slider22.png"),fit: BoxFit.cover)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(children: [
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {
                      Get.toNamed('/login');
                    },
                    child: const Text('Skip'),
                  ),
                ),

                DelayedDisplay(
                  delay: Duration(milliseconds: 300),
                  child: Container(
                    color: Colors.green[800],
                    height: MediaQuery.of(context).size.width/1.1,
                    //decoration: BoxDecoration(image: DecorationImage(image:AssetImage('images/slider22.png'),fit: BoxFit.cover)),
                  ),
                ),
              ],),
              DelayedDisplay(
                slidingBeginOffset: const Offset(0, -0.4),
                delay: const Duration(milliseconds: 300),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Track your earning at a glance",),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Search for your best match using customised or predefined filters.",),
                    ),
                  ],),
              ),
              DelayedDisplay(
                slidingBeginOffset: const Offset(0, -0.4),
                delay: const Duration(milliseconds: 300),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.width/6,
                    width: double.infinity,
                    child: Stack(
                      children: const [
                        Align(
                          alignment: Alignment.center,
                          child: Text('Get Started'),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Icon(Icons.arrow_forward_ios,size: 20,),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
