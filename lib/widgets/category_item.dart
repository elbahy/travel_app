import 'package:flutter/material.dart';
import 'package:travel_app/screens/catergory_trips_screen.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(this.id, this.title, this.imageUrl);

  final String id;
  final String title;
  final String imageUrl;
  void selectCategory(BuildContext cx) {
    Navigator.of(cx).push(MaterialPageRoute(
      builder: (c) => CategoryTripsScreen(id, title),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              imageUrl,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline6,
            ),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.4),
              borderRadius: BorderRadius.circular(15),
            ),
          )
        ],
      ),
    );
  }
}
