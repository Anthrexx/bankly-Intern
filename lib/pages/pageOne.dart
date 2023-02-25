import 'package:bankly/pages/utils/body.dart';
import 'package:flutter/material.dart';
class Pageone extends StatefulWidget {
  const Pageone({Key? key}) : super(key: key);

  @override
  State<Pageone> createState() => _PageoneState();
}

class _PageoneState extends State<Pageone> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: SingleChildScrollView(child: Body()),
    );
  }
}

AppBar buildAppBar(){
  return AppBar(
    backgroundColor: Colors.black54,
    elevation: 0,
  );
}