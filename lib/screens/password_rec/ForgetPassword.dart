import 'package:flutter/material.dart';
import '../../consts/style.dart';

import 'Changepassword.dart';


class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
                    "يجب أن تتكون كلمات المرور من 8 أحرف على الأقل تذكر انه لا يوصى بإعادة استخدام أسماء المستخدمين وكلمات المرور الخدمات ومواقع الويب المختلفة",
                    textAlign: TextAlign.right,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "كلمة المرور الجديده",
                      textAlign: TextAlign.start,
                    ),
                  ),
                  const TextField(
                    decoration: TextFiledStyle.MainTextFiledStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "كلمة المرور الجديده مره اخري",
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
                                MaterialPageRoute(builder: (context) => Changepassword()));
                          },
                          style: ButtonsStyle.BlueButtonStyle,
                          child: const Text(
                            "تغيير",
                            style: FontStyle.WhiteBColor,
                          )
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
