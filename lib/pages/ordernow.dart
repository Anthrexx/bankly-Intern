
import 'package:bankly/pages/firstSplash.dart';
import 'package:bankly/pages/pageOne.dart';
import 'package:bankly/pages/third.dart';
import 'package:bankly/pages/utils/body.dart';
import 'package:flutter/material.dart';
 class ordernow extends StatefulWidget {

 const ordernow({Key? key}) : super(key: key);

 @override
 State<ordernow> createState() => _ordernowState();
 }

 class _ordernowState extends State<ordernow> {
   var obsecureText = true;
 @override
 Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(254, 31,31,31),
      body:  SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 25,right: 25,top: 35),
          // alignment: Alignment.center,

          // child:  SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,

            children: [ Row(
              children: [GestureDetector(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Pageone()),);
              },
                child: Container(
                  height: 50,
                  width: 50,
                  child: Column(
                    children: [
                      Image.asset('assets/pageone/back-btn (1).png'),
                    ],
                  ),
                ),
              ),Spacer(),],
            ),

              Column(
                children: [
                  SizedBox(height: 30,),

              Container(height: size.height*0.1,
                child: Image.asset('assets/pageone/Your Bankly Card.png'),
              ),
              SizedBox(height: 0,),
              Stack(
                children:[ Container(height:size.height*0.3,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors:[Color.fromARGB(
                          236, 37, 161, 145),Color.fromARGB(
                          236, 37, 161, 145), Color.fromARGB(255, 99,111,140)]
                    ),

                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
   Positioned(top: 25,
         left:20,child: Text("Balance",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w200),)),
                  Positioned(top: 45,
                      left:20,child: Text("₹234,300.32",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w400),)),

                  Positioned(top: 29,
                      left:300,child: Image.asset('assets/order/bankly icon.png'),),
                  Positioned(top: 70,
                    left:10,child:Row(
                        children: [
                          SizedBox(width:50,child: TextFormField(
                            cursorColor: Colors.white,
                            keyboardType: TextInputType.number,
                            maxLength: 4,
                            style: TextStyle(color: Colors.white),
                            obscureText:true,

                          )),SizedBox(width: 10,),SizedBox(width: 50,child: TextFormField( style: TextStyle(color: Colors.white),maxLength: 4,keyboardType: TextInputType.number,obscureText: true,),),SizedBox(width: 10,),SizedBox(width: 50,child: TextFormField( style: TextStyle(color: Colors.white),maxLength: 4,keyboardType: TextInputType.number,obscureText: true,),),SizedBox(width: 10,),SizedBox(width: 50,child: TextFormField(maxLength: 4,
                            style: TextStyle(color: Colors.white),
                            keyboardType: TextInputType.number,obscureText: false,

                          ),),
                          SizedBox(width: 10,),
                          IconButton(onPressed: (){
                            obsecureText=false;

                          }, icon:Icon(Icons.remove_red_eye,color: Colors.white,))

                        ],
                      )),
                  Positioned(top: 175,
                      left:10,child: Text("Card holder name",style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w300),)),
                  Positioned(top: 195,
                      left:10,child: Text("John Dahmer",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400),)),
                  Positioned(top: 175,
                      left:260,child: Text("Expiry date",style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w300),)),
                  Positioned(top: 195,
                      left:260,child: Text("02/30",style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.w200),)),

                ],
              ),

              

              SizedBox(height: 50,),
              SizedBox(height: 56,
                width:320,child: ElevatedButton(onPressed: (){

                }, child: Text("How to use my card?"),style: ElevatedButton.styleFrom(primary:Color.fromARGB(255, 41,41,41),
                  onPrimary: Color.fromARGB(
                      255,255,255,255),shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),),),),),
              SizedBox(height: 16,),
              SizedBox(height: 56,
                width:320,child: ElevatedButton(onPressed: (){

                }, child: Text("Order?"),style: ElevatedButton.styleFrom(primary:Color.fromARGB(255, 41,41,41),
                  onPrimary: Color.fromARGB(
                      255,255,255,255),shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),),),),),
              SizedBox(height: 16,),
              SizedBox(height: 56,
                width:320,child: ElevatedButton(onPressed: (){

                }, child: Text("Transactions"),style: ElevatedButton.styleFrom(primary:Color.fromARGB(255, 41,41,41),
                  onPrimary: Color.fromARGB(
                      255,255,255,255),shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),),),),),
    SizedBox(height: 20,),
    Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:15),
            child: Text("Already have a bankly card? ",style:TextStyle(fontWeight: FontWeight.w500,fontSize: 20,color: Color.fromARGB(255, 255, 255, 255))),
          ),InkWell(onTap:(){},child: Text("Activate",style:TextStyle(fontWeight: FontWeight.w500,fontSize: 20,color: Color.fromARGB(255, 36, 211, 181)))),
        ],
    ),

],),

            ],
          ),
        ),
      ),


    );
  }
}

