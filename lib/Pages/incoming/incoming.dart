// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_page/style/color.dart';
import 'package:simple_page/widgets/bottom_sheet.dart';

class Incoming extends StatefulWidget {
  const Incoming({ Key? key }) : super(key: key);

  @override
  _IncomingState createState() => _IncomingState();
}

class _IncomingState extends State<Incoming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 250, 250, 1),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Row(
                children: [
                  Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                   boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(204, 202, 202, 0.25) ,
                offset: Offset(0, 7),
                spreadRadius: 2,
                blurRadius: 10,
                    )
               ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Icon(Icons.chevron_left),
              ),
              SizedBox(width: 20,),
              Text('Incoming order',
               style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w700)
              )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Container(
                child: Center(
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: SvgPicture.asset('assets/eta.svg', width: 70,)),
                      Container(
                        margin: EdgeInsets.fromLTRB(30, 40, 0, 0),
                        child: SvgPicture.asset('assets/root.svg', width: 175,)),
                    ],
                  ),
                ),
              ),
            ),
          
          ],
        ),
      ),
      bottomSheet: BottomSheetWidget(),
    );
  }
}