import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_flutter/bottomnavigation.dart';
import 'package:news_flutter/search.dart';
import 'package:news_flutter/verticalcards.dart';

class Articlepage extends StatelessWidget {
  const Articlepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('DAILY',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),Text('DIGEST',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 25),)],
          
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Bottomnavigation(),
          ],
        ),
      ),
      body :SingleChildScrollView(
      child:Column(
        
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Searchwidget(),
            
          ),
          Verticalcards(),
          Verticalcards(),
          Verticalcards(),
          Verticalcards(),
          Verticalcards(),
          Verticalcards(),
          Verticalcards(),
          Verticalcards(),
          Verticalcards()
        ],
      ),
      )
    );
  }
}
