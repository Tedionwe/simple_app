// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_page/style/color.dart';
import 'package:simple_page/widgets/button.dart';
import 'package:simple_page/widgets/distance.dart';

class BottomSheetWidget2 extends StatefulWidget {
  const BottomSheetWidget2({ Key? key }) : super(key: key);

  @override
  _BottomSheetWidget2State createState() => _BottomSheetWidget2State();
}

class _BottomSheetWidget2State extends State<BottomSheetWidget2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 330,
      decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(204, 202, 202, 0.25) ,
              offset: Offset(0, 7),
              spreadRadius: 2,
              blurRadius: 10,
                  )
             ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              width: 40,
              height:3,
              decoration: BoxDecoration(
                color: Color.fromRGBO(242, 242, 242, 1)
              ),
            ),
            
             SizedBox(height: 30,),
            Container(
             width: 350,
      height: 160,
      alignment: Alignment.center,
      decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(204, 202, 202, 0.25) ,
              offset: Offset(0, 7),
              spreadRadius: 2,
              blurRadius: 10,
                  )
             ],
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(width: 30,),
                  Text('04 m : 18 s ',
                   style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w700, color:Color(cPrimary)),
                  ),
                  Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(cPrimary),
                        boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(204, 202, 202, 0.25) ,
                  offset: Offset(0, 7),
                  spreadRadius: 2,
                  blurRadius: 10,
                      )
                 ],
                      ),
                      child: Icon(Icons.call_outlined, color: Colors.white,),
                    ),
                ],
              ),
            ),

            
            Text('Omobolaji',
             style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400)
            ),

             SizedBox(height: 10,),
            Text("""
  7 Prince Ibrahim Odofin Street Idado
                           Estate Igbo-Efon
            """,
             style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600)
            )
          ],
        ),
      ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  height: 43,
                  child: Button(
              color: Color.fromRGBO(232, 39, 39, 1),
            onPressed: () {  },
            child: Text('Cancel trip',
             style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w700,color: Colors.white)
            ),
            ),
                ),

            Container(
               width: 150,
                  height: 43,
              child: Button(
                color: Color(cDark),
              onPressed: () {  
                Navigator.pushNamed(context, '');
              },
              child: Text('Start trip',
              style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w700,color: Colors.white),
              ),
              ),
            )
              ],
            )
          ],
        ),
      ),
    );
  }
}