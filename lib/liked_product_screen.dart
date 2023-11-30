import 'package:flutter/material.dart';

class FavPage extends StatelessWidget {
  const FavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Text('THIS IS WHERE THE LIKED PRODUCT LAND',style: TextStyle(
            fontSize: 30
        ),),
      ),
    );
  }
}
