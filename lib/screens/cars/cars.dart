import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../consts/style.dart';
import '../add_car/addcar.dart';
import '../bottomnavbar/bottomnavbar.dart';

class cars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.pushReplacement(context as BuildContext,
            MaterialPageRoute(builder: (context) => addcar()));
      },
        child: Icon(Icons.add),backgroundColor: AppConsts.primaryColor,),
        resizeToAvoidBottomInset: false,
        backgroundColor: AppConsts.mainColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Stack(children: [
                  Image.asset(
                    "lib/consts/imgs/Vector.png",
                    height: 236,
                    width: 500,
                  ),
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
                        padding: EdgeInsets.fromLTRB(300, 0, 0, 0),
                        child: Text("مركباتي", style: FontStyle
                            .BlueSColor,),
                      ),
                    ],

                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 50, 0, 20),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 370,
                              height: 120,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  color: Color(0xFFFFFFFF)),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(240, 16, 0, 0),
                              child: Image.asset(
                                  "lib/consts/imgs/Rectangle 24.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 19, 170, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "نوع المركبه : فيراري",
                                    style: FontStyle.BlacksColore,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "2021 auto :",
                                        style: FontStyle.BlacksColore,
                                      ),
                                      Text(
                                        " موديل المركبه",
                                        style: FontStyle.BlacksColore,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: 40,
                                        height: 20,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12)),
                                            color: Color(0xFF0B3FA8)),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "لون المركبه ",
                                        style: FontStyle.BlacksColore,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                              child: Image.asset(
                                  "lib/consts/icons/carbon_close-filled.png"),
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        Stack(
                          children: [
                            Container(
                              width: 370,
                              height: 120,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                                  color: Color(0xFFFFFFFF)),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(240, 16, 0, 0),
                              child: Image.asset(
                                  "lib/consts/imgs/Rectangle 24.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 19, 170, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "نوع المركبه : فيراري",
                                    style: FontStyle.BlacksColore,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "2021 auto :",
                                        style: FontStyle.BlacksColore,
                                      ),
                                      Text(
                                        " موديل المركبه",
                                        style: FontStyle.BlacksColore,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: 40,
                                        height: 20,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12)),
                                            color: Color(0xFF0B3FA8)),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "لون المركبه ",
                                        style: FontStyle.BlacksColore,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                              child: Image.asset(
                                  "lib/consts/icons/carbon_close-filled.png"),
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        Stack(
                          children: [
                            Container(
                              width: 370,
                              height: 120,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                                  color: Color(0xFFFFFFFF)),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(240, 16, 0, 0),
                              child: Image.asset(
                                  "lib/consts/imgs/Rectangle 24.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 19, 170, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "نوع المركبه : فيراري",
                                    style: FontStyle.BlacksColore,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "2021 auto :",
                                        style: FontStyle.BlacksColore,
                                      ),
                                      Text(
                                        " موديل المركبه",
                                        style: FontStyle.BlacksColore,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: 40,
                                        height: 20,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12)),
                                            color: Color(0xFF0B3FA8)),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "لون المركبه ",
                                        style: FontStyle.BlacksColore,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                              child: Image.asset(
                                  "lib/consts/icons/carbon_close-filled.png"),
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        Stack(
                          children: [
                            Container(
                              width: 370,
                              height: 120,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                                  color: Color(0xFFFFFFFF)),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(240, 16, 0, 0),
                              child: Image.asset(
                                  "lib/consts/imgs/Rectangle 24.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 19, 170, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "نوع المركبه : فيراري",
                                    style: FontStyle.BlacksColore,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "2021 auto :",
                                        style: FontStyle.BlacksColore,
                                      ),
                                      Text(
                                        " موديل المركبه",
                                        style: FontStyle.BlacksColore,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: 40,
                                        height: 20,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12)),
                                            color: Color(0xFF0B3FA8)),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "لون المركبه ",
                                        style: FontStyle.BlacksColore,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                              child: Image.asset(
                                  "lib/consts/icons/carbon_close-filled.png"),
                            )
                          ],
                        ),

                      ],
                    ),
                  )
                ]
                ),

              ],
            ),
          ),
        ));
  }
}
