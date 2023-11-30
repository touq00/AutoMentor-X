import 'package:auto_mentorx/authentication/signup_page.dart';
import 'package:auto_mentorx/widgets/custom_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../home_page.dart';
import '../widgets/custom_textformfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  Future<void> _signInWithEmailAndPassword() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      // Successfully signed in
      print('User ID: ${userCredential.user!.uid}');

      // Navigate to the home screen or perform other actions
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return HomePage();
      }));
    } catch (e) {
      // Handle sign-in errors
      print('Error: $e');

      // Show a snackbar with the error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error: $e'),
          duration: Duration(seconds: 5),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFe87121),
      body: Column(
        children: [
          SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Image.asset('assets/images/AutoMentorX-logo.png'),
              )
            ],
          ),
          SizedBox(height: 30),
          Container(
            width: double.infinity,
            height: height * 0.674,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'LOGIN UP',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFFe87121),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  CustomTextFormField(
                    labelText: 'Email',
                    hintText: 'Enter Your Email',
                    icon: Icons.email_outlined,
                    controller: emailController,
                  ),
                  SizedBox(height: 35),
                  CustomTextFormField(
                    labelText: 'Password',
                    hintText: 'Enter Your Password',
                    icon: Icons.password_outlined,
                    controller: passwordController,
                    isPassword: true,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          // Handle forgot password
                        },
                        child: Text(
                          'Forgot your Password?',
                          style: TextStyle(
                            fontFamily: 'Muli',
                            color: Colors.grey[500],
                            decoration: TextDecoration.underline,
                            decorationColor: Color(0xFFe87121),
                            decorationThickness: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: CustomButton(
                      text: 'LOGIN',
                      onPressed: () {
                        _signInWithEmailAndPassword();
                      },
                    ),
                  ),
                  SizedBox(height: 15),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return SignUpPage();
                          }));
                    },
                    child: RichText(
                      text: TextSpan(
                        text: 'Don\'t Have An Account?  ',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          color: Colors.grey[400],
                        ),
                        children: [
                          TextSpan(
                            text: 'SignUp',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xFFe87121),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
