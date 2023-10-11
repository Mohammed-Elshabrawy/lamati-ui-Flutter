import 'package:flutter/material.dart';
import 'package:lamati/screens/login_screen/login.dart';
import '../../consts/style.dart';
import '../bottomnavbar/bottomnavbar.dart';
import 'ForgetPassword.dart';


class RequestForgetPassword extends StatelessWidget {
  const RequestForgetPassword({super.key});

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
                        "نسيت كلمة المرور؟",
                        style: FontStyle.BlueVBColor,
                      ),
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
                    "أدخل عنوان بريدك الإلكتروني أدناه وسنرسل لك رابطا لإعادة تعيين كلمة مرورك",
                    textAlign: TextAlign.right,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "البريد الالكتروني",
                      textAlign: TextAlign.start,
                    ),
                  ),
                  const TextField(
                    decoration: TextFiledStyle.MainTextFiledStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 50),
                    child: SizedBox(
                      height: 60,
                      width: 374,
                      child: OutlinedButton(
                          onPressed: () {
                            Navigator.pushReplacement(context as BuildContext,
                                MaterialPageRoute(builder: (context) => ForgetPassword()));
                          },
                          style: ButtonsStyle.BlueButtonStyle,
                          child: const Text(
                            "إرسال",
                            style: FontStyle.WhiteBColor,
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
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
              ),
            ),
          ],
        )
    );
  }
}
