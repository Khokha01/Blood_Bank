import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hope/model/login.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 250,
              width: 500,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('lib/assets/Logo.png', fit: BoxFit.fill,),
                  ),
                  decoration: BoxDecoration(
                        color: Color.fromARGB(255, 250, 242, 242),
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(width: 5, color:  Color.fromARGB(255, 16, 46, 71), style: BorderStyle.solid),
                        boxShadow: [BoxShadow(
                          color:Color.fromARGB(255, 16, 46, 71) .withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 3,
                          offset: Offset(7, 7)
                      )]
                    ),),
          )
        ],
      ),
      backgroundColor: Color.fromARGB(255, 250, 246, 242),
       floatingActionButton: Container(height: 100,width: 100,child: FittedBox(
        child:FloatingActionButton(onPressed: () {
          setState(() {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Screen2(),));});},
          backgroundColor:  Color.fromARGB(255, 16, 46, 71),
          child: Icon(Icons.arrow_circle_right_rounded,size: 55),
            ),
            )),
    );
  }
}