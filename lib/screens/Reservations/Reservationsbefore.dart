
import 'package:flutter/material.dart';

import '../../consts/style.dart';

class Reservationsbefore extends StatelessWidget{
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
                       padding: const EdgeInsets.fromLTRB(0, 20, 20, 0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Stack(
                            children: [
                              Container(
                                width:180 ,
                                height:70 ,
                                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)),color: Color(0xFFFFFFFF)),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text("18-5-2023"),
                                        SizedBox(width: 40,),
                                        Icon(Icons.calendar_month),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width:15 ,
                                          height:15 ,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Color(0xFFE91919)),
                                        ),
                                        SizedBox(width: 70,),
                                        Text("فولكزفاكن",style: FontStyle.BlueVSColor,)
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(width: 18,),
                         Stack(
                           children: [
                             Container(
                               width:180 ,
                               height:70 ,
                               decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)),color: Color(0xFFFFFFFF)),
                             ),
                             Padding(
                               padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                               child: Column(
                                 children: [
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.end,
                                     children: [
                                       Text("18-5-2021"),
                                        SizedBox(width: 40,),
                                        Icon(Icons.calendar_month),
                                     ],
                                   ),
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.end,
                                     children: [
                                       Container(
                                         width:15 ,
                                         height:15 ,
                                         decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Color(0xFF000000)),
                                       ),
                                       SizedBox(width: 70,),
                                       Text("فيراري",style: FontStyle.BlueVSColor,)
                                     ],
                                   )
                                 ],
                               ),
                             )
                           ],
                         ),
                        ],
                    ),
                     ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}