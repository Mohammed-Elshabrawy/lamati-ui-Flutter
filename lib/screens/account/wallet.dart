import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../consts/style.dart';

import 'account.dart';

class wallet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Column(
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context as BuildContext,
                                  MaterialPageRoute(
                                      builder: (context) => account()));
                            }, // Image tapped
                            child: Ink.image(
                              image: AssetImage(
                                  "lib/consts/icons/bi_arrow-right.png"),
                              fit: BoxFit.cover, // Fixes border issues
                              width: 30.0,
                              height: 30.0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(280, 0, 0, 0),
                            child: Text("المحفظه", style: FontStyle.BlueSColor,),
                          ),
                        ],
                      ),
                      Image.asset("lib/consts/pro/bx_bx-wallet-altpig.png"),
                      Text("الرصيد المتاح", style: TextStyle(
                        fontSize : 36,
                        fontWeight : FontWeight.w800,
                        color : Color(0x99000000),
                      )
                      ),
                      Text("100 ج م ", style: TextStyle(
                        fontSize : 36,
                        fontWeight : FontWeight.w800,
                        color : Color(0xFF0B3FA8),

                      )
                      ),
                    ],
                  )
              ],
              )

            ],
          ),
        ),
      ),
    );
  }

}