import 'package:asyncmarquezcobenia/services/mockapi.dart';
import 'package:asyncmarquezcobenia/widgets/boton.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int num1 = 0, num2 = 0, num3 = 0;
  bool selected1 = false, selected2 = false, selected3 = false;
  animateCase1() async {
    final awaw = await MockApi().getFerrariInteger();
    
    setState(() {
      num1 = awaw;
    });
  }

  animateCase2() async {
    final awaw = await MockApi().getHyundaiInteger();
    
    setState(() {
      num2 = awaw;
    });
  }

  animateCase3() async {
    final awaw = await MockApi().getFisherPriceInteger();
    
    setState(() {
      num3 = awaw;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Button(
              text: Text(
                '$num1 lts',
                style: const TextStyle(color: Colors.green, fontSize: 16),
              ),
              child2: AnimatedContainer(
                width: selected1 ? 150.0 : 0.0,
                height: 6.0,  
                color: Colors.green,
                alignment: Alignment.center,
                duration: const Duration(seconds: 1),
                onEnd: () =>setState(() {
                  selected1 = false;
                }),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: IconButton(
                  icon: const Icon(Icons.rocket_launch),
                  onPressed: () => setState((){
                    selected1=!selected1;
                    animateCase1();
                  }),
                  color: Colors.black,
                  hoverColor: Colors.green,
                ),
              ),
            ),
            Button(
              text: Text(
                '$num2 lts',
                style: const TextStyle(color: Colors.yellow, fontSize: 16),
              ),
              child2: AnimatedContainer(
                width: selected2 ? 150.0 : 0.0,
                height: 6.0,  
                color: Colors.yellow,
                alignment: Alignment.center,
                duration: const Duration(seconds: 3),
                onEnd: () =>setState(() {
                  selected2 = false;
                }),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: IconButton(
                  icon: const Icon(Icons.rocket_launch),
                  onPressed:  () => setState(() {
                      selected2 = !selected2;
                      animateCase2(); 
                    }),
                  color: Colors.black,
                  hoverColor: Colors.yellow,
                ),
              ),
            ),
            Button(
              text:
                  Text('$num3 lts', style: const TextStyle(color: Colors.red, fontSize: 16)),
              child2: AnimatedContainer(
                width: selected3 ? 150.0 : 0.0,
                height: 6.0,  
                color: Colors.red,
                alignment: Alignment.center,
                duration: const Duration(seconds: 10),
                onEnd: () =>setState(() {
                  selected3 = false;
                }),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: IconButton(
                  icon: const Icon(Icons.rocket_launch),
                  onPressed: () => setState(() {
                    selected3 = !selected3;
                    animateCase3(); }),
                  color: Colors.black,
                  hoverColor: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  
}
