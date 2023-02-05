import 'package:chatapp/models/message_model.dart';
import 'package:flutter/material.dart';

class FavoriteContacts extends StatelessWidget {
  const FavoriteContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Favorite Contacts",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_horiz),
                iconSize: 30.0,
                color: Colors.blueGrey,
              )
            ],
          ),
        ),
        Container(
          height: 120.0,
          color: Colors.blue,
          child: ListView.builder(
            padding: EdgeInsets.only(left: 10.0),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  CircleAvatar(
                    radius: 35.0,
                    backgroundImage: favorites[index].imageUrl,
                  ),
                  Text(favorites[index].name),
                ],
              );
            },
            itemCount: favorites.length,
          ),
        )
      ],
    );
  }
}
