import 'package:auto_mentorx/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool typing = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.draw),

            ),
          ],
        ),
      ),
     appBar: AppBar(
       automaticallyImplyLeading: false,
       title: Row(
         children: [
           Expanded(
             child: Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                     color: Color(0xFFf4f4f4)
               ),
               child: TextField(
                 decoration: InputDecoration(
                   enabledBorder: InputBorder.none,
                   focusedBorder: InputBorder.none,
                   hintText: 'Search Product',
                   hintStyle: TextStyle(
                     fontSize: 14,
                     fontFamily: 'Poppins'
                   ),
                   prefixIcon: Padding(
                     padding: const EdgeInsets.all(15),
                     child: SvgPicture.asset('assets/icons/Search Icon.svg'),
                   )
                 ),
               ),
             ),
           ),
           const SizedBox(width: 10),
           Stack(
             children: [
               Container(
                 width: 45,
                 height: 45,
                 decoration: BoxDecoration(
                   color: const Color(0XFFf4f4f4),
                   borderRadius: BorderRadius.circular(25),
                 ),
                 child: Center(
                   child: SvgPicture.asset('assets/icons/Bell.svg'),
                 ),
               ),
               Container(
                 margin: const EdgeInsets.only(left: 35),
                 width: 18,
                 height: 18,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(25),
                   color: Colors.red,
                 ),
                 child: const Center(
                   child: Text(
                     '+99',
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 9,
                     ),
                   ),
                 ),
               ),
             ],
           ),

         ],
       ),
     ),
      body: SafeArea(
        child: Column(
          children: [
          ],
        ),
      ),
    );
  }
}

