import 'package:app_sell_valtx/widgets/horizontal_bar.dart';
import 'package:app_sell_valtx/widgets/list_apps.dart';
import 'package:flutter/material.dart';

class Content extends StatelessWidget {
const Content({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        const SizedBox(height: 20.0),
        Container(
          width: double.infinity,
          alignment: const Alignment(-1.0, 0.0),
          padding: const EdgeInsets.only(left: 15.0),  
          color: null,
          child: const Text(
            "Send again",
            style: TextStyle(
              fontSize: 20
            )
          ),
        ),
        const SizedBox(height: 20.0),
        const HorizontalBar(),
        const SizedBox(height: 20.0),
        Container(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Recent transactions",
                style: TextStyle(
                  fontSize: 20
                ),
              ),
              Text(
                "See all",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.orange
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10.0),
        const ListApps(),
      ],
    );
  }
}