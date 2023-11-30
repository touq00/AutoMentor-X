
import 'package:auto_mentorx/profile/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'home_page.dart';
import 'liked_product_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int currentPage = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: currentPage);
  }

  void onPageChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

  // void onTap(int index) {
  //   _pageController.animateToPage(
  //     index,
  //     duration: Duration(milliseconds: 400),
  //     curve: Curves.easeInOutCubic,
  //   );
  // }
  void onTap(int index) {
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: const [
          HomePage(),
          FavPage(),
          ChatBubble(),
          UserProfile(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentPage,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/Shop Icon.svg',
                  color: currentPage==0?const Color(0xFFff7643):const Color(0xFFc8c8c8)
              ), label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/Heart Icon.svg', color: currentPage==1?const Color(0xFFff7643):null,), label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/Chat bubble Icon.svg', color: currentPage==2?const Color(0xFFff7643):null,),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/User Icon.svg', color: currentPage==3?const Color(0xFFff7643):null,), label: ''),
        ],
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  const ChatBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Text(
          'Chat Bubble',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
