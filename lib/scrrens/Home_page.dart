import 'package:api_buider_1_dummy/scrrens/Orderstaus_tile.dart';
import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  @override
  _Home_pageState createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe0e0e0),
      body: SafeArea(
        child:Container(
          child: Column(
            children: [

              Expanded(child:


               OrderStatus_tile()),



            ],),





        ),
      ),

    );
  }
}
