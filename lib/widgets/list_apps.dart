import 'package:flutter/material.dart';

class ListApps extends StatelessWidget {
const ListApps({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 172.00,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          listAppsSuscripted(
            pathImage: 'assets/figma.png',
            nameApp: 'Figma',
            monthSuscription: 'February 21, 2022',
            priceSuscription: '433,00'
          ),
          listAppsSuscripted(
            pathImage: 'assets/netflix.png',
            nameApp: 'Netflix',
            monthSuscription: 'February 1, 2022',
            priceSuscription: '4,00'
          ),
          listAppsSuscripted(
            pathImage: 'assets/netflix.png',
            nameApp: 'Netflix',
            monthSuscription: 'February 21, 2022',
            priceSuscription: '433,00'
          ),
        ],
      ),
    );
  }
  Widget listAppsSuscripted ({
    required String pathImage,
    required String nameApp,
    required String monthSuscription,
    required String priceSuscription
  }
  ){
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0, left: 15.0, right: 15.0),
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(pathImage),
        ),
        title: Text(nameApp),
        subtitle: Text(monthSuscription),
        trailing: Column(
          children: [
            const SizedBox(height: 10.0),
            Text(
              "\$${priceSuscription}",
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 16 
              )            
            ),
            const SizedBox(height: 5.00),
            const Text(
              "Subscription",
              style: TextStyle(
                color: Color.fromRGBO(1, 0, 0, 0.5)
              )
            )
          ]
        )
      )
    );
  }
}