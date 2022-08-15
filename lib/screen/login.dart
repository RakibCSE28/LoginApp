
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

import 'Home.dart';

class loginScreen extends StatefulWidget {
  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final  _formKey = GlobalKey<FormState>();
  late String user, pass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset("assets/images/shopping.png"),
                      Text(
                        "Welcome to my Shop",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30.0,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.all(Radius.circular(60.0)),
                        ),

                        child: TextFormField(
                          validator: (value){
                            if(value!.isEmpty){
                              return 'Please Input A Username';
                            }else{
                              setState(() {
                                user = value;
                              });
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.face,
                              color: Theme.of(context).primaryColor,
                            ),
                            labelStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                            ),
                            border: InputBorder.none,
                            labelText: "UserName",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        ),

                        child: TextFormField(
                          validator: (value){
                            if(value!.isEmpty){
                              return 'Please Input A Username';
                            }else{
                              setState(() {
                                pass= value;
                              });
                              return null;
                            }
                          },
                          obscureText: true,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Theme.of(context).primaryColor,
                            ),
                            labelStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                            ),
                            border: InputBorder.none,
                            labelText: "Password",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      RaisedButton(onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          print("user:"+user+", Pass: "+pass);
                          Toast.show("Authentication Successfull", textStyle: context, duration: Toast.lengthShort, gravity:  Toast.bottom);
                          Navigator.push(context,MaterialPageRoute(builder: (context) => HomeScreen(),));
                        }
                      },
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 20),
                        ),),
                      SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Do not have a account"),
                            FlatButton(onPressed: (){},
                                child: Text("Register Now.")
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}