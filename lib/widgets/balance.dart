import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Balance extends StatelessWidget {
  const Balance({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
          height:180,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
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
                   padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text('Main Balance',
                            style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400,),
                           ),
                           Text('N 5,000.00',
                           style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600,),
                           )
                         ],
                       ),
                        SizedBox(
                          height: 20,
                        ),
                       Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text('Bonus Balance',
                           style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400,),
                           ),
                           Text('N 2,000.00',
                           style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600,),
                           )
                         ],
                       ),
                 SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Container(
                             width: 120,
                             height: 35,
                             alignment: Alignment.center,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20),
                               color: Color.fromRGBO(26, 26, 26, 0.1)
                             ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Transfer funds ',
                                  style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400,),
                                  ),
                                  SvgPicture.asset('assets/arrowup.svg',width: 10,)
                                ],
                              ),
                           ),
                          Container(
                             width: 120,
                             height: 35,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20),
                               color: Color.fromRGBO(10, 198, 144, 0.1)
                             ),
                             child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Fund wallet  ',
                                  style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400,),
                                  ),
                                  SvgPicture.asset('assets/arrowdown.svg',width: 10,)
                                ],
                              ),
                           ),
                         ],
                       )
                     ],
                   ),
                 ),
               );
  }
}