import 'package:flutter/material.dart';
import 'package:project_volturi/main.dart';
import 'package:project_volturi/signin.dart';
import 'package:project_volturi/signup.dart';

class SignScreen extends StatelessWidget {
  const SignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/Lgogo3.jpg',
              width: 200,
              height: 69.49,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'images/Group1.png',
                ),
              ],
            ),
            SizedBox(
              height: 130,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 280,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SignIn();
                    }));
                    },
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.amber[900],
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Or',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 280,
              height: 60,
              child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SignUp();
                    }));
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                      primary: Colors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}