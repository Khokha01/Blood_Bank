import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Layout extends StatefulWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home", style:TextStyle(fontSize:40,fontWeight: FontWeight.w600),),
        backgroundColor: Color.fromARGB(255, 16, 46, 71) ,
      ),
      drawer: Container(
           child: Drawer(
             child: Container(
              decoration: BoxDecoration(
                color:  Color.fromARGB(255, 16, 46, 71),),
               child: ListView(
                children: [
                  Column(
                    children: [
                      ListTile(
                 leading: Icon(Icons.home_filled, color: Colors.white,),
                      title: Text("Home", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400,color: Colors.white),),
                       ),
                    ],
                  ),
                    ListTile(
                 leading:Icon(Icons.add_circle_outline_rounded,color: Colors.white,),
                  title: Text("Donate", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400,color: Colors.white),
                   ),
                   ),
                    ListTile(
                 leading: Icon(Icons.question_mark_rounded, color: Colors.white,),
                  title: Text("ABOUT US", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400,color: Colors.white),
                   ),
                   ),
                   ListTile(
                 leading: Icon(Icons.question_mark_rounded, color: Colors.white,),
                  title: Text("ABOUT US", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400,color: Colors.white),
                   ),
                   ),
                ],
               ),
             ),
           )
      )
    );
  }
}