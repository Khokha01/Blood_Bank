import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HospitalRegister extends StatelessWidget {

var Hospitalname=TextEditingController();
var IDHospitalnumber=TextEditingController();
var hospitalphone=TextEditingController();
var location=TextEditingController();
var passwordd=TextEditingController();
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
                                        color: Color.fromRGBO(16, 46, 71, 1).withOpacity(0.5),
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
                                          child: Image.asset('lib/assets/hospital.png',fit: BoxFit.contain,),),
                                              decoration: BoxDecoration(
                                                  color:Colors.white,
                                                  borderRadius: BorderRadius.circular(20.0),
                                                  border: Border.all(width: 2, color:  Colors.black, style: BorderStyle.solid)
                                                ),
                                              ),
                                              SizedBox(height: 15,),
                        Text('Sign up as a Hospital',style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 16, 46, 71)),),
                        SizedBox(height: 20,),
                        TextField(
                        controller: Hospitalname,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.abc),iconColor:  Color.fromARGB(255, 245, 24, 8),
                          labelText:"Enter Hospital",
                          hintText: "El Salam El Dawli Hospital",
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
                        controller: IDHospitalnumber,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.numbers_outlined),iconColor:  Color.fromARGB(255, 245, 24, 8),
                          labelText:"Enter Hospital ID",
                          hintText: "09956877",
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
                        controller:location,
                        keyboardType: TextInputType.streetAddress,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email_rounded),iconColor:  Color.fromARGB(255, 245, 24, 8),
                          labelText:"Enter Hospital detailed location",
                          hintText: "Cairo - Al Wosta, Athar an Nabi, Old Cairo, Cairo Governorate 4220501",
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
                        controller: hospitalphone,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone),iconColor:  Color.fromARGB(255, 245, 24, 8),
                          labelText:"Enter hospital phone number",
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
                        controller: passwordd,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline_rounded),iconColor:  Color.fromARGB(255, 245, 24, 8),
                          labelText:"Enter Password",
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