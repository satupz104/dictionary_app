import 'dart:math';
import 'package:dictionary_app/newtab.dart';
import 'package:flutter/material.dart';
import 'Services.dart';
import 'drawer.dart';

var word='Hello';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var quotes = [
    "The best way to get started is to quit talking and begin doing.",
    "The Pessimist Sees Difficulty In Every Opportunity. The Optimist Sees Opportunity In Every Difficulty ",
    "Don’t Let Yesterday Take Up Too Much Of Today.",
    "You Learn More From Failure Than From Success. Don’t Let It Stop You. Failure Builds Character.",
    "It’s Not Whether You Get Knocked Down, It’s Whether You Get Up."
  ];


  @override
 Widget build(BuildContext context) {
   
  Random random = new Random();
  int randomNumber = random.nextInt(5);
  String quote = quotes[randomNumber];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dictionary",
          style: TextStyle(
            // backgroundColor: Colors.black,
            fontFamily: "Pangolin",
            fontSize: 35,
          )
        ),
        centerTitle: true,
      ),
      drawer: MyDrawer(),
      body: ListView(
        children: <Widget>[
         Container(
          width : MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(15),
          height: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(40.0),
            topLeft: Radius.circular(40.0),
            ),
          ),
          child: 
          Center(
            child: Text(
            quote,
            style: TextStyle(
            fontFamily: "Pangolin",
            fontSize: 25,
            color: Colors.black
          )
          ),
          ),
         ),
         SizedBox(
           height:10,
         ),
         Center(
            child: Text(
            "your word below..",
            style: TextStyle(
            fontFamily: "Pangolin",
            fontSize: 35,

          )
        ),
         ),
         
        SizedBox(
           height:10,
         ),
         Container(
           margin: EdgeInsets.fromLTRB(20,10,20,10),
           child: TextField(
           decoration : InputDecoration(
              hintText: 'Enter the Word (Default Word: Hello)',
               border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,//this has no effect
                        ),
                        borderRadius: BorderRadius.circular(10.0),
           ),
         ),
         onChanged:(value)
             {
               word=value;
             }
         )
         ),
         Container(
           margin: EdgeInsets.all(10),
           child: Center(
           child:
           ElevatedButton(
             child: Text(
          " Hit Me!! ",
          style: TextStyle(
            color: Colors.white,
            // backgroundColor: Colors.black,
            fontFamily: "Pangolin",
            fontSize: 35,
          )
        ),
        onPressed: ()=>{ 
          setState(() {
                error=false;
             }),
           Navigator.of(context).push(
                new MaterialPageRoute(builder: (BuildContext context) => new NewTab())
            )
            },
           )
         ) 
         ),
        ],
      )
    );
  }
}