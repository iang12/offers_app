import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:restaurant_design_app/gradients.dart';
import 'package:restaurant_design_app/screens/home/home.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
        body: ListView(
      shrinkWrap: true,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(gradient: custom_gradient),
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Spacer(),
              Text(
                'Hello There.',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Login or sign to continue',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              SizedBox(
                height: 45,
              ),
              Container(
                padding: EdgeInsets.only(right: 20, left: 20),
                height: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'E-mail', suffixIcon: Icon(Icons.email)),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          suffixIcon: Icon(Icons.visibility)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/face_icon.png')),
                              color: Colors.blue[100].withOpacity(0.5),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.grey[100],
                              image: DecorationImage(
                                  image: AssetImage('assets/icon_google.png')),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (_) => Home())),
                          child: Container(
                            margin: EdgeInsets.only(left: 30),
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.25,
                            height: 70,
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            decoration: BoxDecoration(
                                gradient: custom_gradient,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Spacer(),
              Center(
                child: RichText(
                  text: TextSpan(
                      text: 'Don\'t have an account? ',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                      children: [
                        TextSpan(
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          text: 'SIGN IN',
                        )
                      ]),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
