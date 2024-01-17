import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
            'Create Account',
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
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(20.0),
                  labelText: 'Username',
                  labelStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                  )),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(20.0),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                  )),
              obscureText: true,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(20.0),
                  labelText: 'Ulangi Password',
                  labelStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                  )),
              obscureText: true,
            ),
            SizedBox(
              height: 100,
            ),
            SizedBox(
              width: 280,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.amber[900],
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        )
        
      ),
    );
  }
}
