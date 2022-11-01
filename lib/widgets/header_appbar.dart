import 'package:flutter/material.dart';

class HeaderAppbar extends StatelessWidget {
const HeaderAppbar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        square(Icons.menu),
        RichText(
          text: const TextSpan(
            text: 'Welcome back, ',
            style: TextStyle(
              fontSize: 16.0,
            ),
            children: [
              TextSpan(
                text: 'Airp!',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ]
          ),
        ),
        square(Icons.notification_add_rounded),
      ],
    );
  }

  Widget square(IconData icon){
    return Container(
      width: 35.0,
      height: 35.0,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Icon(icon, color: Colors.white),
    );
  }
}