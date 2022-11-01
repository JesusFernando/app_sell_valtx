import 'package:app_sell_valtx/widgets/list_apps.dart';
import 'package:app_sell_valtx/widgets/my_stateful_widget.dart';
import 'package:flutter/material.dart';

class ContentMyCard extends StatelessWidget {
const ContentMyCard({ Key? key }) : super(key: key);

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
            "Monthly limits",
            style: TextStyle(
              fontSize: 20
            )
          ),
        ),
        const SizedBox(height: 20.0),
        Container(
          margin: const EdgeInsets.only(left: 15.0, right: 15.0),
          padding: const EdgeInsets.only(top: 15.0),
          height: 100.0,
          width: 400.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 15.0),
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: const TextSpan(
                    text: 'Ammount: ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(1, 0, 0, 0.5),
                    ),
                    children: [
                      TextSpan(
                        text: '\$ 9.000',
                        style: TextStyle(
                          color: Colors.blue
                        )
                      )
                    ]
                  ),
                ),
              ),
              MyStatefulWidget(),
            ],
          ),
        ),
        const SizedBox(height: 20.0),
        Container(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Transactions",
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10.0),
        const ListApps(),
      ],
    );;
  }
}