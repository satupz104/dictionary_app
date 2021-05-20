import 'package:flutter/material.dart';

class Developers extends StatefulWidget {
  @override
  _DevelopersState createState() => _DevelopersState();
}

class _DevelopersState extends State<Developers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Developers",
        style: TextStyle(
            // backgroundColor: Colors.black,
            fontFamily: "Pangolin",
            fontSize: 30,
          )
        ),
        centerTitle: true,
      ),
      body: Padding(padding: EdgeInsets.all(10),
              child: ListView(
                children: <Widget>[
                 Card(
                   color: Colors.white,
                   shadowColor: Colors.white24,
                   elevation: 20,
                   child: Row(
                     children:<Widget>[
                       Container(
                         padding: EdgeInsets.all(5),
                         height: 100,
                         width: 100,
                         child: Center(child: Image.network(
                          'https://avatars.githubusercontent.com/u/39575073?v=4',
                          loadingBuilder: (BuildContext context, Widget child,
                              ImageChunkEvent loadingProgress) {
                            if (loadingProgress == null) {
                              return child;
                            }
                            return Center(
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes != null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes
                                    : null,
                              ),
                            );
                          },
                        ),)
                       ),
                       SizedBox(
                         width: 20
                       ),
                       Column(
                         children:<Widget>[
                           Center(child: Text(
                             'Engineer @ Brillio Technologies\n\nSoftware Developer\n\nGitHub Username: @satupz104',
                             style: TextStyle(color: Colors.black,
                             fontWeight: FontWeight.bold
                             )
                           ),)
                         ]
                       )

                     ]
                   )
                 ),
                 SizedBox(
                   height: 20,
                 ),
                 Card(
                   color: Colors.white,
                   shadowColor: Colors.white24,
                   elevation: 20,
                   child: Row(
                     children:<Widget>[
                       Container(
                         padding: EdgeInsets.all(5),
                         height: 100,
                         width: 100,
                         child: Center(child: Image.network(
                          'https://avatars.githubusercontent.com/u/54793133?v=4',
                          loadingBuilder: (BuildContext context, Widget child,
                              ImageChunkEvent loadingProgress) {
                            if (loadingProgress == null) {
                              return child;
                            }
                            return Center(
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes != null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes
                                    : null,
                              ),
                            );
                          },
                        ),)
                       ),
                       SizedBox(
                         width: 20
                       ),
                       Column(
                         children:<Widget>[
                           Center(child: Text(
                             'B.Tech Student @ IIIT Sonepat\n\nFlutter Developer\n\nGitHub Username: @tushariiit',
                             style: TextStyle(color: Colors.black,
                             fontWeight: FontWeight.bold
                             )
                           ),)
                         ]
                       )

                     ]
                   )
                 )
                ]
              ),
      ),
    );
  }
}