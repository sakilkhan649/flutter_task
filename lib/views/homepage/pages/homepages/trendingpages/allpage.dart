import 'package:flutter/material.dart';

class Allpage extends StatelessWidget {
  const Allpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 22,),
          Center(child: Text("all",style: TextStyle(color: Colors.black),)),
        ],
      ),
    );
  }
}
