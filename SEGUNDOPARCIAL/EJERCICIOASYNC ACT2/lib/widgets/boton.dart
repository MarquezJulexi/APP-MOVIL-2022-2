import 'package:flutter/material.dart';

class Button extends StatefulWidget{
  const Button({super.key, required this.text, required this.child,required this.child2});
  
  final Widget child;
  final Widget text;
  final Widget child2;
  @override
  State<Button> createState() => _MyButtonState();
}
class _MyButtonState extends State<Button>{
  @override
  Widget build(BuildContext context) {
    return   Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Column(
                
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  
                  widget.child,
                  
                  const SizedBox(height: 10),
                  widget.text,
                  widget.child2,
                ],
            ),
          ),
        ),
    );
  }

}