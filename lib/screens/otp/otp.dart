import 'package:flutter/material.dart';
import '../../consts/style.dart';

import '../home/home.dart';
import '../login_screen/login.dart';
import '../signup_screen/signup.dart';

class otpscreen extends StatelessWidget {
  const otpscreen({super.key});

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
                const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "رمز التاكيد",
                        style: FontStyle.BlueVBColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "الرجاء ادخال رمز التاكيد",
                    textAlign: TextAlign.start,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: const TextField(
                          decoration: TextFiledStyle.MainTextFiledStyle,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: const TextField(
                          decoration: TextFiledStyle.MainTextFiledStyle,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: const TextField(
                          decoration: TextFiledStyle.MainTextFiledStyle,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: const TextField(
                          decoration: TextFiledStyle.MainTextFiledStyle,
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 50, 0, 50),
                    child: SizedBox(
                      height: 60,
                      width: 374,
                      child: OutlinedButton(
                          onPressed: () {
                            Navigator.pushReplacement(context as BuildContext,
                                MaterialPageRoute(builder: (context) => loginscreen()));
                          },
                          style: ButtonsStyle.BlueButtonStyle,
                          child: const Text(
                            "تاكيد",
                            style: FontStyle.WhiteBColor,
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context as BuildContext,
                          MaterialPageRoute(builder: (context) => signupscreen()));
                    },
                    child: Text(
                      "ارسال رمز جديد",
                      style: FontStyle.BlueVSColor,
                    ),
                  ),
                  Text("لم يتم ارسال الرمز؟"),
                ],
              ),
            ),
          ],
        )
    );
  }
}
