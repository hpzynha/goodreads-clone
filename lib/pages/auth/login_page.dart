import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:goodreads/helpers/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: backgroundInput,
          automaticallyImplyLeading: false,
          title: Text(
            'Log In',
            style: TextStyle(color: primaryColor),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(50),
          children: [
            TextFormField(
              controller: _emailController,
              cursorColor: primaryColor,
              decoration: InputDecoration(
                  label: Text(
                    'Email',
                    style: GoogleFonts.roboto(
                        fontSize: 16.sp, color: primaryColor),
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: primaryColor))),
            ),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              cursorColor: primaryColor,
              decoration: InputDecoration(
                  label: Text(
                    'Password',
                    style: GoogleFonts.roboto(
                        fontSize: 16.sp, color: primaryColor),
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: primaryColor))),
            ),
            ElevatedButton(onPressed: () => login(), child: Text('Log In')),
            ElevatedButton(onPressed: () {}, child: Text('Sign Up')),
            Text(
              'By using Goodreads, you agree to our Terms of Use, Privacy Policy and Ads Policy.',
              style: GoogleFonts.roboto(fontSize: 14.sp, color: primaryColor),
            )
          ],
        ));
  }

  login() async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
              email: _emailController.text, password: _passwordController.text);
      if (userCredential != null) {
        Navigator.pushNamed(context, '/home');
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('User not Found'),
            backgroundColor: Colors.redAccent,
          ),
        );
      } else if (e.code == 'wrong-password') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Wrong Password'),
            backgroundColor: Colors.redAccent,
          ),
        );
      }
    }
  }
}
