import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../account.dart';
import 'Help.dart';
import 'Terms.dart';
import 'nots.dart';
import 'style.dart';
class settings extends StatelessWidget{
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
                             child: Text("الاعدادات", style: FontStyle.BlueSColor,),
                           ),
                         ],
                       ),

                       SizedBox(height: 50,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                         children: [
                           TextButton(
                             onPressed: () {
                               Navigator.pushReplacement(context as BuildContext,
                                   MaterialPageRoute(builder: (context) => nots()));
                             },
                             child: Text(
                               "الاشعارات",
                               style: FontStyle.gray,
                             ),
                           ),
                           Image.asset("lib/consts/pro max/ci_notification.png"),
                           SizedBox(width: 50,)
                         ],
                       ),
                       Divider(
                         height: 20,
                         thickness: 2,
                         indent: 20,
                         endIndent: 0,
                         color: Colors.black,
                       ),
                       SizedBox(height: 10,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                         children: [

                           TextButton(
                             onPressed: () {
                               Navigator.pushReplacement(context as BuildContext,
                                   MaterialPageRoute(builder: (context) => help()));
                             },
                             child: Text(
                               "الخصوصية والامان",
                               style: FontStyle.gray,
                             ),
                           ),
                           Image.asset("lib/consts/pro max/ic_baseline-policy.png"),
                           SizedBox(width: 50,)
                         ],
                       ),
                       Divider(
                         height: 20,
                         thickness: 2,
                         indent: 20,
                         endIndent: 0,
                         color: Colors.black,
                       ),
                       SizedBox(height: 10,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                         children: [
                           TextButton(
                             onPressed: () {
                               Navigator.pushReplacement(context as BuildContext,
                                   MaterialPageRoute(builder: (context) => terms()));
                             },
                             child: Text(
                               "الشروط والاحكام",
                               style: FontStyle.gray,
                             ),
                           ),
                           Image.asset("lib/consts/pro max/bi_list-check.png"),
                           SizedBox(width: 50,)
                         ],
                       ),
                       Divider(
                         height: 20,
                         thickness: 2,
                         indent: 20,
                         endIndent: 0,
                         color: Colors.black,
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