import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lamati/consts/style.dart';
import '../Reservations/Reservations.dart';
import '../account/account.dart';
import '../cars/cars.dart';
import '../home/home.dart';


class bottomnavbar extends StatefulWidget{
  const bottomnavbar({super.key});

  @override
  State<StatefulWidget> createState() =>_HomepageState();

}
class _HomepageState extends State<StatefulWidget>{
  final Screens =[
    account(),
    Reservations(),
    cars(),
    homescreen()
  ];
 int currentIndex =3;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:Screens[currentIndex] ,
     bottomNavigationBar: BottomNavigationBar(

       backgroundColor:Colors.white,
       type: BottomNavigationBarType.fixed,
       currentIndex: currentIndex,
       selectedItemColor: AppConsts.primaryColor,
       showUnselectedLabels: false,
       onTap: (index) => setState(()=> currentIndex = index),
       items: [
         BottomNavigationBarItem(
             icon: Icon(Icons.person,),
             label: "الحساب",

         ),
         BottomNavigationBarItem(
             icon: Icon(Icons.calendar_month),
             label: "الحجز",

         ),
         BottomNavigationBarItem(
             icon: Icon(Icons.car_crash),
             label: "المركبات",

         ),
         BottomNavigationBarItem(
             icon: Icon(Icons.home),
             label: "الرئسية",

         ),

       ],

     ),
   );
  }
  
}