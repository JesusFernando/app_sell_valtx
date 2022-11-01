import 'package:flutter/material.dart';

class HeaderMyCard extends StatelessWidget {
const HeaderMyCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.black),
      centerTitle: true,
      title: const Text(
        "My Card",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}