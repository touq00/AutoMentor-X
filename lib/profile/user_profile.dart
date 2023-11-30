import 'package:auto_mentorx/authentication/login_page.dart';
import 'package:flutter/material.dart';

import 'edit_profile_page.dart';


class UserProfile extends StatelessWidget {
  const UserProfile({super.key, this.backgroundImage});

  @override
  final ImageProvider? backgroundImage;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFf3f3f3),
        body:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40,),
              const Text('Profile',
                style: TextStyle(
                  fontSize: 35,
                  fontFamily: 'Muli',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 25,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle
                    ),
                    child: Image.asset('assets/images/Profile Image.png'),
                  ),
                  const SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Ayoub Touq',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Muli',
                            fontSize: 20
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Text('(+962)79 5195555',
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontFamily: 'Muli',
                            letterSpacing: 1,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 25,)
                    ],
                  ),
                ],
              ),
              const Text('Order History',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Muli',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20,),
              ProfileMenuWidget(
                title: 'My Orders',
                icon: Icons.shopping_cart_outlined,
                onPress: (){},
              ),
              const SizedBox(height: 30,
              ),
              const Text('My Account',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Muli',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20,),
              ProfileMenuWidget(
                  title: 'Edit Profile',
                  icon: Icons.person_outline_rounded ,
                  onPress: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const EditProfile()));

                  }
              ),
              const SizedBox(height: 10,),
              ProfileMenuWidget(
                  title: 'My Address',
                  icon: Icons.gps_fixed_rounded,
                  onPress: (){}),
              const SizedBox(height: 30,),
              const Text('Help',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Muli',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20,),
              ProfileMenuWidget(
                  title: 'About Us',
                  icon: Icons.assignment_outlined,
                  onPress: (){}),
              const SizedBox(height: 10,),
              ProfileMenuWidget(
                  title: 'Logout',
                  icon: Icons.logout_rounded,
                  textColor: Colors.red,
                  endIcon: false,
                  onPress: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginPage()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}




class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon=true,
    this.textColor,
  });
  final String title; //title for container
  final IconData icon; //the icon that related
  final VoidCallback onPress; //for traveling
  final bool endIcon; // if theres container doesnt need suffix icon(logout)
  final Color? textColor;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 45,height: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: const Color(0xFFff7643)
        ),
        child: Icon(icon, color: Colors.white,
        ),
      ),
      title:Text(title,
          style: const TextStyle(
              fontFamily: 'Muli').apply(color: textColor)
      ),
      trailing: endIcon? Container(
          width: 30,height: 30,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,

          ),
          child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey[500],size: 18,)): null,
    );
  }
}