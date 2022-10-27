import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hope/model/registeration.dart';

class Screen2 extends StatefulWidget {
  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
    var ID_nmber= TextEditingController();
    var phone= TextEditingController();
    var password=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(padding: EdgeInsets.all(9.0),
      child: Center(
        child: Container(
           width:950,
                decoration: BoxDecoration(
                            color: Colors.white ,
                                    borderRadius: BorderRadius.circular(20.0),
                                    border: Border.all(width: 3, color:Color.fromARGB(255, 16, 46, 71) , style: BorderStyle.solid),
                                    boxShadow: [BoxShadow(
                                      color: Color.fromARGB(255, 16, 46, 71).withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(3, 3)
                                    )]
                                  ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                    Text('Welcome!', style: TextStyle(fontSize: 70,fontWeight: FontWeight.w700,color: Color.fromARGB(255, 16, 46, 71))),
                    SizedBox(height: 35,),
                    Text('Login',style: TextStyle(fontSize:50,fontWeight: FontWeight.w400,color: Color.fromARGB(255, 16, 46, 71))),
                    SizedBox(height: 30,),
                    TextField(
                      controller: ID_nmber,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.numbers_outlined),iconColor:  Color.fromARGB(255, 245, 24, 8),
                        labelText:"Enter your National ID",
                        hintText: "39978901827365",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: BorderSide(color: Color.fromARGB(255, 245, 24, 8))
                        ),
                        labelStyle: TextStyle(color:  Color.fromARGB(255, 245, 24, 8),)
                      ),
                      autofocus: true,
                      cursorColor:  Color.fromARGB(255, 245, 24, 8),
                    ), SizedBox(height: 20,),
                    TextField(
                      controller: phone,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone),iconColor:  Color.fromARGB(255, 245, 24, 8),
                        labelText:"Enter your Phone number",
                        hintText: "0103127942",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: BorderSide(color: Color.fromARGB(255, 245, 24, 8))
                        ),
                        labelStyle: TextStyle(color:  Color.fromARGB(255, 245, 24, 8),)
                      ),
                      autofocus: true,
                      cursorColor:  Color.fromARGB(255, 245, 24, 8),
                    ),
                     SizedBox(height: 20,),
                    TextField(
                      controller: password,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password_outlined),iconColor:  Color.fromARGB(255, 245, 24, 8),
                        labelText:"Enter your Password",
                        hintText: "nlihfoi@jsdp65",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: BorderSide(color: Color.fromARGB(255, 245, 24, 8))
                        ),
                        labelStyle: TextStyle(color:  Color.fromARGB(255, 245, 24, 8),)
                      ),
                      autofocus: true,
                      cursorColor:  Color.fromARGB(255, 245, 24, 8),
                    ),
                    SizedBox(height:30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                         
                          decoration: BoxDecoration(
                            color:  Color.fromARGB(255, 16, 46, 71),
                             borderRadius: BorderRadius.circular(20.0),
                                    border: Border.all(width: 1, color:Color.fromARGB(255, 16, 46, 71) , style: BorderStyle.solid)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment:MainAxisAlignment.spaceAround,
                              children: [
                                Container(height: 30,width: 30, child: Image.asset('lib/assets/Google.png',fit: BoxFit.contain,)),
                                Text("Login with Google",style: TextStyle(fontSize: 15,color: Colors.white),),
                              ],
                            ),
                          )),
                        SizedBox(width: 30,),
                        Container(
                         
                          decoration: BoxDecoration(
                            color:  Color.fromARGB(255, 16, 46, 71),
                             borderRadius: BorderRadius.circular(20.0),
                                    border: Border.all(width: 1, color:Color.fromARGB(255, 16, 46, 71) , style: BorderStyle.solid)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                 Container(height: 30,width: 30, child: Image.asset('lib/assets/facebook.png',fit: BoxFit.contain,)),
                                Text("Login with Facebook",style: TextStyle(fontSize: 15,color: Colors.white)),
                              ],
                            ),
                          ))
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("New User?", style: TextStyle(fontSize: 20),),
                        TextButton(onPressed: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Screen3(),));
                          });
                        }, child: Text("  Signup Now", style: TextStyle(color: Color.fromARGB(255, 245, 24, 8), fontSize: 20 ),))
                      ],
                    )
                ]
              ),
            ),
          ),
        ),
      ),
       )
        ),
          );
  }
}