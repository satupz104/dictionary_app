import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
          children: <Widget>[
            Container(
              height: 250,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Container(
                    child: Image.asset('assets/dictionary-30.png'),
                    height: 150
                  ),
                  SizedBox(height:20),
                  Text(
           "Welcome",
          style: TextStyle(
            // backgroundColor: Colors.black,
            fontFamily: "Pangolin",
            fontSize: 35,
            color: Colors.black

          )
        ),

                  
                ],

              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(
                Icons.home_outlined
              ),
              title: Text("Home",
              
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
              )),
              
           ),
            ListTile(
              leading: Icon(
                Icons.label_important_outline
              ),
              title: Text("Disclaimer",
              
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
              )),
              
           ),
           ListTile(
              leading: Icon(
                Icons.settings_backup_restore_outlined
              ),
              title: Text("SꓤƎꓒOꓶƎꓥƎꓷ",
              
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
              )),
              
           ),
           ListTile(
              leading: Icon(
                Icons.share_outlined
              ),
              title: Text("Share with friends",
              
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
              )),
              
           ),
           ListTile(
              leading: Icon(
                Icons.star_outline_outlined
              ),
              title: Text("Rate Us",
              
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
              )),
              
           )
          ],
        ),

      
    );
  }
}