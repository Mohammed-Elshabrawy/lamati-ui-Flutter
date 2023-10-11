import 'package:flutter/material.dart';
import '../../consts/style.dart';
import '../bottomnavbar/bottomnavbar.dart';
import '../cars/cars.dart';



class addcar extends StatelessWidget {
  String dropdownValue = 'النوع' ;
  String dropdownValue1 = 'الموديل' ;
  String dropdownValue2 = 'الماركة' ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppConsts.mainColor,
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
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
                                      padding: EdgeInsets.fromLTRB(248, 0, 0, 0),
                                      child: Text("مركبة جديدة", style: FontStyle
                                          .BlueSColor,),
                                    ),
                                  ],

                              ),
                               Text("نوع المركبه", textAlign: TextAlign.right,style: FontStyle.BlackBColore,),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DropdownButton(

                                  isExpanded: true,
                                  value: dropdownValue,
                                  items: <String>['النوع', 'سياره', 'حافله', 'دراجه']
                                      .map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: Text(
                                          value,
                                          style: TextStyle(fontSize: 30),
                                          textDirection: TextDirection.rtl,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    );
                                  }).toList(),

                                  icon: const Icon(Icons.keyboard_arrow_down),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownValue = newValue!;
                                    });
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("ماركة المركبه",style: FontStyle.BlackBColore),
                                    SizedBox(
                                      width: 106,
                                    ),
                                    Text("موديل المركبه",style: FontStyle.BlackBColore),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    DropdownButton(
                                       borderRadius: BorderRadius.circular(0.5),

                                      isExpanded: false,
                                      value: dropdownValue2,
                                      items: <String>['الماركة', 'BMW ', 'Toyota', 'Ford']
                                          .map<DropdownMenuItem<String>>((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Directionality(
                                            textDirection: TextDirection.rtl,
                                            child: Text(
                                              value,
                                              style: TextStyle(fontSize: 30),
                                              textDirection: TextDirection.rtl,
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        );
                                      }).toList(),

                                      icon: const Icon(Icons.keyboard_arrow_down),
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownValue2 = newValue!;
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      width:70 ,
                                    ),
                                    DropdownButton(

                                      isExpanded: false,
                                      value: dropdownValue1,
                                      items: <String>['الموديل', '2019', '2020', '2021']
                                          .map<DropdownMenuItem<String>>((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Directionality(
                                            textDirection: TextDirection.rtl,
                                            child: Text(
                                              value,
                                              style: TextStyle(fontSize: 30),
                                              textDirection: TextDirection.rtl,
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        );
                                      }).toList(),

                                      icon: const Icon(Icons.keyboard_arrow_down),
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownValue1 = newValue!;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Text("لون المركبه",style: FontStyle.BlackBColore),
                              SingleChildScrollView(
                                scrollDirection:Axis.horizontal ,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width:70 ,
                                      height:35 ,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)),color: Color(0xFFC4C4C4)),
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Container(
                                      width:70 ,
                                      height:35 ,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)),color: Color(0xFF808080)),
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Container(
                                      width:70 ,
                                      height:35 ,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)),color: Color(0xFFE91919)),
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Container(
                                      width:70 ,
                                      height:35 ,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)),color: Color(0xFFDADE1F)),
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Container(
                                      width:70 ,
                                      height:35 ,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)),color: Color(0xFF000000)),
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Container(
                                      width:70 ,
                                      height:35 ,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)),color: Color(0xFF0B3FA8)),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Center(
                                child:Image.asset("lib/consts/imgs/Upload.png")
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text("رقم الهاتف (اختياري)"),
                              const TextField(
                                decoration: TextFiledStyle.MainTextFiledStyle,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 50, 10, 50),
                                child: SizedBox(
                                  height: 60,
                                  width: 374,
                                  child: OutlinedButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(context as BuildContext,
                                            MaterialPageRoute(builder: (context) => cars()));
                                      },
                                      style: ButtonsStyle.BlueButtonStyle,
                                      child: const Text(
                                        "اضافة",
                                        style: FontStyle.WhiteBColor,
                                      )
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ]
              )
          ),
        )
    );
  }

  void setState(Null Function() param0) {}
}


