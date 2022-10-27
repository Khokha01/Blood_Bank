import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hope/model/hospital.dart';
import 'package:hope/model/user.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  bool isuser = false;
  bool ishospital = false;
  bool isbloodbank=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 16, 46, 71),
        title: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Text("Signup as:", style: TextStyle(
            fontSize: 40, fontWeight: FontWeight.w400, color: Colors.white
          ),),
        ),
      ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Center(
                child: Column( 
                  mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isuser=true;
                                isbloodbank=false;
                                ishospital=false;
                              });
                            },
                            onDoubleTap: (){
                              setState((() {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => UserRegister(),));
                              }));
                            },
                            child: Container( 
                              height: 170,
                              width: 170,
                               decoration: BoxDecoration(
                                color: isuser? Color.fromARGB(255, 252, 225, 225): Colors.white ,
                                        borderRadius: BorderRadius.circular(20.0),
                                        border: Border.all(width: 5, color:  Color.fromARGB(255, 245, 24, 8), style: BorderStyle.solid),
                                        boxShadow: [BoxShadow(
                                          color:  Color.fromARGB(255, 245, 24, 8).withOpacity(0.5),
                                          spreadRadius: 3,
                                          blurRadius: 3,
                                          offset: Offset(7, 7)
                                        )]
                                      ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        height: 100,
                                        width: 100,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.asset('lib/assets/profile.png',fit: BoxFit.contain,),
                                        ),
                                        decoration: BoxDecoration(
                                          color:Colors.white,
                                          borderRadius: BorderRadius.circular(20.0),
                                          border: Border.all(width: 1, color:  Colors.black, style: BorderStyle.solid)
                                        ),
                                      ),
                                       Text('User',style: TextStyle(fontSize:25,fontWeight: FontWeight.w500),)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 30,),
                          Row(
                            mainAxisAlignment:MainAxisAlignment.center,
                            crossAxisAlignment:CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                            onTap: () {
                              setState(() {
                                ishospital=true;
                                isbloodbank=false;
                                isuser=false;
                              });
                            },
                            onDoubleTap: () {
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => HospitalRegister(),));
                              });
                            },
                            child: Container(
                               height: 170,
                              width: 170,
                               decoration: BoxDecoration(
                                color:ishospital?Color.fromARGB(255, 252, 225, 225):Colors.white ,
                                        borderRadius: BorderRadius.circular(20.0),
                                        border: Border.all(width: 5, color:  Color.fromARGB(255, 245, 24, 8), style: BorderStyle.solid),
                                        boxShadow: [BoxShadow(
                                          color:  Color.fromARGB(255, 245, 24, 8).withOpacity(0.5),
                                          spreadRadius: 3,
                                          blurRadius: 3,
                                          offset: Offset(7, 7)
                                        )]
                                      ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      height: 100,
                                      width: 100,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.asset('lib/assets/hospital.png',fit: BoxFit.fill,),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color:Colors.white,
                                        borderRadius: BorderRadius.circular(20.0),
                                        border: Border.all(width: 1, color: Colors.black, style: BorderStyle.solid)
                                      ),
                                    ),
                                    Text('Hospital',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),)
                                ],
                              ),
                            ),
                          ),
                         SizedBox(width: 80,),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isbloodbank=true;
                                ishospital=false;
                                isuser=false;
                              });
                            },
                            child: Container(
                               height: 170,
                              width: 170,
                               decoration: BoxDecoration(
                                color:isbloodbank?Color.fromARGB(255, 252, 225, 225):Colors.white ,
                                        borderRadius: BorderRadius.circular(20.0),
                                        border: Border.all(width: 5, color:  Color.fromARGB(255, 245, 24, 8), style: BorderStyle.solid),
                                        boxShadow: [BoxShadow(
                                          color:  Color.fromARGB(255, 245, 24, 8).withOpacity(0.5),
                                          spreadRadius: 3,
                                          blurRadius: 3,
                                          offset: Offset(7, 7)
                                        )]
                                      ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      height: 100,
                                      width: 100,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset('lib/assets/blood-bank.png',fit: BoxFit.fill,),
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20.0),
                                        border: Border.all(width: 1, color: Colors.black, style: BorderStyle.solid)
                                      ),
                                    ),
                                     Text('Blood Bank',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),)
                                ],
                              ),
                            ),
                          ),
                            ],
                          )
                      ],
                       
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}