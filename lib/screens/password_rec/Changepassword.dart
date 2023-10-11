import 'package:flutter/material.dart';
import '../../consts/style.dart';
import '../login_screen/login.dart';



class Changepassword extends StatelessWidget {
  const Changepassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppConsts.mainColor,
        body: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  "lib/consts/imgs/Vector.png",
                  height: 236,
                  width: 500,
                ),

                   ]
                  ),
                  Column(
                    children: [
                      Image.asset("lib/consts/icons/Group 1.png"),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("تم تغيير كلمة المرور بنجاح",style: FontStyle.BlackBColore,),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
                        child: Center(
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(context as BuildContext,
                                  MaterialPageRoute(builder: (context) => loginscreen()));
                            },
                            child: Text(
                              "تسجيل الدخول",
                              style: FontStyle.BlueVSColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                 
              ],
            ),

         

    );
  }
}
