import 'package:flutter/material.dart';

class HorizontalBar extends StatelessWidget {
const HorizontalBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      color: null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 70.0,
            width: 70.0,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.search,
              size: 30
            ),
          ),
          userProfiles(
            url: 'https://st3.depositphotos.com/1743476/12909/i/950/depositphotos_129095982-stock-photo-woman-wearing-glasses.jpg',
            name: 'Tiana Saris',
            s: 233.00
          ),
          userProfiles(
            url: 'https://images.unsplash.com/photo-1520341280432-4749d4d7bcf9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Z2xhc3NlcyUyMG1lbnxlbnwwfHwwfHw%3D&w=1000&q=80',
            name: 'Schleifer',
            s: 33.00
          )
        ]
      ),
    );
  }

  Widget userProfiles({
    required String url,
    required String name,
    required double s
  }){
    return Container(
            height: 70.0,
            width: 154.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color:Colors.white,
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(url)
              ),
              title: Text(name),
              subtitle: Text("\$$s")
            )
          );
  }
}