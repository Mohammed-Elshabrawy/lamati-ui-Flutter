import 'package:flutter/material.dart';
import '../../consts/style.dart';
import '../bottomnavbar/bottomnavbar.dart';
import '../password_rec/RequestForgetPassword.dart';
import '../signup_screen/signup.dart';

class loginscreen extends StatelessWidget {
  const loginscreen({super.key});

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
                        "تسجيل الدخول",
                        style: FontStyle.BlueVBColor,
                      ),
                    ),
                    Text(
                      "مرحبا بك مجددا ",
                      style: FontStyle.BlueSColor,
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "البريد الالكتروني",
                    textAlign: TextAlign.start,
                  ),
                  const TextField(
                    decoration: TextFiledStyle.MainTextFiledStyle,
                  ),
                  Text(
                    "كلمة المرور",
                    textAlign: TextAlign.start,
                  ),
                  const TextField(
                    decoration: TextFiledStyle.MainTextFiledStyle,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context as BuildContext,
                          MaterialPageRoute(builder: (context) => RequestForgetPassword()));
                    },
                    child: Text(
                      "نسيت كلمة السر ؟",
                      style: FontStyle.BlueVSColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 50),
                    child: SizedBox(
                      height: 60,
                      width: 374,
                      child: OutlinedButton(
                          onPressed: () {
                            Navigator.pushReplacement(context as BuildContext,
                                MaterialPageRoute(builder: (context) => bottomnavbar()));
                          },
                          style: ButtonsStyle.BlueButtonStyle,
                          child: const Text(
                            "دخول",
                            style: FontStyle.WhiteBColor,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context as BuildContext,
                          MaterialPageRoute(builder: (context) => signupscreen()));
                    },
                    child: Text(
                      "حساب جديد",
                      style: FontStyle.BlueVSColor,
                    ),
                  ),
                  Text("ليس لديك حساب؟"),
                ],
              ),
            ),
          ],
        )
    );
  }
}
