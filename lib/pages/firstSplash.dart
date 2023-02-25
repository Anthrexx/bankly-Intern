import 'package:bankly/pages/pageOne.dart';
import 'package:bankly/pages/phoneNumber.dart';
import 'package:bankly/pages/utils/secondsplash.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first>
{
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 237, 255, 244),
    body:  Container(
    margin: EdgeInsets.only(left: 25,right: 25,top: 50),
    // alignment: Alignment.center,

    // child:  SingleChildScrollView(
    child: Column(
    // mainAxisAlignment: MainAxisAlignment.center,

    children: [ Row(
      children: [Spacer(),SizedBox(height: 26,
        width: 60,
        child:ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => phone()),);
        }, child:Text("skip",textAlign: TextAlign.center),style: ElevatedButton.styleFrom(primary:Color.fromARGB(255, 255, 255, 255),
            onPrimary: Color.fromARGB(
              236, 37, 161, 145),shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),)),),),],
    ),

   SizedBox(height: 140,),
   Container(height: size.height*0.25,
     child: Image.asset('assets/images/2065283 1.png'),
   ),
      SizedBox(height: 30,),
      Container(height:30,
        child: Image.asset('assets/images/Group 1.png',alignment: Alignment.center,),
      ),
      SizedBox(height: 7,),
      Container(height:30,
        child: Image.asset('assets/images/Track your budget (1).png',alignment: Alignment.center,),
      ),
      SizedBox(height: 7,),
      Container(height:90,
        child: Image.asset('assets/images/The budget feature allows teens to track their spending, set savings goals, and receive educational resources to help them understand important financial concepts..png',alignment: Alignment.center,),
      ),
      SizedBox(height: 100,),
      SizedBox(
        height: 100,
        width: double.infinity,
        child:  GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Second()),);

            // Get.to(() => Second(),transition:Transition.rightToLeft);
          },
        child:Container(height: 50,
          width:50,

          child:  Image.asset('assets/images/next-btn (1).png' ,),),
      ),

      ),
    ],
    ),
    ),

    );
  }
}
