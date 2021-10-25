
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_page/style/color.dart';

class Rating extends StatelessWidget {
  const Rating({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(cDark)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('View rating',
          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400,color: Color.fromRGBO(255, 255, 255, 1)),
          ),
          Row(
            children: [
              Icon(Icons.star_rate_rounded, color: Colors.white,),
              Icon(Icons.star_rate_rounded,color: Colors.white,),
              Icon(Icons.star_rate_rounded,color: Colors.white,),
              Icon(Icons.star_rate_rounded,color: Colors.white,),
              Icon(Icons.star_rate_rounded,color: Colors.white,),
            ],
          ),
          Text('5.0',
      style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w700,color: Color.fromRGBO(255, 255, 255, 1)),
          )
        ],
      ),
    );
  }
}