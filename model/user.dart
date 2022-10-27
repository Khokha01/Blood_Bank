import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserRegister extends StatelessWidget {
  var username= TextEditingController();
  var IDusernumber= TextEditingController();
  var userphone= TextEditingController();
  var userpassword= TextEditingController();
  var usermail= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width:850,
                  decoration: BoxDecoration(
                              color: Colors.white ,
                                      borderRadius: BorderRadius.circular(20.0),
                                      border: Border.all(width: 2, color:Color.fromARGB(255, 16, 46, 71) , style: BorderStyle.solid),
                                      boxShadow: [BoxShadow(
                                        color: Color.fromARGB(255, 16, 46, 71).withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: Offset(3, 3)
                                      )]
                                    ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                              height: 100,
                              width: 100,
                                child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                          child: Image.asset('lib/assets/profile.png',fit: BoxFit.contain,),),
                                              decoration: BoxDecoration(
                                                  color:Colors.white,
                                                  borderRadius: BorderRadius.circular(20.0),
                                                  border: Border.all(width: 2, color:  Colors.black, style: BorderStyle.solid)
                                                ),
                                              ),
                                              SizedBox(height: 15,),
                        Text('Sign up as a User',style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 16, 46, 71)),),
                        SizedBox(height: 20,),
                        TextField(
                        controller: username,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.abc),iconColor:  Color.fromARGB(255, 245, 24, 8),
                          labelText:"Enter your full name",
                          hintText: "mohamed nashaat mohamed",
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
                        controller: IDusernumber,
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
                        controller: usermail,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email_rounded),iconColor:  Color.fromARGB(255, 245, 24, 8),
                          labelText:"Enter your Email",
                          hintText: "mldblibwi@gmail.com",
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
                        controller: userphone,
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
                        controller: userpassword,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline_rounded),iconColor:  Color.fromARGB(255, 245, 24, 8),
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
                      ],
                    ),
                  ),
                ),
              ],
            )),
        )
          ),
    );
  }
}