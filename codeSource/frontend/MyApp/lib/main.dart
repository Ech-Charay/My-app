
import 'package:flutter/material.dart';
import 'Screens/SignInScreen.dart';
import 'Screens/Profil.dart';
import 'Screens/Home.dart';
import 'Screens/ToPostScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up Screen ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
     initialRoute: 'SignIn',
      routes: {
        'SignIn'          :(context)=>SignInScreen(),
      //  'SignUp'        :(context)=>SignUpScreen(),
        'Profil'          :(context)=>Profil(" "),
        'Home'            :(context)=>Home(),
        'ToPostWidget'    :(context)=>ToPostScreen(),

      },
    );
  }
}
