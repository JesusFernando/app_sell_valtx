import 'package:app_sell_valtx/widgets/app_bottom_navigation.dart';
import 'package:app_sell_valtx/widgets/content_my_card.dart';
import 'package:app_sell_valtx/widgets/header_my_card.dart';
import 'package:app_sell_valtx/widgets/horizontal_bar_my_card.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
const MyCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: const [
          HeaderMyCard(),
          HorizontalBarMyCard(),
          ContentMyCard()
        ],
      ),
      bottomNavigationBar: const AppBottomNavigation(),
    );
  }
}