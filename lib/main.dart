import 'package:flutter/material.dart';
import 'package:sign_in/signIn.dart';


// void main() {
//   runApp(MyFirstApp());
// }
main()=>runApp( MyFirstApp());
//widget two type
//StatelessWidget
//StatefulWidget

class MyFirstApp extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {
    return   MaterialApp(
      home: SignInActivity(),
    );
  }
// This widget is the root of your application.
}