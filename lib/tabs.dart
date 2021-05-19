import 'package:flutter/material.dart';
import 'tabdata.dart';
import 'home.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  @override
  TabController _tabController;

 @override
 void initState() { 
   super.initState();
   _tabController = TabController(length: 2, vsync: this);
   
 }

  @override
  void dispose() { 
    
    super.dispose();
    _tabController.dispose();
  }

  Widget build(BuildContext context) {
    print("Word check"+word);
    return 
       Column(
        children:<Widget>[
          TabBar(
            controller: _tabController,
              tabs: <Widget>[
                Tab(text:'Meaning',
                    icon: Icon(Icons.book_outlined),
                    ),
                Tab(text:'Example',
                    icon: Icon(Icons.directions_transit)
                    ),
              ],
            ),           
            Container(
             color: Colors.white,
             height: 500,
              child: 
             TabBarView(
              controller: _tabController,
            children: <Widget>[
              Tab1(),
              Tab2()
              
            ],
          ) ,
            )
           
          //   Expanded(child:
          //   Container(
          //     child:TabBarView(
          //   children: [
          //     Icon(Icons.directions_car),
          //     Icon(Icons.directions_transit),
          //   ],
          // ) ,
          //   ), )
            
          ]
        ); 
      
    //);
  }
}