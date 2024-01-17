import 'package:flutter/material.dart';
import 'package:project_volturi/signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(92),
        child: AppBar(
          flexibleSpace: const Image(
            image: AssetImage('images/headerLogin.jpg'),
            fit: BoxFit.cover,
          ),
          title: const Text(
            'Login Account',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Sign In',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
          TextFormField(
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.all(20.0),
              labelText: 'Username',
              labelStyle: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15,
              )
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.all(20.0),
              labelText: 'Password',
              labelStyle: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15,
              )
            ),
            obscureText: true,
          ),
          SizedBox(
                  width: 280,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const SignIn();
                    }));
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.amber[900],
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const SignUp();
              }));
            },
            child: const Text(
              'Belum Punya Akun?',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple,
                  fontFamily: 'Poppinss',
                  fontWeight: FontWeight.normal),
            ),
          ),
        ],
      ),
    );
  }
}
