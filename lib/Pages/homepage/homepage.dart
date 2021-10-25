// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_page/style/color.dart';
import 'package:simple_page/widgets/balance.dart';
import 'package:simple_page/widgets/bonus.dart';
import 'package:simple_page/widgets/cashout.dart';
import 'package:simple_page/widgets/rating.dart';
import 'package:simple_page/widgets/set_direction.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Container(
           alignment: Alignment.center,
           width: 400,
           height: 100,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(20),
             boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(204, 202, 202, 0.25) ,
              offset: Offset(0, 7),
              spreadRadius: 2,
              blurRadius: 10,
                  )
             ],
              color: Colors.white,
           ),
          
           child: Padding(
             padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
             child: Row(
               
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 SizedBox(
                   width: 50,
                 ),
                 Container(
                       width: 60, 
                   child: Stack(
                     children: [
                      
                       Container(
                         width: 30,
                         height: 30,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(50),
                           color: Color(cPrimary),
                 
                         )
                       ),
                       Positioned(
                         left: 20,
                         child: Container(
                           alignment: Alignment.center,
                           width: 30,
                           height: 30,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(50),
                             color: Color(cDark),
                       
                           )
                         ),
                       )
                     ],
                   ),
                 ),
                 
                 Container(
                   margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                   width: 80,
                  height: 40,
                   child: Stack(
                     children: [
                       Positioned(
                         top: 10,
                         child: Container(
                            width: 30,
                                            alignment: Alignment.center,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            color: Color(cDark),
                                          ),
                           child: Icon(Icons.notifications_none_outlined,
                           size: 20,
                           color: Colors.white,
                           ),
                         ),
                       ),
                       Positioned(
                         left: 20,
                         bottom: 20,
                         child: Container(
                                           width: 15,
                                          alignment: Alignment.center,
                                        height: 15,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Color(cPrimary),
                                        ),
                                        child: Text('2',
                                        style: TextStyle(color: Colors.white, fontSize:12,)
                                        ),
                         ),
                       )
                     ],
                   ),
                 )
                 
               ],
             ),
           ),
         ),

         Padding(
           padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               GestureDetector(
                 onTap: (){
                   Navigator.pushNamed(context, 'Incoming');
                 },
                 child: Text('Welcome Tolu,',
                  style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600,color: Color.fromRGBO(151, 151, 151, 1)),
                 )),
                  SizedBox(height: 20,),
               SetDirection(),
               SizedBox(height: 20,),
               Balance(),
               SizedBox(height: 20,),
               Cashout(),
               SizedBox(height: 20,),
               Bonus(),
                SizedBox(height: 20,),
               Rating()
             ],
           ),
         )
       ],
     ),
      
    );
  }
}