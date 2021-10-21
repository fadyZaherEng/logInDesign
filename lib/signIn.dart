import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInActivity extends StatefulWidget {
  @override
  State<SignInActivity> createState() => _SignInActivityState();
}

class _SignInActivityState extends State<SignInActivity> {
  TextEditingController Email = TextEditingController();

  TextEditingController Password = TextEditingController();

  bool isScure = true;
 var keyTextForm=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Log In",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
              padding: EdgeInsetsDirectional.only(
                top: 5.0,
                bottom: 5.0,
                start: 10.0,
                end: 10.0,
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: keyTextForm,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsetsDirectional.only(
                  top: 50.0,
                  bottom: 80.0,
                ),
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.blue,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Container(
                margin: EdgeInsetsDirectional.only(
                  start: 25.0,
                  end: 25.0,
                  bottom: 10.0,
                ),
                child: TextFormField(
                  controller: Email,
                  validator: (val){
                    if(val!.isEmpty) return 'email must not be empty';
                    return null;
                  },
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String val) {
                    print(val);
                  },
                  onFieldSubmitted: (String val) {
                    print(val);
                  },
                ),
              ),
              Container(
                margin: EdgeInsetsDirectional.only(
                  start: 25.0,
                  end: 25.0,
                  bottom: 10.0,
                ),
                child: TextFormField(
                  controller: Password,
                  validator: (val){
                    if(val!.isEmpty) return 'passowrd must not be empty';
                    return null;
                  },
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: isScure,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon: IconButton(
                      icon:isScure? Icon(
                        Icons.remove_red_eye,
                      ):Icon(
                        Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          isScure=!isScure;

                        });
                      },
                    ),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String val) {
                    print(val);
                  },
                  onFieldSubmitted: (String val) {
                    print(val);
                  },
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsetsDirectional.only(
                      top: 30.0, start: 30.0, end: 30.0),
                  padding: EdgeInsetsDirectional.only(
                    top: 4.0,
                    start: 4.0,
                    end: 4.0,
                    bottom: 4.0,
                  ),
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(
                    onPressed: () {
                      if(keyTextForm.currentState!.validate()){
                        print(Email.text);
                        print(Password.text);
                      }
                    },
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Register Now',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
