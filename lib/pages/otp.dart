

import 'package:bankly/pages/pageOne.dart';
import 'package:bankly/pages/phoneNumber.dart';
import 'package:bankly/pages/phonenumb.dart';
import 'package:bankly/pages/utils/secondsplash.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class otp extends StatefulWidget {
  const otp({Key? key}) : super(key: key);

  @override
  State<otp> createState() => _otpState();
}

class _otpState extends State<otp> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 255, 244),
      body:  Container(
        margin: EdgeInsets.only(left: 25,right: 25,top: 35),
        // alignment: Alignment.center,


          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,

            children: [ Row(
              children: [GestureDetector(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => phone()),);
              },
                child: Container(
                  height: 50,
                  width: 50,
                  child: Image.asset('assets/images/back-btn.png'),
                ),
              ),Spacer(),],
            ),

              SizedBox(height: 50,),
              Container(height: size.height*0.18,
                child: Image.asset('assets/images/bankly-logo.png'),
              ),
              SizedBox(height: 0,),
              Container(height:40,
                alignment: Alignment.topLeft,
                child: Text("Enter the otp to verify your phone\nNumber",style:Theme.of(context).textTheme.headline6?.copyWith(
                  color: Color.fromARGB(255, 91, 111, 140),fontWeight: FontWeight.bold,)),
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:0),
                    child: Text("OTP sent to +91 00000 0000",style:TextStyle(fontWeight: FontWeight.w500,fontSize: 17,color: Color.fromARGB(255, 99,111,140))),
                  ),InkWell(onTap:(){},child: Text(" edit",style:TextStyle(fontWeight: FontWeight.w500,fontSize: 17,color: Color.fromARGB(255, 36, 211, 181)))),
                ],

              ),
              SizedBox(height: 16,),

      Pinput(

        // validator: (s) {
        //   return s == '2222' ? null : 'Pin is incorrect';
        // },
        pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
        showCursor: true,
        onCompleted: (pin) => print(pin),
      ),
              SizedBox(height: 299.99,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:0,bottom: 8),
                    child: Text("Resent OTP",style:TextStyle(fontWeight: FontWeight.w500,fontSize: 17,color: Color.fromARGB(255, 99,111,140))),
                  ),Spacer(),Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 20),
                    child: InkWell(onTap:(){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Pageone()));
                    },child: Container(height: 100,child: Image.asset('assets/order/next-btn (2).png',fit: BoxFit.fitHeight,),)),
                  ),  ],

              ),


            ],
          ),
        ),


    );
  }
}


