import 'package:flutter/material.dart';
import 'package:news_flutter/bottomnavigation.dart';

class Newsdetails extends StatelessWidget {
  const Newsdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Bottomnavigation()],
        ),
      ),
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'DAILY',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Text(
              'DIGEST',
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 25),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Container(
              height: 330,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(image: NetworkImage('https://www.hindustantimes.com/_next/image?url=https%3A%2F%2Fwww.hindustantimes.com%2Fht-img%2Fimg%2F2024%2F05%2F16%2F550x309%2Fradhika_merchant_anant_ambani_1709782298569_1715875439101.jpeg&w=1920&q=75'),
                      fit: BoxFit.fill,),
                    ),
                  )
                ],
              ),
            ),
            Text('Anant Ambani and Radhika Merchant’s pre-wedding in Jamnagar: 5 memorable moments',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(height: 6,),
            Text('2 days ago',style: TextStyle(color: Colors.grey,fontSize: 14),),
            Text('news content here news content here news content here news content here news content here news content here news content here news content here news content here',style: TextStyle(fontSize: 18),)
            
          ],
        ),
      ),
    );
  }
}
