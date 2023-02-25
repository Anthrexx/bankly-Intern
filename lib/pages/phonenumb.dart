import 'package:flutter/material.dart';
class Phonenumb extends StatefulWidget {
  const Phonenumb({Key? key}) : super(key: key);

  @override
  State<Phonenumb> createState() => _PhonenumbState();
}

class _PhonenumbState extends State<Phonenumb> {
  TextEditingController countrycode = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    countrycode.text="+91";
    super.initState();


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        margin: EdgeInsets.only(left: 25,right: 25),
          alignment: Alignment.center,

          child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Image.asset('assets/download.jpg',width: 150,height: 150,),
              Text("Enter Your Phone number",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ,color:Colors.grey ),),
              Text("Make sure to provide your own mumber",style: TextStyle(fontSize: 14,)),
              SizedBox(height: 20,),
              Container(height: 55,
                decoration:BoxDecoration(border: Border.all(width: 1,color: Colors.black45,),borderRadius: BorderRadius.circular(10)) ,
                child: Row(
                  children: [
                    SizedBox(width:40,
                        child:TextField(decoration: InputDecoration(border: InputBorder.none),controller: countrycode,)),SizedBox(width: 10,),Text("|",style: TextStyle(fontSize: 39,color: Colors.grey),),Expanded(child: TextField(decoration: InputDecoration(border: InputBorder.none,hintText: "Phone number")))],
                ),
              ),
             SizedBox(height: 10,),
              Row(children: [ Text("By continuing you agree to our ",style: TextStyle(fontSize: 14,)), Text("Term of use ",style: TextStyle(fontSize: 14,color: Colors.green)), Text("and",style: TextStyle(fontSize: 14,)), Text("Privacy",style: TextStyle(fontSize: 14,color: Colors.green)),
              ],),
             Column(
               children: [Text("Policy",textAlign: TextAlign.center,style: TextStyle(fontSize: 14,color: Colors.green)),],
             ),

             SizedBox(
               height: 300,
             ),
             SizedBox(
               height: 50,
               width: double.infinity,
               child:  ElevatedButton(onPressed: (){
                 Navigator.pushNamed(context, 'otp');
               }, child:  Text("Get OTP",textAlign: TextAlign.center),style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10),
               )),),
             ),
            ],
          ),
        ),
      ),
    );
  }
}
