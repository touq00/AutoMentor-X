import 'package:auto_mentorx/home_page.dart';
import 'package:auto_mentorx/widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import 'login_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFe87121),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 80,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 180,
                  width: 180,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white
                  ),
                  child: Image.asset('assets/images/AutoMentorX-logo.png'),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: height * 2,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('SIGN UP',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFFe87121),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2
                          ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      CustomTextFormField(
                        labelText: 'UserName',
                        hintText: 'Enter Your UserName',
                        icon: Icons.person_outline_rounded,

                      ),
                      SizedBox(height: 20,),
                      CustomTextFormField(
                        labelText: 'Email',
                        hintText: 'Enter Your Email',
                        icon: Icons.email_outlined,
                      ),
                      SizedBox(height: 20,),
                      CustomTextFormField(
                        labelText: 'Phone',
                        hintText: 'Enter Your PhoneNumber',
                        icon: Icons.phone_android_rounded,
                      ),
                      SizedBox(height: 20,),
                      CustomTextFormField(
                        labelText: 'Password',
                        hintText: 'Enter Your Password',
                        icon: Icons.password_outlined,
                      ),
                      SizedBox(height: 20,),
                      CustomTextFormField(
                        labelText: 'Confirm Password',
                        hintText: 'Re-type Your Password',
                      ),
                      SizedBox(height: 20,),
                      CustomButton(
                        text: 'SIGN UP',
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return HomePage();
                          }));
                        },
                      ),
                      SizedBox(height: 15,),
                      InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return LoginPage();
                            }));
                          },
                          child: RichText(
                            text: TextSpan(
                                text: 'Already Have An Account?  ',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  color: Colors.grey[400],
                                ),

                                children: [
                                  TextSpan(
                                      text: 'Login',
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Color(0xFFe87121),
                                      )
                                  ),
                                ]
                            ),
                          )
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}




