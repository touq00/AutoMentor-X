import 'package:auto_mentorx/authentication/signup_page.dart';
import 'package:auto_mentorx/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../home_page.dart';
import '../widgets/custom_textformfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFe87121),
      body: Column(
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
              )
            ],
          ),
          SizedBox(height: 30,),
          Container(
            width: double.infinity,
            height: height *0.674,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('LOGIN UP',
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
                    labelText: 'Email',
                    hintText: 'Enter Your Email',
                    icon: Icons.email_outlined,
                  ),
                  SizedBox(height: 35,),
                  CustomTextFormField(
                    labelText: 'Password',
                    hintText: 'Enter Your Password',
                    icon: Icons.password_outlined,
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {

                        },
                        child: Text(
                          'Forgot your Password?',
                          style: TextStyle(
                              fontFamily: 'Muli',
                              color: Colors.grey[500],
                              decoration: TextDecoration.underline,
                            decorationColor: Color(0xFFe87121),
                            decorationThickness: 2
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 50,),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: CustomButton(
                      text: 'LOGIN',
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return HomePage();
                        }));
                      },
                    )
                  ),
                  SizedBox(height: 15,),
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
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
                                  )
                              ),
                            ]
                        ),
                      )
                  )
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
//hgytuhbtygh