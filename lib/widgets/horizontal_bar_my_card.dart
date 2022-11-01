import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';

class HorizontalBarMyCard extends StatelessWidget {
const HorizontalBarMyCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return CarouselSlider(
      options: CarouselOptions(
        height: 300,
        viewportFraction: 0.6,
        enlargeCenterPage: true,
        initialPage: 1,
        enableInfiniteScroll: false,
      ),
      items: [
        Container(
          margin: const EdgeInsets.only(left: 150.0),
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              width: 2.0, 
              color: Colors.grey.shade400,
            ),
          ),
          child: IconButton(
                icon: const Icon(
                  Icons.add_box,
                  color: Color.fromRGBO(1,0,0,0.5)
                ),
                onPressed: (){},
          ),
        ),
        Container(
          width: 250,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color.fromRGBO(70, 131, 126, 1.0),
                Color.fromRGBO(159, 99, 84, 1.0)
              ],
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            children: [
              const SizedBox(height: 10.0),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 30.0, right: 30.0),
                title: const Text(
                  "X-Card",
                  style: TextStyle(
                    color: Colors.white,
                  )
                ),
                trailing: Container(
                  height: 50.0,
                  width: 60.0,
                  child: SvgPicture.asset(
                    'assets/visa.svg',
                    color: Colors.white
                  ),
                ),
              ),
              const SizedBox(height: 40.0),
              const ListTile(
                contentPadding: EdgeInsets.only(left: 30.0, right: 30.0),
                isThreeLine: true,
                title: Text(
                  "Balance",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(255,255,255, 0.5)
                  )
                ),
                subtitle: Text(
                  "\$4.664,63",
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white
                  )
                )
              ),
              const SizedBox(height: 40.0),
              const ListTile(
                contentPadding: EdgeInsets.only(left: 30.0, right: 30.0),
                leading: Text(
                  "**** 2468",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(255,255,255, 0.5)
                  )
                ),
                trailing: Text(
                  "12/24",
                  style: TextStyle(
                    color: Colors.white
                  )
                )
              )
            ],
          )
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[350],
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ],
    );
  }
}