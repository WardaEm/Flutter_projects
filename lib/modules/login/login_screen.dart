



import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import '../../shared/components/component.dart';
class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Database? database;
  var emailcontroller=TextEditingController();

  var passcontroller=TextEditingController();

  var formkey=GlobalKey<FormState>();

bool ispassword=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: formkey,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Login', style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),

                  defaultText(controller: emailcontroller,
                    type: TextInputType.text,

                    validate: (value) {
                      if (value.isEmpty) {
                        return 'email must not be required';
                      }
                      return null;
                    },
                    label: 'Email address',
                    hint: 'email',
                    prefix: Icons.email,),
                  SizedBox(height: 20,),


                  defaultText(
                      controller: passcontroller,
                      type: TextInputType.visiblePassword,
                      ispassword: ispassword
                      ,
                      validate: (value) {
                        if (value.isEmpty) {
                          return 'password must not be required';
                        }
                        return null;
                      },
                      label: 'password address',
                      hint: 'password',
                      prefix: Icons.lock,
                      suffix: ispassword ? Icons.visibility : Icons
                          .visibility_off,
                      suffixpressed:
                          () {
                        setState(() {
                          ispassword = !ispassword;
                        });
                      }
                  ),
                  SizedBox(height: 20,),
                  defaultButton(
                    // width: double.infinity,
                      text: 'login',
                      // background: Colors.blue,

                      function: () {
                        if (formkey.currentState!.validate()) {
                          print(emailcontroller.text);
                          print(passcontroller.text);
                        }

                      }


                  ),
                  SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account?'),
                      TextButton(onPressed: () {

                      }, child: Text('Register Now'))
                    ],),

                ],
              ),
            ),
          ),
        ),
      ));
  }


}