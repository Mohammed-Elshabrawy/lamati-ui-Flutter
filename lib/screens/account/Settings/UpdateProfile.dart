import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../consts/style.dart';
import '../account.dart';

class updateProfile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: SafeArea(
       child: SingleChildScrollView(
         child: Column(

           children: [
             Stack(
               alignment: AlignmentDirectional.topCenter,
               children: [
                 Image.asset(
                   "lib/consts/imgs/Vector.png",
                   height: 236,
                   width: 500,
                 ),

                   Padding(
                     padding: const EdgeInsets.fromLTRB(15, 60, 15, 8),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.end,
                       children:[ Padding(
                         padding: const EdgeInsets.fromLTRB(0,0,110,0),
                         child: Image.asset(
                           "lib/consts/icons/Frame.png",
                         ),
                       ),
                         SizedBox(height: 20,),
                         Text(
                           "البريد الالكتروني",
                           textAlign: TextAlign.start,
                         ),
                         const TextField(
                           decoration: InputDecoration(
                             hintText: "محمد الشبراوي",
                             hintStyle: FontStyle.BlacksColore,
                             hintTextDirection: TextDirection.rtl,
                             filled: true,
                             fillColor: Color(0xFFE1E6F1),
                             enabledBorder: OutlineInputBorder(
                                 borderSide: BorderSide(width:5 ,
                                     color:Color(0xFFC5D4F5) ),
                                 borderRadius: BorderRadius.all(Radius.circular(15))
                             ),
                           ),
                         ),
                         Text(
                           "كلمة المرور",
                           textAlign: TextAlign.start,
                         ),
                         const TextField(
                           decoration: InputDecoration(
                             hintText: "Sample@mail.com",
                             hintStyle: FontStyle.BlacksColore,
                             hintTextDirection: TextDirection.rtl,
                             filled: true,
                             fillColor: Color(0xFFE1E6F1),
                             enabledBorder: OutlineInputBorder(
                                 borderSide: BorderSide(width:5 ,
                                     color:Color(0xFFC5D4F5) ),
                                 borderRadius: BorderRadius.all(Radius.circular(15))
                             ),
                           ),
                         ),
                         Text(
                           "رقم الهاتف",
                           textAlign: TextAlign.start,
                         ),
                         const TextField(
                           decoration: InputDecoration(
                             hintText: "5XXX1234534",
                             hintStyle: FontStyle.BlacksColore,
                             hintTextDirection: TextDirection.rtl,
                             filled: true,
                             fillColor: Color(0xFFE1E6F1),
                             enabledBorder: OutlineInputBorder(
                                 borderSide: BorderSide(width:5 ,
                                     color:Color(0xFFC5D4F5) ),
                                 borderRadius: BorderRadius.all(Radius.circular(15))
                             ),
                           ),
                         ),
                         SizedBox(height: 30,),
                         Padding(
                           padding: const EdgeInsets.fromLTRB(0, 30, 0, 50),
                           child: SizedBox(
                             height: 60,
                             width: 374,
                             child: OutlinedButton(
                                 onPressed: () {
                                   Navigator.pushReplacement(context as BuildContext,
                                       MaterialPageRoute(builder: (context) => account()));
                                 },
                                 style: ButtonsStyle.BlueButtonStyle,
                                 child: const Text(
                                   "تحديث",
                                   style: FontStyle.WhiteBColor,
                                 )),
                           ),
                         ),
                      ]
                     ),
                   ),
                  ]
                 ),
               ],
             )
         ),
       ),
   );
  }

}