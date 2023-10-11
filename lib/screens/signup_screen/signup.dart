import 'package:flutter/material.dart';
import '../../consts/style.dart';
import '../login_screen/login.dart';
import '../otp/otp.dart';

class signupscreen extends StatelessWidget{
  @override
   String ?selectedOption ="ذكر";
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppConsts.mainColor,
        body: SingleChildScrollView(
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
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                        child: Text(
                          "تسجيل جديد",
                          style: FontStyle.BlueVBColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "الاسم",
                              textAlign: TextAlign.start,
                            ),
                            const TextField(
                              decoration: TextFiledStyle.MainTextFiledStyle,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                              child: Text(
                                "البريد الالكتروني",
                                textAlign: TextAlign.start,
                              ),
                            ),
                            const TextField(
                              decoration: TextFiledStyle.MainTextFiledStyle,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                              child: Text(
                                "رقم الهاتف",
                                textAlign: TextAlign.start,
                              ),
                            ),
                            const TextField(
                              decoration: TextFiledStyle.MainTextFiledStyle,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("انثي",style: FontStyle.BlackBColore,),
                                  Radio(
                                      value: "انثي", groupValue: selectedOption, onChanged: hi()
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(120, 0, 0, 0),
                                    child: Text("ذكر",style: FontStyle.BlackBColore,),
                                  ),
                                  Radio(
                                      value: "ذكر", groupValue: selectedOption, onChanged: hi()
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "كلمة المرور",
                              textAlign: TextAlign.start,
                            ),
                            const TextField(
                              decoration: TextFiledStyle.MainTextFiledStyle,
                            ),
                            Text(
                              "تاكيد كلمة المرور",
                              textAlign: TextAlign.start,
                            ),
                            const TextField(
                              decoration: TextFiledStyle.MainTextFiledStyle,
                            ),
                            Row(
                              mainAxisAlignment:MainAxisAlignment.end ,
                              children: [
                                Text("موافق علي الشروط والاحكام",style: FontStyle.BlackBColore,),
                                Radio(
                                    value: "انثي", groupValue: selectedOption, onChanged: hi()
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 30, 0, 20),
                              child: SizedBox(
                                height: 60,
                                width: 374,
                                child: OutlinedButton(
                                    onPressed: () {
                                      Navigator.pushReplacement(context as BuildContext,
                                          MaterialPageRoute(builder: (context) => otpscreen()));
                                    },
                                    style: ButtonsStyle.BlueButtonStyle,
                                    child: const Text(
                                      "تسجيل",
                                      style: FontStyle.WhiteBColor,
                                    )
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pushReplacement(context as BuildContext,
                                          MaterialPageRoute(builder: (context) => loginscreen()));
                                    },
                                    child: Text(
                                      "تسجيل دخول",
                                      style: FontStyle.BlueVSColor,
                                    ),
                                  ),
                                  Text("لديك حساب؟"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }

  hi() {}
}
