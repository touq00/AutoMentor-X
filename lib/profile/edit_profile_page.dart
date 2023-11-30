import 'package:auto_mentorx/widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf3f3f3),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child:  Container(
                    width: 40,height: 40,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,color: Colors.white),
                    child: const Icon(Icons.arrow_back_ios_rounded,color: Colors.black,),
                  ),
                ),
                const SizedBox(height: 10,),
                const Text('Edit Profile',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Muli',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20,),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 140,
                          height: 140,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle
                          ),
                          child: Image.asset('assets/images/Profile Image.png'),
                        ),
                      ],
                    ),
                    TextButton(onPressed: (){},
                        style: TextButton.styleFrom(
                          foregroundColor: const Color(0xFFff7643),
                        ),
                        child: const Text('Change Picture')
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFormField(labelText: 'Name', hintText: ''),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFormField(labelText: 'Email', hintText: ''),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFormField(labelText: 'Phone Number', hintText: ''),
                const SizedBox(
                  height: 20,
                ),

                const SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    SizedBox(
                      height: 40,
                      width: 130,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor: Colors.white,
                          ),
                          onPressed: (){},
                          child: const Text('Cancel',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Muli',
                                color: Colors.black
                            ),
                          )
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      width: 130,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor: const Color(0xFFff7643),
                          ),
                          onPressed: (){},
                          child: const Text('Save',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Muli'
                            ),
                          )
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EditPageFields extends StatelessWidget {
  const EditPageFields({
    super.key,
    required this.label,
    required this.hintText,
  });
  final String label;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.symmetric(
              horizontal: 30, vertical: 20),
          labelText:label,
          labelStyle: const TextStyle(color: Colors.grey),
          hintText:hintText,
          helperStyle: const TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          )),
    );
  }
}
