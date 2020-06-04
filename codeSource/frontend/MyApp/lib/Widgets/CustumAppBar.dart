import 'package:flutter/material.dart';
import '../Screens/SignInScreen.dart';
import '../WebService/AuthController.dart';
import './SideMenuWidget.dart';

class CustumAppBar  {

  static logout(BuildContext context){
    AuthController.attemptLogOut();
    Navigator.pushNamedAndRemoveUntil(context, '/SignIn', (Route<dynamic> route) => false);
  }
  
 static Widget getAppBar(BuildContext context){
    return AppBar(
      leading: GestureDetector(
      child: Icon(Icons.menu,),
       onTap: () {  Navigator.pop(context);
                    Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SideMenuWidget()));
                     },
  ),  
      backgroundColor: Colors.blue[50],
      actions: <Widget>[
        Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: GestureDetector(    
        child: Icon( Icons.more_vert),
         onTap:  (){logout(context);},
      )
    ),
      ],);
  }
}





/* PreferredSize(

      preferredSize: Size.fromHeight(50),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [Colors.white, Color(0xFFF7F7FA)])),
        alignment: Alignment.bottomCenter,
        child: Row(
<<<<<<< HEAD
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
      
          ],
        ),
      ),
    ); */
















      /* IconButton(
              icon: Icon(Icons.menu),
              onPressed: (){
                    Navigator.pop(context);
                    Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SideMenuWidget()));
                    },
            ), 
            IconButton(
              icon: Icon(Icons.search),
=======
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: (){
                    Navigator.pop(context);
                    Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
                    },
            ),
            IconButton(
              icon: Icon(Icons.menu),
>>>>>>> c49bb10ed707052ac9aed3e19b2d7cd9e93dfe46
              onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignInScreen()));
              },
            )
<<<<<<< HEAD*/
