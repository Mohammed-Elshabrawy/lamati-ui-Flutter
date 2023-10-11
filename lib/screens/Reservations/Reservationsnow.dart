
import 'package:flutter/material.dart';

import '../../consts/style.dart';

class Reservationsnow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppConsts.mainColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      "lib/consts/imgs/Vector.png",
                      height: 236,
                      width: 500,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                      child: Column(
                        children: [
                          Center(child: Image.asset("lib/consts/icons/forbidden 1.png"),),
                          Text("عفوا لا يوجد حجوزات حاليه" ,style: FontStyle.BlackBColore,),
                        ],
                      ),
                    )

                  ],
                ),

              ],
            ),
          ),
        ),
    );
  }
}