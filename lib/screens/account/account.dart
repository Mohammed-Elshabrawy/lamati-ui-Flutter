
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lamati/screens/account/wallet.dart';
import '../../consts/style.dart';
import '../bottomnavbar/bottomnavbar.dart';
import '../login_screen/login.dart';
import 'Settings/Help.dart';
import 'Settings/Settings.dart';
import 'Settings/UpdateProfile.dart';

class account extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:SafeArea(
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
                                    builder: (context) => bottomnavbar()));
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
                          padding: EdgeInsets.fromLTRB(230, 0, 0, 0),
                          child: Text("الملف الشخصي", style: FontStyle.BlueSColor,),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context as BuildContext,
                            MaterialPageRoute(
                                builder: (context) => updateProfile()));
                      }, // ,
                      child: Stack(
                        children: [Container(
                          width:375 ,
                          height:90 ,
                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)),color: Color(0xFFFFFFFF)),
                        ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("محمد الشبراوي",style: FontStyle.BlackBColore,),
                                SizedBox(width: 20,),
                                Image.asset("lib/consts/icons/undraw_profile_pic_ic5t 1.png"),
                              ],
                            ),
                          )
                        ]
                      ),
                    ),
                    SizedBox(height: 50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(context as BuildContext,
                                MaterialPageRoute(builder: (context) => wallet()));
                          },
                          child: Text(
                            "محظفتي",
                            style: FontStyle.gray,
                          ),
                        ),
                        Image.asset("lib/consts/pro/bx_bx-wallet-alt.png"),
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
                                MaterialPageRoute(builder: (context) => settings()));
                          },
                          child: Text(
                            "الاعدادات",
                            style: FontStyle.gray,
                          ),
                        ),
                        Image.asset("lib/consts/pro/Group.png"),
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
                            "مساعدة",
                            style: FontStyle.gray,
                          ),
                        ),
                        Image.asset("lib/consts/pro/bx_bx-help-circle.png"),
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
                            closeAppUsingSystemPop();
                          },
                          child: Text(
                            "خروج",
                            style: FontStyle.gray,
                          ),
                        ),
                        Image.asset("lib/consts/pro/clarity_logout-line.png"),
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
                ),
              ],
            )
           ],
         ),
       ),
     ) ,
   );
  }

  void closeAppUsingSystemPop() {
    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
  }

}