

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_page/style/color.dart';

class Cashout extends StatelessWidget {
  const Cashout({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(cDark)
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(70, 0, 20, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Cash out',
            style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400, color: Color.fromRGBO(225, 225, 225,1)),),
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color.fromRGBO(255, 255, 255, 0.3)
              ),
              child: Icon(Icons.chevron_right, color: Colors.white,),
            )
          ],
        ),
      ),
    );
  }
}