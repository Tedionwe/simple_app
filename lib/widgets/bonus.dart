import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bonus extends StatelessWidget {
  const Bonus({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:400,
      height: 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Today’s earnings',
               style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w700, color: Color.fromRGBO(150, 150, 150, 1)),
              ),
               SizedBox(height: 5,),
              Text('N 5,000.00',
              style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w400,),
              )
            ],
          ),
         Container(
           width: 1,
           height: 60,
           color: Color.fromRGBO(216, 216, 216, 1),
         ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Today’s bonus',
              style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w700, color: Color.fromRGBO(150, 150, 150, 1)),
              ),
              SizedBox(height: 5,),
              Text('N 2,050.30',
              style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w400,),
              )
            ],
          ),
        ],
      ),
    );
  }
}