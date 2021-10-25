import 'package:flutter/material.dart';

class Button extends RaisedButton{
  final VoidCallback onPressed;
  final Widget child;
  final Color  color;

  const Button({required this.onPressed, required this.child, required this.color,}):super(onPressed: onPressed, child: child);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Theme(
      data: Theme.of(context).copyWith(
        buttonTheme: Theme.of(context).buttonTheme.copyWith(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
          buttonColor: color
          
        ),
        
      ),
      child: Builder(builder: super.build));
  }
}