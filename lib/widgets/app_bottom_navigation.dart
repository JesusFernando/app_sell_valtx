import 'package:app_sell_valtx/views/home/home_view.dart';
import 'package:app_sell_valtx/views/screens/my_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBottomNavigation extends StatelessWidget {
const AppBottomNavigation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      height: 70,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.home,
              color: Color.fromRGBO(1,0,0,0.5)
            ),
            onPressed: (){const HomeView();},
          ),
          IconButton(
            icon: const Icon(
              Icons.insert_chart,
              color: Color.fromRGBO(1,0,0,0.5)
            ),
            onPressed: (){},
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color.fromRGBO(46, 159, 141, 100),Color.fromRGBO(215, 115, 82, 100)]
              ),
              shape: BoxShape.circle
            ),
            child: IconButton(
              icon: const Icon(
                Icons.add_box,
                color: Color.fromRGBO(1,0,0,0.5)
              ),
              onPressed: (){},
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.credit_card,
              color: Color.fromRGBO(1,0,0,0.5)
            ),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyCard()) 
              );
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.person,
              color: Color.fromRGBO(1,0,0,0.5)
            ),
            onPressed: (){},
          )
        ],
      )
    );
  }
}