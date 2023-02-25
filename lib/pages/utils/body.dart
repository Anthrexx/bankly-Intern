
import 'package:bankly/pages/ordernow.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body>
with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    tabController= TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(color: Color.fromARGB(255, 255,255,255),),


      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              // it will cover 20% of height
              height: size.height*0.67,
              child: Stack(
children: [
  Container( height: size.height*0.63,

      padding:  EdgeInsets.only(
        left: 1,
        right: 5,
        bottom:200,
      ),
      child: Row(
        children: [
           Column(

            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 48.0,left: 0),
                child: Text("Good Afternoon \nJhon",style:Theme.of(context).textTheme.headline6?.copyWith(
                  color: Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold,fontSize: 29)),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 48.0,left:130),
                child: Text("Total Balance",style:Theme.of(context).textTheme.headline6?.copyWith(
                    color: Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.w100,fontSize: 29)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0,left:130),
                child: Text("₹234,300.32",style:Theme.of(context).textTheme.headline6?.copyWith(
                    color: Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.w300,fontSize: 29)),
              ),
SizedBox(height: 17,),
Column(
  children: [Row(
    children: [Padding(
      padding: const EdgeInsets.only(left:120),
      child: SizedBox(height: 28,

        child:ElevatedButton(onPressed: (){}, child:Text("Pay"+" "+">",textAlign: TextAlign.center),style: ElevatedButton.styleFrom(primary:Color.fromARGB(255, 47, 47, 47),
            onPrimary: Color.fromARGB(
                255, 241, 241, 241),shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),)),),),
    ),
    Padding(padding: EdgeInsets.only(left:50),child: SizedBox(height: 29,
      child:ElevatedButton(onPressed: (){}, child:Text("Add +",textAlign: TextAlign.center),style: ElevatedButton.styleFrom(primary:Color.fromARGB(255, 47, 47, 47),
          onPrimary: Color.fromARGB(
              255, 241, 241, 241),shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),)),),),)],
  ),

 ],
),
          ],
          ),

       Spacer(), Padding(padding:   EdgeInsets.only(
              left: 5,
              top: 0,
              right: 17,
              bottom:160,
            ),child: InkWell(onTap: (){},
              child: Container(
                height: 60,
                width: 60,
                child: Image.asset('assets/images/notification-icon (1).png'),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              ),
            ),
          ),

              ], ) ,
                  decoration: BoxDecoration(color:Color.fromARGB(
                      255, 10, 10, 10),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(26),
                    bottomRight: Radius.circular(26),
                  ),
              ),
        ),SizedBox(height: 0,),
  SingleChildScrollView(
    child:   Column(

      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 305.0,bottom:0,left: 68,right:0),
          child: Image.asset('assets/pageone/Line 1.png'),
        )],
    ),
  ),

  SizedBox(height: 10,),
  SingleChildScrollView(
    child:   Column(

      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 350.0,bottom:0,left: 3,right:0),
          child: Image.asset('assets/pageone/Rectangle.png'),
        )],
    ),
  ),
  Positioned(
    bottom: 0,
    left: 0,
    right: 0,
    child: InkWell(
      onTap: (){},
      child: Container(
        margin: EdgeInsets.fromLTRB(15, 30, 15, 0),
        height: 80,
        child: Icon(Icons.keyboard_arrow_down,color: Colors.white70,size: 40),
        decoration: BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
          boxShadow: [BoxShadow(offset:Offset(0,10),
            blurRadius: 50,
            color:Colors.white70.withOpacity(0.23),
          ),],
        ),
      ),
    ),
  ),
],
        ),
            ),

            //tab button
            Padding(padding: EdgeInsets.only(left:3),
              child: Column(
                children: [
                  SizedBox(height: 5,),
                  Container(
                    height: 60,



                 child: Row(mainAxisAlignment: MainAxisAlignment.end,

children: [InkWell(
  child:   Container(

    child: Image.asset('assets/pageone/request-btn.png')
  ),
),
Spacer(),InkWell(
    child:   Container(
        child: Image.asset('assets/pageone/request-btnr.png')
    ),
  ),],

                 ),),
                ],
              ),
            ),
SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  padding:  EdgeInsets.only(
                    left: 12,
                    right: 12,
                    bottom:0,
                  ),
                  height: 24,
                  child: Stack(
                    children: [ Text("Your Rewards",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ,color:Color.fromARGB(255, 99, 111, 140) ),),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),

            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(left:10,right: 10),

                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding:EdgeInsets.all(5.0),
                      child: InkWell(
                        child: Container(
                          width: 320,
                          height: 50,
                          alignment: Alignment.topLeft,
                          decoration:BoxDecoration(
                              // color: Colors.amberAccent,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 1.5,
                                color: Color.fromARGB(255, 179, 120, 255),
                              ),

                            ),
                      // child:SingleChildScrollView(

                        child: Row(

                          mainAxisAlignment: MainAxisAlignment.end,
                          children:[Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.only(left:0,bottom: 0,top:20),child: Image.asset('assets/pageone/Entertainment.png')),
                              Padding(
                                padding: const EdgeInsets.only(top:30,left:0),
                                child: Text("2334 Points",style:Theme.of(context).textTheme.headline6?.copyWith(
                                    color: Color.fromARGB(255, 112, 0,255 ),fontWeight: FontWeight.w500,fontSize: 26)),
                              ),
                            ],
                          ),

                            Padding(padding: EdgeInsets.only(left:10,bottom: 0,top:0),child: Image.asset('assets/pageone/image 2.png')),
                          ],

                        ),

                       ),
                      ),
                    ),
                    Padding(
                      padding:EdgeInsets.all(5.0),
                      child: InkWell(
                        child: Container(
                          width: 320,
                          height: 50,
                          alignment: Alignment.topLeft,
                          decoration:BoxDecoration(
                            // color: Colors.amberAccent,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1.5,
                              color: Color.fromARGB(247, 28, 255, 128),
                            ),

                          ),
                          // child:SingleChildScrollView(

                          child: Row(

                            mainAxisAlignment: MainAxisAlignment.end,
                            children:[Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(padding: EdgeInsets.only(left:0,bottom: 0,top:20),child:Text("Shopping ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ,color:Color.fromARGB(255, 99, 111, 140) ),),),
                                Padding(
                                  padding: const EdgeInsets.only(top:30,left:0),
                                  child: Text("1433 Points",style:Theme.of(context).textTheme.headline6?.copyWith(
                                      color: Color.fromARGB(236, 0, 255, 166),fontWeight: FontWeight.w500,fontSize: 26)),
                                ),
                              ],
                            ),

                              Padding(padding: EdgeInsets.only(left:10,bottom: 0,top:0),child: Image.asset('assets/pageone/image 2.png')),
                            ],

                          ),

                        ),
                      ),
                    ),
                    Padding(
                      padding:EdgeInsets.all(5.0),
                      child: InkWell(
                        child: Container(
                          width: 320,
                          height: 50,
                          alignment: Alignment.topLeft,
                          decoration:BoxDecoration(
                            // color: Colors.amberAccent,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1.5,
                              color:Color.fromARGB(249, 232, 135, 9),
                            ),

                          ),
                          // child:SingleChildScrollView(

                          child: Row(

                            mainAxisAlignment: MainAxisAlignment.end,
                            children:[Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(padding: EdgeInsets.only(left:0,bottom: 0,top:20),child: Text("Shopping ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ,color:Color.fromARGB(255, 99, 111, 140) ),),),
                                Padding(
                                  padding: const EdgeInsets.only(top:30,left:0),
                                  child: Text("1023 Points",style:Theme.of(context).textTheme.headline6?.copyWith(
                                      color: Color.fromARGB(249, 255, 179, 48),fontWeight: FontWeight.w500,fontSize: 26)),
                                ),
                              ],
                            ),

                              Padding(padding: EdgeInsets.only(left:10,bottom: 0,top:0),child: Image.asset('assets/pageone/image 2.png')),
                            ],

                          ),

                        ),
                      ),
                    ),
                    Padding(
                      padding:EdgeInsets.all(5.0),
                      child: InkWell(
                        child: Container(
                          width: 320,
                          height: 50,
                          alignment: Alignment.topLeft,
                          decoration:BoxDecoration(
                            // color: Colors.amberAccent,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1.5,
                              color: Color.fromARGB(249, 232, 217, 86),
                            ),

                          ),
                          // child:SingleChildScrollView(

                          child: Row(

                            mainAxisAlignment: MainAxisAlignment.end,
                            children:[Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(padding: EdgeInsets.only(left:0,bottom: 0,top:20),child:  Text("Travel",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ,color:Color.fromARGB(255, 99, 111, 140) ),),),
                                Padding(
                                  padding: const EdgeInsets.only(top:30,left:0),
                                  child: Text("234 Points",style:Theme.of(context).textTheme.headline6?.copyWith(
                                      color: Color.fromARGB(249, 238, 220, 104),fontWeight: FontWeight.w500,fontSize: 26)),
                                ),
                              ],
                            ),

                              Padding(padding: EdgeInsets.only(left:10,bottom: 0,top:0),child: Image.asset('assets/pageone/image 2.png')),
                            ],

                          ),

                        ),
                      ),
                    ),
                  //goes here
                  ],

                ),

              ),
            ),




            //EXPLORE CATEOGORIES
            SizedBox(height: 10,),
            Row(
              children: [
                Container(
                  padding:  EdgeInsets.only(
                    left: 12,
                    right: 12,
                    bottom:0,
                  ),
                  height: 24,
                  child: Stack(
                    children: [ Text("Explore Categories",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ,color:Color.fromARGB(255, 99, 111, 140) ),),
                    ],
                  ),
                ),
              ],
            ),
            //EXPLORE VIEW
            SizedBox(height: 20,),
            SingleChildScrollView(
              child: Container( margin: EdgeInsets.only(left:10,right: 10),
                child: Column(
                  children: [Row(children: [
                    Column(
                      children: [
                        InkWell(
                          child: Container(
                            height: 89,
                            width: 89,
                            child: Image.asset("assets/pageone/diet (1) 1.png",),
                            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white,border: Border.all(width: .6,color: Color.fromARGB(255, 99, 111, 140))),

                          ),
                        ),
                        Text(("Food"),style:TextStyle(fontWeight: FontWeight.w700))
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        InkWell(
                          child: Container(
                            height: 89,
                            width: 89,
                            child: Image.asset("assets/pageone/travel-luggage 1.png",),
                            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white,border: Border.all(width: .6,color: Color.fromARGB(255, 99, 111, 140))),

                          ),
                        ),
                        Text(("Travel"),style:TextStyle(fontWeight: FontWeight.w700))
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        InkWell(
                          child: Container(
                            height: 89,
                            width: 89,
                            child: Image.asset("assets/pageone/shopping-bag 1.png",),
                            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white,border: Border.all(width: .6,color: Color.fromARGB(255, 99, 111, 140))),

                          ),
                        ),
                        Text(("Shopping"),style:TextStyle(fontWeight: FontWeight.w700))
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        InkWell(
                          child: Container(
                            height: 89,
                            width: 89,
                            child: Image.asset("assets/pageone/education 1.png",),
                            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white,border: Border.all(width: .6,color: Color.fromARGB(255, 99, 111, 140))),

                          ),
                        ),
                        Text(("Education"),style:TextStyle(fontWeight: FontWeight.w700) ,)
                      ],
                    ),

                  ],

                  ),],
                ),
              ),
            ),
        //    SECOND VIEW
            SizedBox(height: 20,),
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(left:10,right: 10),
                child: Column(
                  children: [Row(children: [
                    Column(
                      children: [
                        InkWell(
                          child: Container(
                            height: 89,
                            width: 89,
                            child: Image.asset("assets/pageone/mental-health 1.png",),
                            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white,border: Border.all(width: .6,color: Color.fromARGB(255, 99, 111, 140))),

                          ),
                        ),
                        Text(("Entertainment"),style:TextStyle(fontWeight: FontWeight.w700) ,)
                      ],
                    ),
                    Spacer(),Column(
                      children: [
                        InkWell(
                          child: Container(
                            height: 89,
                            width: 89,
                            child: Image.asset("assets/pageone/personal-care 1.png",),
                            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white,border: Border.all(width: .6,color: Color.fromARGB(255, 99, 111, 140))),

                          ),
                        ),
                        Text(("Personal Care"),style:TextStyle(fontWeight: FontWeight.w700) ,)
                      ],
                    ),
                    Spacer(),Column(
                      children: [
                        InkWell(
                          child: Container(
                            height: 89,
                            width: 89,
                            child: Image.asset("assets/pageone/transportation 1.png",),
                            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white,border: Border.all(width: .6,color: Color.fromARGB(255, 99, 111, 140))),

                          ),
                        ),
                        Text(("Transportation"),style:TextStyle(fontWeight: FontWeight.w700) ,)
                      ],
                    ),
                    Spacer(),Column(
                      children: [
                        InkWell(
                          child: Container(
                            height: 89,
                            width: 89,
                            child: Image.asset("assets/pageone/magic-box 1.png",),
                            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white,border: Border.all(width: .6,color: Color.fromARGB(255, 99, 111, 140))),

                          ),
                        ),
                        Text(("Miscellaneous"),style:TextStyle(fontWeight: FontWeight.w700) ,)
                      ],
                    ),

                  ],

                  ),],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Container(
                  padding:  EdgeInsets.only(
                    left: 5,
                    right: 12,
                    bottom:0,
                  ),
                  height: 24,
                  child:Column(
                    children: [ Text("Hey Jhon,you might like this",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ,color:Color.fromARGB(255, 99, 111, 140) ),),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            SingleChildScrollView(
              padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
              child: Container(
                alignment: Alignment.topLeft,
                width: 420,
                height: 200,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 36, 211, 181)),
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [Column(
                    children: [ Padding(
                      padding: const EdgeInsets.only(top: 14.0,left: 7),
                      child: Text("Order your welcome kit for FREE\n\n Welcome kits includes-\n.Free bankly badge\n.Free bankly T-shirt \n.Free freebies",style: TextStyle(fontSize: 17.3,fontWeight: FontWeight.w300 ,color:Color.fromARGB(255, 255,255,255) ),),
                    ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 0,top: 21),
                      //   child: Text("Welcome kits includes-",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600 ,color:Color.fromARGB(255, 255,255,255) ),),
                      // ), Padding(
                      //   padding: const EdgeInsets.only(left: 0,top: 6),
                      //   child: Text(".Free bankly badge\n.Free bankly T-shirt \n.Free freebies",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400 ,color:Color.fromARGB(255, 255,255,255) ),),
                      // ),
                      SizedBox(height: 10,),
                      SizedBox(height: 40,
                        width:190,child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ordernow()),);
                        }, child: Text("Order Now"),style: ElevatedButton.styleFrom(primary:Color.fromARGB(255, 144, 228, 160),
                          onPrimary: Color.fromARGB(
                              255,255,255,255),shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),),),),)
                    ],
                  ),
                    Spacer(),Padding(
                      padding: const EdgeInsets.only(left: 0,top:37),
                      child: Image.asset('assets/pageone/open-box 1.png',fit: BoxFit.fitWidth,),
                    )],

                ),),),




            //PLAY CARD
            SizedBox(height: 20,),
            SingleChildScrollView(
              child: Row(
                children: [
                  Container(
                    padding:  EdgeInsets.only(
                      left: 5,
                      right: 12,
                      bottom:0,
                    ),
                    height: 24,
                    child: Stack(
                      children: [ Text("Use Bankly and and get",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ,color:Color.fromARGB(255, 99, 111, 140) ),),

                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            SingleChildScrollView(
              child: Container(

                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding:EdgeInsets.all(5.0),
                      child: InkWell(
                        child: Container(
                          height: 40,
                          width: 150,
                          decoration:BoxDecoration(
                            color: Color.fromARGB(255, 30, 30, 30),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2,
                              color: Color.fromARGB(255, 30, 30, 30),
                            ),

                          ),
                          child:  Padding(
                            padding: const EdgeInsets.only(top:0,left: 0),
                            child: Image.asset('assets/pageone/Screenshot__23_-removebg-preview-removebg-preview.png',fit: BoxFit.fitHeight,),
                          ),    ),
                      ),
              ),

                    Padding(
                      padding:EdgeInsets.all(5.0),
                      child: InkWell(
                        child: Container(
                          width: 150,
                          height: 38,
                          decoration:BoxDecoration(
                            color: Color.fromARGB(255, 30, 30, 30),
                            borderRadius: BorderRadius.circular(10),
                            // border: Border.all(width: 2,
                            //   color: Color.fromARGB(255, 30, 30, 30),
                            // ),

                          ),
                          child:  Padding(
                            padding: const EdgeInsets.only(top: 0,left: 0),
                            child: Image.asset('assets/pageone/Screenshot__24_-removebg-preview.png',fit: BoxFit.fitHeight,),
                          ),    ),
                      ),
                    ),

                    Padding(
                      padding:EdgeInsets.all(5.0),
                      child: InkWell(
                        child: Container(
                          height: 40,
                          width: 145,
                          decoration:BoxDecoration(
                            color: Color.fromARGB(255, 30, 30, 30),
                            borderRadius: BorderRadius.circular(10),
                            // border: Border.all(width: 2,
                            //   color: Color.fromARGB(255, 30, 30, 30),
                            ),


                          child:   Padding(
                            padding: const EdgeInsets.only(top: 0,right: 25),
                            child: Image.asset('assets/pageone/Screenshot__25_-removebg-preview.png',fit: BoxFit.fitHeight,),
                          ),    ),
                      ),
                    ),

    SizedBox(height: 20,),


    ],
    ),
    ),
            ),   SizedBox(height: 20,), Row(
              children: [
                Container(
                  padding:  EdgeInsets.only(
                    left: 5,
                    right: 12,
                    bottom:0,
                  ),
                  height: 24,
                  child: Stack(
                    children: [ Text("Use Bankly and and get",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ,color:Color.fromARGB(255, 99, 111, 140) ),),
                    ],
                  ),
                ),
              ],
            ),SizedBox(height: 20,),
    SingleChildScrollView(
    padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
    child: Container(
    width: 420,
    height: 200,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
    color: Color.fromARGB(255, 36, 211, 181)),
    child: Row(mainAxisAlignment: MainAxisAlignment.start,
      children: [Column(
        children: [ Padding(
          padding: const EdgeInsets.only(top: 14.0),
          child: Text("Bring your Card",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700 ,color:Color.fromARGB(255, 255,255,255) ),),
        ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0,top: 30),
            child: Text("Only for 200/-",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900 ,color:Color.fromARGB(255, 255,255,255) ),),
          ),
          SizedBox(height: 30,),
          SizedBox(height: 40,
              width:120,child: ElevatedButton(onPressed: (){}, child: Text("Book Now"),style: ElevatedButton.styleFrom(primary:Color.fromARGB(255, 255, 255, 255),
                onPrimary: Color.fromARGB(
                    255,31,31,31),shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),),),),)
        ],
      ),
        Spacer(),Padding(
          padding: const EdgeInsets.only(left: 0.5,top:20),
          child: Image.asset('assets/pageone/image 3 (1).png',fit: BoxFit.fitWidth,),
        )],

    ),),),

],  ),
    ),
    );


  }
}
