import 'dart:async';
import 'package:flutter/material.dart';
import '../one/one.dart';

class Spalshscreen extends StatefulWidget {
  const Spalshscreen({super.key});


  @override
  State<StatefulWidget> createState() {
    return StartState();
  }
}


class StartState extends State<StatefulWidget>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    StartTimer();
  }

  StartTimer() async{
    var duration =  const Duration(seconds: 3);
    return Timer(duration, route);
  }
  route(){
    Navigator.pushReplacement(context as BuildContext,
        MaterialPageRoute(builder: (context) => screenone())
    );
  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
            child: Image.asset('lib/consts/imgs/logo 500×500px 2.png')
        ),
      );

}
}