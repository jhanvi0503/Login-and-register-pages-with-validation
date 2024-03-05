import 'package:final_26mar/dialouge.dart';
import 'package:final_26mar/home.dart';
import 'package:final_26mar/register.dart';
import 'package:flutter/material.dart';


class login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return finestate();
  }

}
class finestate extends State<fine>{
  var _myformkey=GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("LOGIN"),
        ),
        body:Container(
            padding: EdgeInsets.symmetric(vertical:25.0,horizontal: 25.0),
            child:Form(
                key:_myformkey,
                child:Column(
                  children: <Widget>[
                    Image.asset(
                      "Images/profile-icon-9.png",
                      height: 200,
                      width: 200,
                    ),
                    //SizedBox(height:50),
                    Padding(padding: EdgeInsets.all(5.0),
                      child:  TextFormField(
                        validator:(String? msg){
                          if(msg!.isEmpty){
                            return "Please enter first name";
                          }
                          if(msg!.length<3){
                            return "name should contain more than 3 characters";
                          }
                          if(msg!="jhanvi"){
                            return "Invalid user name";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            labelText: "Email ID",
                            hintText: "Enter Email ID",
                            prefixIcon: Icon(Icons.email),
                            border:OutlineInputBorder(
                                borderRadius:BorderRadius.circular(5.0)
                            )

                        ),
                      ),
                    ),
                    Padding(padding:
                    EdgeInsets.all(5.0),
                      child:  TextFormField(
                        obscureText: true,
                        validator:(String? msg){
                          if(msg!.isEmpty){
                            return "Please enter password";
                          }
                          if(msg!.length<3){
                            return "password should contain more than 3 characters";
                          }
                          if(msg!="000"){
                            return "Invalid password";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            labelText: "Password",
                            hintText: "Enter password",
                            prefixIcon: Icon(Icons.password),
                            border:OutlineInputBorder(
                                borderRadius:BorderRadius.circular(5.0)
                            )

                        ),
                      ),
                    ),
                    Padding(
                      padding:EdgeInsets.all(10.0),
                      child: Container(
                        height: 50,
                        width: 550,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child:TextButton(onPressed:(){
                          if(_myformkey.currentState!.validate()){
                            Navigator.push(context,
                                MaterialPageRoute(builder:(context)=>home())
                            );
                          }


                        },

                          child: Center(
                              child: Text("log in",
                                style: TextStyle(
                                  color:Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Already have an Account ?",style: TextStyle(
                          fontSize: 17,
                        ),
                        ),
                        TextButton(onPressed:(){
                          Navigator.push(context,
                              MaterialPageRoute(builder:(context)=>regi())
                          );
                        }, child:Text("Sign in",style:TextStyle(
                          fontSize: 18,
                          fontWeight:FontWeight.bold,
                        ),
                        )
                        )
                      ],
                    )




                  ],
                )
            )
        )

    );
  }
}