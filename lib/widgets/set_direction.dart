// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_page/style/color.dart';

class SetDirection extends StatefulWidget {
  const SetDirection({ Key? key }) : super(key: key);

  @override
  State<SetDirection> createState() => _SetDirectionState();
}

class _SetDirectionState extends State<SetDirection> {
  late int selectedRadio;
  bool value = true;
   @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(val) {
    setState(() {
      selectedRadio = val;
    });
  }

  Widget buildSwitch(){
   return Transform.scale(
     scale: 0.6,
     child: Switch.adaptive(
       activeColor:Color(cDark),
        value: value,
         onChanged: (value)=>setState((){
           value = value;
         })),
   );
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 145,
          height:50,
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
          child: Row(
            
            children: [
              Transform.scale(
                scale: 0.8,
                child: Radio(
                   value: 1,
                          groupValue: selectedRadio,
                          onChanged: (val) {
                            print('Radio $val');
                            setSelectedRadio(val);
                          },
                          activeColor: Color(cDark),
                    ),
              ),
                  Text('Set direction',
                  style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400,color: Color(cDark)),
                  ),
            ],
          ),
        ),

        Container(
          width: 165,
          height:50,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Online',
                 style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400,color: Color(cDark)),
              ),
              buildSwitch(),
              Text('Offline',
                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400,color: Color(cDark)),
              ),
            ],
          ),
        )
      ],
    );
  }
}