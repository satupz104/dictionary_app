import 'package:dictionary_app/home.dart';
import 'package:flutter/material.dart';
import 'Dictionary.dart';
import 'Services.dart';

class NewTab extends StatefulWidget {
  @override
  _NewTabState createState() => _NewTabState();
}

class _NewTabState extends State<NewTab> {
  @override
  Widget build(BuildContext context) {
    print(error);
    return  !error ? FutureBuilder<List<Dictionary>>(
      future: Services.getUsers(),
      builder: (context, AsyncSnapshot<List<Dictionary>> snapshot) {
        if (snapshot.hasError|| error == true) {
          return  Scaffold(
         appBar: AppBar(title:Text("OOPS....."),),
            body: Container(
              child: Center(
                child: Text(
                  "Sorry, We couldn't find meaning of $word.\nTry correcting the spelling of the word",
                  style: TextStyle(
                          fontFamily: "Pangolin",
                          fontSize: 15,
                        )
                )
              ),
            ),
          );
        } else if(snapshot.hasData){
          Dictionary user = snapshot.data[0];
          return DefaultTabController(
              length: 2,
              child: Scaffold(
                  appBar: AppBar(
                    title: Text(user.word,
                        style: TextStyle(
                          fontFamily: "Pangolin",
                          fontSize: 25,
                        )),
                    centerTitle: true,
                    bottom: TabBar(
                      tabs: <Widget>[
                        Tab(
                          text: 'Meaning',
                          icon: Icon(Icons.book_outlined),
                        ),
                        Tab(
                            text: 'Example',
                            icon: Icon(Icons.directions_transit)),
                      ],
                    ),
                  ),
                  body: TabBarView(children: <Widget>[
                    Container(
                      color: Colors.white,
                      child: Container(
                        color: Colors.black,
                        child: ListView.builder(
                          itemCount: user.meanings.length,
                          itemBuilder: (context, index) {
                            print(index);
                            List<Meaning> mean = user.meanings;
                            return ListTile(
                              title: Text(
                                mean[index].definitions[0].definition,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Container(
                        color: Colors.black,
                        child: ListView.builder(
                          itemCount: user.meanings.length,
                          itemBuilder: (context, index) {
                            print(index);
                            List<Meaning> mean = user.meanings;
                            return ListTile(
                              title: mean[index].definitions[0].example!=null ? Text(
                                mean[index].definitions[0].example,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ): Text('',
                              style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                   ])));
        }
        return Center(child: CircularProgressIndicator(),);
      },
    ) : Scaffold(
         appBar: AppBar(title:Text("OOPS....."),),
            body: Container(
              child: Center(
                child: Text(
                  "Sorry, We couldn't find meaning of $word.\nTry correcting the spelling of the word",
                  style: TextStyle(
                          fontFamily: "Pangolin",
                          fontSize: 15,
                        )
                )
              ),
            ),
          );
    }
}
 