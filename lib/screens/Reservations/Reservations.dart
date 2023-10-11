import 'package:flutter/material.dart';
import '../../consts/style.dart';
import '../cars/cars.dart';
import '../home/home.dart';
import 'Reservationsbefore.dart';
import 'Reservationsnow.dart';



class Reservations extends StatefulWidget {

  @override
  _ReservationsState createState() => _ReservationsState();
}

  class _ReservationsState extends State<Reservations> {
    @override
    Widget build(BuildContext context) {
      return DefaultTabController(
        length: 2,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: AppConsts.mainColor,
           appBar: AppBar(
             actions: [
               Text(

                 "الحجوزات", style: FontStyle.BlueSColor,textAlign: TextAlign.end,
               ),
             ],

             bottom:TabBar(
                 tabs: [
                   Tab(text: 'السابقه',),
                   Tab(text: 'الحاليه',),
                 ]
             ),
           ),
            body: TabBarView(
                children:
                [
                  Reservationsbefore(),
                  Reservationsnow(),

                ]
            ),

                  )
              );

    }
  }




