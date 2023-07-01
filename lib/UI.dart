import 'package:flutter/material.dart';
import 'package:untitled/HomePage.dart';

class UI extends StatelessWidget {
  const UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.blue,
      home: UIPage(),
    );
  }
}class UIPage extends StatefulWidget {
  const UIPage({Key? key}) : super(key: key);

  @override
  State<UIPage> createState() => _UIPageState();
}

class _UIPageState extends State<UIPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Set the number of tabs
        child: Scaffold(
        appBar: AppBar(
          leading: BackButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          },),
          backgroundColor: Colors.black,
        title: Center(child: Text('Live',)),
    bottom: TabBar(
    tabs: [
    Tab(text: 'Play'),
    Tab(text: 'Scorecard'),
    Tab(text: 'Info'),
      Tab(text: 'Orders',)
    ],
    ),
    ),body: TabBarView(
          children: [
           Play(),
            Center(child: Text('Content for Tab 2')),
            Center(child: Text('Content for Tab 3')),
            Center(child: Text('Content for Tab 4')),
          ],
        ),
        ),
    );
  }
}
class Play extends StatefulWidget {
  const Play({Key? key}) : super(key: key);

  @override
  State<Play> createState() => _PlayState();
}

class _PlayState extends State<Play> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 40,
            width: 1000,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(borderRadius:BorderRadius.circular(18),color: Colors.teal),
            child: Center(child: Text('200  runs  need  in  120  Balls',style: TextStyle(color: Colors.white,fontSize: 20),)),
      ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                width: 100,
                child: Image.network("https://tse2.mm.bing.net/th?id=OIP.mj6ZxHH_YhezE3baAh0MNwHaEs&pid=Api&P=0&h=180"),
              ),SizedBox(width: 10),
              Container(
                child: Column(children: [
                  Text('RR'),
                  Text('120'),
                  Text('Over-15'),
                ]),
              ),SizedBox(width: 10),
              Container(
                height: 50,
                width: 50,
                child: Image.asset('assets/images/middle.png'),
              ),SizedBox(width: 10),
              Container(
                child:  Column(children: [
                  Text('RR'),
                  Text('120'),
                  Text('Over-15'),
                ]),
              ),SizedBox(width: 10),
              Container(
                height: 100,
                width: 100,
                child: Image.network("https://tse2.mm.bing.net/th?id=OIP.mj6ZxHH_YhezE3baAh0MNwHaEs&pid=Api&P=0&h=180"),
              ),
            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.teal,
                  height: 40,
                  width: 1000,
                  child: Center(
                    child: Center(
                      child: Text('Current  Batsman',
                      style: TextStyle(color: Colors.white,fontSize: 20),),
                    ),
                  )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: 100,
                      child: Center(child: Text('Batsman'))),
                  Container(
                      width: 40,
                      child: Center(child: Text('R'))),
                  Container(
                      width: 40,
                      child: Center(child: Text('B'))),
                  Container(
                      width: 40,
                      child: Center(child: Text('4s'))),
                  Container(
                      width: 40,
                      child: Center(child: Text('6s'))),
                  Container(
                      width: 70,
                      child: Center(child: Text('S.R'))),
                ],
              ),SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: 100,
                      child: Center(child: Text('Rahul Dravid'))),
                  Container(
                      width: 40,
                      child: Center(child: Text('10'))),
                  Container(
                      width: 40,
                      child: Center(child: Text('5'))),
                  Container(
                      width: 40,
                      child: Center(child: Text('1'))),
                  Container(
                      width: 40,
                      child: Center(child: Text('1'))),
                  Container(
                      width: 70,
                      child: Center(child: Text('200'))),
                ],
              ),SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(child: Text('Manish Pandey')),
                  Container(child: Text('0')),
                  Container(child: Text('0')),
                  Container(child: Text('0')),
                  Container(child: Text('0.')),
                  Container(child: Text('0')),
                ],
              ),
            ],
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Container(
                  height: 40,
                  width: 1000,
                  color: Colors.teal,
                  child: Center(child: Text('Current  Bowler',style: TextStyle(color: Colors.white),)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Text('Bowler'),
                    ),
                    Container(
                      child: Text('O'),
                    ),
                    Container(
                      child: Text('R'),
                    ), Container(
                      child: Text('W'),
                    ),
                    Container(
                      child: Text('E.co'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Text('-'),
                    ),
                    Container(
                      child: Text('0'),
                    ),
                    Container(
                      child: Text('0'),
                    ), Container(
                      child: Text('0'),
                    ),
                    Container(
                      child: Text('0'),
                    ),
                  ],
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Container(
                          height: 40,
                          width: 900,
                          decoration: BoxDecoration(borderRadius:BorderRadius.circular(18),color: Colors.teal),
                          child: Center(
                            child: Center(
                              child: Text('Nearest Score Forecasting Arena',
                                style: TextStyle(color: Colors.white,fontSize: 20),),
                            ),
                          )
                      ),Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        Container(child: Text('Forecast Score in 0 Overs')),
                        Container(child: Text('Score')),
                        Container(child: Text('__')),
                      ],),
                      Column(
                        children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(child: Text('ENERGY')),
                              Container(
                                  height: 30,
                                  width: 30,
                                  child: Image.asset('A')),
                              Container(
                                  height: 30,
                                  width: 30,
                                  child: Image.asset('B')),
                              Container(child: Text('0')),
                              Container(
                                height: 30,
                                  width: 30,
                                  child: Image.asset('C')),
                              Container(child: Text('20')),
                              Container(
                                  height: 30,
                                  width: 30,
                                  child: Image.asset('D')),
                              Container(child: Text('50')),
                              Container(
                                  height: 30,
                                  width: 30,
                                  child: Image.asset('E')),
                            ],
                          ),
                        ],
                      ),SizedBox(height: 10),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(onPressed: () {},
                            child: Text('PLAY  NOW')),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ]
      ),
    );
  }
}
