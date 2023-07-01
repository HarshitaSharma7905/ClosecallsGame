
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:untitled/LoginScreen.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/Modal/UpcomingModal.dart';

import 'Homemodal.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black,
      home: HomeScreenUI(),
    );
  }
}
class HomeScreenUI extends StatefulWidget {
  const HomeScreenUI({Key? key}) : super(key: key);

  @override
  State<HomeScreenUI> createState() => _HomeScreenUIState();
}

class _HomeScreenUIState extends State<HomeScreenUI> {
 int index=1 ;
 final screen=[Home(),Upcoming(),Explore(),Wallet(),Account()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:screen[index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (index)=>setState(() {
        this.index=index;
        }),
        destinations: [
         NavigationDestination(icon: Icon(Icons.home), label: 'HOME'),
          NavigationDestination(icon: Icon(Icons.upcoming), label: 'UPCOMING'),
          NavigationDestination(icon: Icon(Icons.explore), label: 'EXPLORE'),
          NavigationDestination(icon: Icon(Icons.electric_bolt), label: 'WALLET'),
          NavigationDestination(icon: Icon(Icons.person), label: 'ACCOUNT'),
        ],
      ),
    );
  }
}
//HOME 
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getHomeAPI(),
      builder: (context, snapshot) {
        if(snapshot.hasData)
        {
          return ListView.builder(
              itemCount: snapshot.data!.data!.length,
              itemBuilder: (context,index){
                return Text("hello");

              });

        }else
        {
          return CircularProgressIndicator();
        }
      },);
  }

}
Future<Homemodal> getHomeAPI() async{
  var url=Uri.parse('http://apicricketchampion.in/webservices/homeList/3c23ed5356d24d4884c2782f8ad45a9f');
  final response=await http.get(url);
  var data=jsonDecode(response.body.toString());
  if(response.statusCode==200){
    return Homemodal.fromJson(data);
  }else
  {
    return Homemodal.fromJson(data);
  }
}

//UPCOMING yhi solve kar rha
class Upcoming extends StatefulWidget {
  const Upcoming({Key? key}) : super(key: key);

  @override
  State<Upcoming> createState() => _UpcomingState();
}

class _UpcomingState extends State<Upcoming> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<UpcomingModal>(
        future: getUpcomingApi(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            return ListView.builder(
                itemCount: snapshot.data!.data!.length,
                itemBuilder: (context, index){
              return Container(
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: 600,
                          height: 50,
                          color: Colors.teal.shade800,
                          child: Center(child: Text(snapshot.data!.data![index].series.toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800,color: Colors.white),))),
                      Container(
                          width: 100,
                          height: 25,
                          decoration: BoxDecoration(borderRadius: BorderRadius.vertical(bottom: Radius.circular(18)),color: Colors.red),
                          child: Center(child: Text(snapshot.data!.data![index].matchType.toString(),style: TextStyle(color: Colors.white),))),
                      Container(
                        margin: EdgeInsets.all(18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(child: Text(snapshot.data!.data![index].teamAShort.toString())),
                                Container(
                                    height: 100,
                                    width: 100,
                                    child: Image.network(snapshot.data!.data![index].teamAImg.toString())),
                              ],
                            ),
                            Container(
                                height: 100,
                                width: 100,
                                child: Image.asset('assets/images/middle.png')),
                            Column(
                              children: [
                                Container(child: Text(snapshot.data!.data![index].teamBShort.toString())),
                                Container(
                                    height: 100,
                                    width: 100,
                                    child:Image.network(snapshot.data!.data![index].teamBImg.toString())),
                              ],
                            ),
                          ]
                        ),
                      ),
                      Container(margin: EdgeInsets.only(bottom: 15),child: Text(snapshot.data!.data![index].matchDate.toString()+','+snapshot.data!.data![index].matchTime.toString())),
                    ],
                  ),
                ),
              );

            });
          //sab ho gya hai sirf url se image nhi aa rha kyuki http hai shyad isiliye ho jayega aap 30 minutes rest karo tab tak kar deta hu phit aap sab karnaokj
          }else
            {
              return CircularProgressIndicator();
            }
        });
  }
}

