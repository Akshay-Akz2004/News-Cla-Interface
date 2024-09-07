import 'package:flutter/material.dart';

class Trendingcards extends StatelessWidget {
  final String imageurl;
  final String tag;
  final String title;
  final String time;
  final VoidCallback ontap;
  const Trendingcards(
      {super.key,
      required this.imageurl,
      required this.tag,
      required this.title,
      required this.time, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.all(10),
        width: 280,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.red),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white38,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network('$imageurl')),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$tag',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                Text(
                  '$time',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                )
              ],
            ),
            Text('$title',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ))
          ],
        ),
      ),
    );
  }
}
