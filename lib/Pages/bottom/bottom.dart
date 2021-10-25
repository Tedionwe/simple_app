// ignore_for_file: unused_field, prefer_final_fields, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:simple_page/Pages/homepage/homepage.dart';
import 'package:simple_page/style/color.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({ Key? key }) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
   int _currentIndex = 0;
   List<Widget> _widgetList = [
     HomePage(),
     Container(child: Center(child: Text("Track"),),),
   Container(child: Center(child: Text("Trips"),),),
  Container(child: Center(child: Text("Profile"),),),
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
         selectedItemColor: Color(cPrimary),
          type: BottomNavigationBarType.fixed,
          onTap: OnTapped,
          currentIndex: _currentIndex,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon:Icon(Icons.home,),
            label: 'Home'
            ),

            BottomNavigationBarItem(
            icon:Icon(Icons.track_changes),
            label: 'Track'
            ),

            BottomNavigationBarItem(
            icon:Icon(Icons.trip_origin),
            label: 'Trips'
            ),

            BottomNavigationBarItem(
            icon:Icon(Icons.person),
            label: 'Profile'
            ),
        ]
        )
    );
  }
  void OnTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }
}