//API
Future<UpcomingModal> getUpcomingApi() async{
  var url=Uri.parse('http://apicricketchampion.in/webservices/upcomingMatches/3c23ed5356d24d4884c2782f8ad45a9f');
  final response=await http.get(url);
  var data=jsonDecode(response.body.toString());
  if(response.statusCode==200){
    return UpcomingModal.fromJson(data);
  }else
  {
    return UpcomingModal.fromJson(data);
  }
}

//Explore
class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Text('EXPLORE');
  }
}
//Wallet
class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () {

        },),
        backgroundColor: Colors.black,
        title: Text('Energy Wallet'),
        //  bolo
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: EdgeInsets.all(10),
            height:350,
            width: 1000,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black45),
                boxShadow: [BoxShadow(color: Colors.black26.withOpacity(0.2),
                    spreadRadius: 0.5,blurRadius: 2,offset: Offset(0,5)),]),
            child: Column(
              children: [
                Container(child: Text('TOTAL BALANCE',
                  style: TextStyle(fontSize: 14,color: Colors.black45),)),SizedBox(height: 5),
                Container(padding: EdgeInsets.all(5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('₹',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black)),
                          Text('10',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black)),])),
                ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.green),onPressed: () {},
                    child: Text('ADD AMOUNT')),SizedBox(height: 5),
                Divider(indent: 5,endIndent: 5,color: Colors.black45,
                  thickness: 0.3,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 8),
                            child: Text('AMOUNT ADDED',
                              style: TextStyle(fontSize: 12,color: Colors.black45),),
                          ),
                          Row(
                            children: [
                              Text('₹',style: TextStyle(color: Colors.black,fontSize: 14),),
                              Text('0',style: TextStyle(color: Colors.black,fontSize: 14),)
                            ],)
                        ],),
                      Icon(Icons.change_circle,color: Colors.blue),
                    ],
                  ),
                ),
                Divider(indent: 5,endIndent: 5,color: Colors.black45,
                  thickness: 0.3,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(padding: EdgeInsets.only(bottom: 8),
                              child: Text('WINNING',
                                style: TextStyle(fontSize: 12,color: Colors.black45),)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('₹',style: TextStyle(color: Colors.black,fontSize: 14),),
                              Text('2.17',style: TextStyle(color: Colors.black,fontSize: 14),)
                            ],)
                        ],),
                      Row(children: [ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.white),onPressed: () {},
                          child: Text('WITHDRAW',style: TextStyle(color: Colors.black),)),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Icon(Icons.change_circle,color: Colors.blue)),],)
                    ],
                  ),
                ),Divider(indent: 5,endIndent: 5,color: Colors.black45,
                  thickness: 0.3,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(padding: EdgeInsets.only(bottom: 8),
                              child: Text('CASH BONUS',
                                style: TextStyle(fontSize: 12,color: Colors.black45),)),
                          Row(children: [
                            Text('₹',style: TextStyle(color: Colors.black,fontSize: 14),),
                            Text('0',style: TextStyle(color: Colors.black,fontSize: 14),)
                          ],)
                        ],),
                      Icon(Icons.change_circle,color: Colors.blue),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height:60,
            width: 1000,
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black45),
                boxShadow: [BoxShadow(color: Colors.black26.withOpacity(0.2),
                    spreadRadius: 0.5,blurRadius: 2,offset: Offset(0,5)),]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.all(20),
                    child: Text('MY RECENT TRANSACTION',style: TextStyle(fontSize: 12,color: Colors.black),)),
                Container(
                    padding: EdgeInsets.all(20),
                    child: Icon(Icons.arrow_forward)),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height:80,
            width: 1000,
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black45),
                boxShadow: [BoxShadow(color: Colors.black26.withOpacity(0.2),
                    spreadRadius: 0.5,blurRadius: 2,offset: Offset(0,5)),]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('MANAGE PAYMENTS',style: TextStyle(fontSize: 12,color: Colors.black),),
                        Text('Add/Remove Cards,Wallets etc',style: TextStyle(color: Colors.black26),)
                      ],
                    )),
                Container(
                    padding: EdgeInsets.all(20),
                    child: Icon(Icons.arrow_forward)),
              ],
            ),
          ),


        ]),
      ),
    );
  }
}

//Account
class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Text('ACCOUNT');
  }
}

