import 'package:flutter/material.dart';
import 'package:bankly/sevices/SplashServices.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashscreen =SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashscreen.islogin(context);
  }
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return  Scaffold(

      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body:  Container(
        // margin: EdgeInsets.only(left: 25,right: 25),
        alignment: Alignment.center,

        child:  SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,

            children: [
            Padding(
              padding: EdgeInsets.only(top: 0,bottom:100,left: 210),child:
              Container(width:size.width*1,child: Image.asset('assets/images/Ellipse 1 (1).png')),),
SizedBox(height: 70,),
                  Image.asset('assets/images/bankly-logo.png',width: 150,height: 150,),
              SizedBox(height: 180,),
              Padding(
                padding: EdgeInsets.only(top: 70,bottom:60,right: 210),child:
              Container(width:size.width*1,child: Image.asset('assets/images/Ellipse 1.png')),),



              ],
            ),
        ),
      ),

    );
  }
}
