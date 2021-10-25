import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_page/style/color.dart';

class Distance extends StatelessWidget {
  const Distance({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:400,
      height: 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(cPrimary),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Time',
                style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white)
              ),
             
              Text('20 secs',
                style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white)
              )
            ],
          ),
         Container(
           width: 1,
           height: 60,
           color: Colors.white,
         ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Distance',
                style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white)
              ),
             
              Text('2.8 km',
                style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white)
              )
            ],
          ),
        ],
      ),
    );
  }
}