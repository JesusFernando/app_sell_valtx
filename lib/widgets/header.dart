import 'package:app_sell_valtx/widgets/header_appbar.dart';
import 'package:app_sell_valtx/widgets/operations.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
const Header({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      height: 360.0,
      padding: const EdgeInsets.only(
        top: 60.0,
        left: 20.0,
        right: 20.0,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(35.0),
          bottomRight: Radius.circular(35.0)
        ),
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(70, 131, 126, 1.0),
            Color.fromRGBO(159, 99, 84, 1.0)
          ]
        )
      ),
      child: Column(
        children: const [
          HeaderAppbar(),
          SizedBox(height: 40.0),
          Text(
            "Your Balance",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            "\$7.664,63",
            style: TextStyle(
              fontSize: 36.0,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 40.0),
          Operations(),
        ],
      ),
    );
  }
}