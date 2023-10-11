import 'package:flutter/material.dart';
import 'package:lamati/consts/style.dart';
import '../bottomnavbar/bottomnavbar.dart';
import '../login_screen/login.dart';
import '../two/two.dart';

class screenthree extends StatelessWidget{
  const screenthree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //lib/consts/imgs/2_generated-removebg-preview 1.png
        backgroundColor: AppConsts.primaryColor,
        body: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "lib/consts/imgs/Vector1.png",
                  height: 400,
                  width: 500,
                ),
                Image.asset(
                    "lib/consts/imgs/2_generated-removebg-preview(2) 1.png"),
              ],
            ),
            Center(
              child: Text(
                "توفر المعدات الدقيقة نتائج مثالية",
                style: FontStyle.WhitePrimaryColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 50),
              child: SizedBox(
                height: 60,
                width: 374,
                child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context as BuildContext,
                          MaterialPageRoute(builder: (context) => bottomnavbar())
                      );
                    },
                    style: ButtonsStyle.whiteButtonStyle,
                    child: const Text(
                      "ابدأ الان",
                      style: FontStyle.BlueBColor,
                    )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context as BuildContext,
                        MaterialPageRoute(builder: (context) => screentwo())
                    );
                  },
                  child: Text(
                    "السابق",
                    style: FontStyle.SmallWhiteColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(70, 0, 10, 0),
                  child: Container(
                    decoration: ButtonsStyle.SmallBoxStyle,
                    height: 6,
                    width: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Container(
                    decoration: ButtonsStyle.SmallBoxStyle,
                    height: 6,
                    width: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 70, 0),
                  child: Container(
                    decoration: ButtonsStyle.SmallBoxStyle,
                    height: 10,
                    width: 30,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context as BuildContext,
                        MaterialPageRoute(builder: (context) => loginscreen())
                    );
                  },
                  child: Text(
                    "التالي",
                    style: FontStyle.SmallWhiteColor,
                  ),
                )
              ],
            ),
          ],
        )
    );
  }
}