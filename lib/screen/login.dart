import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';


class Login extends StatefulWidget {
  const Login({ Key? key,  }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  googleLogin() async{
    print('google login method call');
    
    GoogleSignIn _googleSignIn=GoogleSignIn(clientId: '');
    try {
     var result= await _googleSignIn.signIn();
     print(result);
  } catch (error) {
    print(error);
  }
   }
// Future googleLogin() async{
//  Future   googleLogin() async{
//    final user= await GoogleSignInApi.login();
//    if(user==null){
//      ScaffoldMessenger.of(context)
//      .showSnackBar(SnackBar(content: Text('Sign in failed')));
//    }else{
//     //  Navigator.push(context, MaterialPageRoute(builder: (context)=>loggedinPage(user: user)));
//    }
//     // Navigator.push(context,MaterialPageRoute(builder: ((context) => ))
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login With Google"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
          googleLogin();
        }, 
        child: Text("Goolge Loginn")
        ),
      ),
      
    );
  }
}

// class GoogleSignInApi{

//  static final _googleSignIn=GoogleSignIn(
//    clientId: '912062729956-4k1mj2v4imfoo33g8l8sgf4fe87ai8lk.apps.googleusercontent.com',

//    );
//  static Future <GoogleSignInAccount?> login()=>_googleSignIn.signIn();
// }