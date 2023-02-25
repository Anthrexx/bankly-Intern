import 'package:bankly/pages/firstSplash.dart';
import 'package:bankly/pages/pageOne.dart';
import 'package:bankly/pages/phoneNumber.dart';
import 'package:bankly/pages/third.dart';
import 'package:flutter/material.dart';
class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 255, 244),
      body:  Container(
        margin: EdgeInsets.only(left: 25,right: 25,top: 35),
        // alignment: Alignment.center,

        // child:  SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,

            children: [ Row(
              children: [GestureDetector(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => first()),);
              },
                child: Container(
                  height: 50,
                  width: 50,
                  child: Image.asset('assets/images/back-btn.png'),
                ),
              ),Spacer(),SizedBox(height: 26,
                width: 60,
                child:ElevatedButton(onPressed: (){  Navigator.push(context, MaterialPageRoute(builder: (context) => phone()),);}, child:Text("skip",textAlign: TextAlign.center),style: ElevatedButton.styleFrom(primary:Color.fromARGB(255, 255, 255, 255),
                    onPrimary: Color.fromARGB(
                        236, 37, 161, 145),shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),)),),),],
            ),

              SizedBox(height: 120,),
              Container(height: size.height*0.25,
                child: Image.asset('assets/images/target 1.png'),
              ),
              SizedBox(height: 30,),
              Container(height:30,
                child: Image.asset('assets/images/Group 1 (1).png',alignment: Alignment.center,),
              ),
              SizedBox(height: 7,),
              Container(height:30,
                child: Image.asset('assets/images/Set your savings goal.png',alignment: Alignment.center,),
              ),
              SizedBox(height: 7,),
              Container(height:90,
                child: Image.asset('assets/images/This feature lets the teens to set savings goals and track their progress towards achieving them..png',alignment: Alignment.center,),
              ),
              SizedBox(height: 110,),
              SizedBox(
                height: 100,
                width: double.infinity,
                child:  GestureDetector(onTap: (){

    Navigator.push(context, MaterialPageRoute(builder: (context) => Third()),);
    }
                ,child:Container(height: 50,
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
