import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../consts/style.dart';
import '../add_car/addcar.dart';
import '../bottomnavbar/bottomnavbar.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppConsts.mainColor,
      body: Stack(
        children: [
          Image.asset(
            "lib/consts/imgs/Rectangle.png",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 70, 20, 0),
            child: TextField(
                decoration: InputDecoration(
              prefixIcon: ImageIcon(
                AssetImage("lib/consts/icons/bx_bx-search-alt.png"),
                size: 30,
                color: AppConsts.primaryColor,
              ),
              hintText: "ابحث عن موقعك",
              hintStyle: FontStyle.BlueV14SColor,
              hintTextDirection: TextDirection.rtl,
              filled: true,
              fillColor: Color(0xFFC5D4F5),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 5, color: Color(0xFFC5D4F5)),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 470, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50, 10, 50),
                  child: Stack(children: [
                    SizedBox(
                      height: 60,
                      width: 180,
                      child: OutlinedButton(
                          onPressed: () {

                            Navigator.pushReplacement(context as BuildContext,
                                MaterialPageRoute(builder: (context) =>  addcar()));

                          },
                          style: ButtonsStyle.BlueButtonStyle,
                          child: const Text(
                            "اضف مركبه    ",
                            style: FontStyle.WhiteBColor,
                          )),
                    ),
                    Positioned(
                      top: 15,
                      right: 12,
                      child: const ImageIcon(
                        AssetImage("lib/consts/icons/mdi_car-2-plus.png"),
                        size: 25,
                        color: AppConsts.mainColor,
                      ),
                    ),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 50),
                  child: Stack(children: [
                    SizedBox(
                      height: 60,
                      width: 180,
                      child: OutlinedButton(
                          onPressed: () {
                            showAlertDialog(context);
                          },
                          style: ButtonsStyle.BlueButtonStyle,
                          child: const Text(
                            "احجز الان   ",
                            style: FontStyle.WhiteBColor,
                          )),
                    ),
                    Positioned(
                      top: 15,
                      right: 15,
                      child: const ImageIcon(
                        AssetImage("lib/consts/icons/Vector.png"),
                        size: 25,
                        color: AppConsts.mainColor,
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void showAlertDialog(BuildContext context) {
    CupertinoAlertDialog alert = CupertinoAlertDialog(
      content: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("lib/consts/imgs/plus 1.png"),
        ),
        Text(
          "الرجاء اضاقة مركبة واحدة علي الاقل لمواصلة عملية الحجز",
          style: FontStyle.BlacksColore,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 60,
            width: 180,
            child: OutlinedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context as BuildContext,
                      MaterialPageRoute(
                          builder: (context) => addcar()));
                },
                style: ButtonsStyle.BlueButtonStyle,
                child: const Text(
                  "اضافة الان",
                  style: FontStyle.WhiteBColor,
                )),
          ),
        )
      ]),
    );

    showDialog(
        context: context,
        builder: (BuildContext buildercontex) {
          return alert;
        });
  }
}
