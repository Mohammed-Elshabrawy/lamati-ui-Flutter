import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Settings.dart';
import 'style.dart';
class terms extends StatelessWidget{
  get selectedOption => "نعم";

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
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context as BuildContext,
                                  MaterialPageRoute(
                                      builder: (context) => settings()));
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
                            padding: EdgeInsets.fromLTRB(212, 0, 0, 0),
                            child: Text("الشروط والاحكام", style: FontStyle.BlueSColor,),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 68, 18, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [

                            Text("عند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم ويقول البعض ان وضع النصوص التجريبية بالتصميم قد تشغل المشاهد عن وضع الكثير من الملاحظات او الانتقادات للتصميم الاساسي وخلافاَ للاعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد. من كتاب حول أقاصي الخير والشر" ,style: FontStyle.BlacksColore,textAlign: TextAlign.end,),
                            SizedBox(height: 50,),

                            Text("عند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم ويقول البعض ان وضع النصوص التجريبية بالتصميم قد تشغل المشاهد عن وضع الكثير من الملاحظات او الانتقادات للتصميم الاساسي وخلافاَ للاعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد. من كتاب حول أقاصي الخير والشر" ,style: FontStyle.BlacksColore,textAlign: TextAlign.end,),
                            SizedBox(height: 50,),
                            Row(
                              mainAxisAlignment:MainAxisAlignment.end ,
                              children: [
                                Text("موافق علي الشروط والاحكام",style: FontStyle.BlueVSColor,),
                                Radio(
                                    hoverColor:Color(0xFF0B3FA8),
                                    value: "نعم", groupValue: selectedOption, onChanged: hi()
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
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

  hi() {}
}
