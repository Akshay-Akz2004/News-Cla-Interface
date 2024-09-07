import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_flutter/bottomnavigation.dart';
import 'package:news_flutter/controller/newscontroller.dart';
import 'package:news_flutter/newsdetails.dart';
import 'package:news_flutter/trendingCards.dart';
import 'package:news_flutter/verticalcards.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hottest News',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text('See All'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Trendingcards(
                      ontap: () {
                          
          
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Newsdetails()));
                      },
                      imageurl:
                          'https://c.ndtvimg.com/2024-05/0bfiir3o_arvind-kejriwal_625x300_13_May_24.jpeg?downsize=340:209&w=340',
                      tag: 'Trending #1',
                      time: '1 hour ago',
                      title:
                          '"His Assumption... ": Top Court Junks Probe \nAgency Arvind Kejriwal Plea"',
                    ),
                    Trendingcards(
                        ontap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Newsdetails()));
                        },
                        imageurl:
                            'https://c.ndtvimg.com/2024-05/3l6p00t_battleground-up_650x400_16_May_24.jpg?downsize=277:170&w=277',
                        tag: 'Trending #2',
                        title:
                            'Will BJP Be Able To Sustain Its Surge In Uttar Pradesh: NDTV Battleground | Highlights',
                        time: '2 days ago'),
                    Trendingcards(
                        ontap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Newsdetails()));
                        },
                        imageurl:
                            'https://c.ndtvimg.com/2024-05/sdmstkf_virat-kohli-ms-dhoni-bcci_625x300_15_May_24.jpg?im=FaceCrop,algorithm=dnn,width=335,height=207&w=335',
                        tag: 'Trending #3',
                        title:
                            'IPL 2024 Playoffs Race: No Chance For RCB, \nExperts Have Four Common Picks',
                        time: '4 hour ago')
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'News for you',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text('See all')
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [Verticalcards(), Verticalcards(), Verticalcards()],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
