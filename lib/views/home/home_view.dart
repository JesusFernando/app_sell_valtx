import 'package:app_sell_valtx/widgets/content.dart';
import 'package:app_sell_valtx/widgets/header.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_bottom_navigation.dart';

class HomeView extends StatelessWidget {
const HomeView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: const[
          Header(),
          Content(),
        ],
      ),
      bottomNavigationBar: const AppBottomNavigation(),
    );
  }
}