import 'package:flutter/material.dart';
import 'package:news_flutter/articlepage.dart';
import 'package:news_flutter/home.dart';

class Bottomnavigation extends StatelessWidget {
  const Bottomnavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                icon: Icon(Icons.home, color: Colors.white)),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Articlepage()));
              },
              icon: Icon(
                Icons.book,
                color: Colors.white,
              ),
            ),
            Icon(
              Icons.settings,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
