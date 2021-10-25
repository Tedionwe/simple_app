// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_page/style/color.dart';

import 'button.dart';
import 'distance.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({ Key? key }) : super(key: key);

  @override
  _BottomSheetWidgetState createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 490,
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
            SizedBox(height: 25,),
            Row(
              children: [
                SvgPicture.asset('assets/sender.svg'),
                 SizedBox(width: 10,),
                Text('Sender’s address',
                 style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400)
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("""
7 Prince Ibrahim Odofin Street Idado
Estate Igbo-Efon
                """,
                 style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600)
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
             Row(
              children: [
                SvgPicture.asset('assets/sender.svg', color: Color(cDark),),
                 SizedBox(width: 10,),
                Text('Receiver addresses',
                 style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400)
                )
              ],
            ),
             SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("""
7 Prince Ibrahim 
Estate Igbo-Efon""",
  style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600)
),
                
              ],
            ),

             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("""
7 Prince Ibrahim 
Odofin Street Idado
 """,
                  style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600)
                ),
                
              ],
            ),
            Distance(),
                SizedBox(height: 20,),
            LinearProgressIndicator(
              value:0.9,
              backgroundColor:Color.fromRGBO(237, 238, 239, 1),
              color: Color(cPrimary),
            ) ,
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  height: 43,
                  child: Button(
              color: Color.fromRGBO(232, 39, 39, 1),
            onPressed: () {  },
            child: Text('Reject',
             style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w700,color: Colors.white),
            ),
            ),
                ),

            Container(
               width: 150,
                  height: 43,
              child: Button(
                color: Color(cDark),
              onPressed: () {  
                Navigator.pushNamed(context, 'Begin');
              },
              child: Text('Accept trip',
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