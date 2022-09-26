//import 'package:app_decby/others/custome_widget.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ridy/unregistered_driver_messages_view.dart';
import 'package:ridy/profile/profile_view.dart';

//import '../../login/views/login_view.dart';

class OnBoarding4 extends StatelessWidget {
  const OnBoarding4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.green[800],
          height: double.infinity,
          width: double.infinity,
          /*decoration: BoxDecoration(
            //color: primaryColor
              image: DecorationImage(image: AssetImage("images/slide44.png"),fit: BoxFit.cover)
          ),*/
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

                    height: MediaQuery.of(context).size.width/1.1,
                    decoration: BoxDecoration(image: DecorationImage(image:AssetImage('images/slider44.png'),fit: BoxFit.cover)),
                  ),
                ),
              ],),
              DelayedDisplay(
                slidingBeginOffset: const Offset(0, -0.4),
                delay: const Duration(milliseconds: 300),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text( "et reserved charging points for TukTuk",),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Search for your best match using customised or predefined filters."),
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
              InkWell(
                onTap: ()=> Get.to(const ProfileView(),transition: Transition.upToDown),
                child: DelayedDisplay(
                  slidingBeginOffset: const Offset(0, -0.4),
                  delay: const Duration(milliseconds: 300),
                  child: Container(
                    margin: EdgeInsets.all(20),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    height: MediaQuery.of(context).size.width/7,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Stack(
                      children: const [
                        Center(child: Text('Continue',style:TextStyle( color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,) ,)),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Icon(Icons.arrow_forward_ios,size: 20,color: Colors.white,),
                        )
                      ],
                    ),
                  ),),),
            ],
          ),
        ),
      ),
    );
  }
}