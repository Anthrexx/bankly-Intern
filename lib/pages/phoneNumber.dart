
import 'package:bankly/pages/otp.dart';
import 'package:bankly/pages/third.dart';
import 'package:bankly/pages/utils/secondsplash.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
class phone extends StatefulWidget {
  const phone({Key? key}) : super(key: key);

  @override
  State<phone> createState() => _phoneState();
}

class _phoneState extends State<phone> {
  TextEditingController countrycode = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    countrycode.text="+91";
    super.initState();


  }
  @override
  Widget build(BuildContext context) {

    Size size =MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 255, 244),
      body:  Container(
        margin: EdgeInsets.only(left: 25,right: 25,top: 35),
        // alignment: Alignment.center,

        child:  SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,

          children: [ Row(
            children: [GestureDetector(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Third()),);
              // Get.to(() => Second(),transition:Transition.leftToRight);
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
            Container(height:30,
              alignment: Alignment.topLeft,
              child: Text("Enter your phone Number",style:Theme.of(context).textTheme.headline5?.copyWith(
                color: Color.fromARGB(255, 91, 111, 140),fontWeight: FontWeight.bold,),),
            ),
            SizedBox(height: 0,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:0),
                  child: Text("Make sure to provide your own number. ",style:TextStyle(fontWeight: FontWeight.w500,fontSize: 13,color: Color.fromARGB(255, 99,111,140))),
                ),
              ],

            ),
            SizedBox(height: 7,),
            Container(height: 55,
              decoration:BoxDecoration(border: Border.all(width: 1,color: Colors.black45,),borderRadius: BorderRadius.circular(10)) ,
              child: Stack(
                children: [
                  InternationalPhoneNumberInput(onInputChanged:(value){},
                    keyboardType: TextInputType.number,
                    maxLength:12,

                    cursorColor: Colors.black,
                    inputDecoration: InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 15,left:0),
                      border: InputBorder.none,
                      hintText: 'Phone number',
                      hintStyle: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 16
                      ),
                    ),)                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:15),
                  child: Text("By continuing, you agree to our ",style:TextStyle(fontWeight: FontWeight.w500,fontSize: 17,color: Color.fromARGB(255, 99,111,140))),
                ),InkWell(onTap:(){},child: Text("Terms",style:TextStyle(fontWeight: FontWeight.w500,fontSize: 17,color: Color.fromARGB(255, 36, 211, 181)))),Text(" of use",style:TextStyle(fontWeight: FontWeight.w500,fontSize: 17,color: Color.fromARGB(255, 99,111,140))),
             ],

            ),
            Column(
              children: [
              Row(
                children: [Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text("and ",style:TextStyle(fontWeight: FontWeight.w500,fontSize: 17,color: Color.fromARGB(255, 99,111,140))),
                ),InkWell(onTap:(){},child: Text("Privacy policy",style:TextStyle(fontWeight: FontWeight.w500,fontSize: 17,color: Color.fromARGB(255, 36, 211, 181)))),
                ],
              )],),
            SizedBox(height: 270,),
            SizedBox(
              height: 100,
              width: double.infinity,
              child:  GestureDetector(onTap: (){

                Navigator.push(context, MaterialPageRoute(builder: (context) => otp()),);
              }
                ,child:Container(height: 50,
                  width:50,

                  child:  Image.asset('assets/images/next-btn (1).png' ,),),
              ),

            ),

          ],
        ),
      ),
      ),

    );
  }
}

