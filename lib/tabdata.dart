import 'package:flutter/material.dart';
import 'Dictionary.dart';
import 'Services.dart';
import 'home.dart';



class Tab1 extends StatefulWidget {
  @override
  _Tab1State createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
   bool iswidget =false;
   List<Dictionary> _users;
  @override
  void initState() {
    super.initState();
    Services.getUsers().then((users) {
      setState(() {
        _users = users;
        iswidget = true;
      });
    });
  }
 
  @override
  Widget build(BuildContext context) {
    print("WORD"+word);
     Dictionary user = _users[0];
     return iswidget?FutureBuilder(
       builder: (context,snapshot){
         if(snapshot.connectionState == ConnectionState.done){
           if(snapshot.hasError){
             return Center(
               child: Text(
                 '${snapshot.error} occoured' 
               )
             );
           } else if( snapshot.hasData){
             return  Container(
        color: Colors.black,
        
        child: ListView.builder(
          itemCount: user.meanings.length,
          itemBuilder: (context, index) {
           
            print(index);
            List<Meaning> mean = user.meanings;
            List<Definition> def = user.meanings[0].definitions;
            return ListTile(
              title: Text(mean[index].definitions[0].definition
              , style: TextStyle(
                color: Colors.white,
                ),
              ),
            );
          },
        ),
      );
           }
         }
         return Center(
             child: CircularProgressIndicator(),
           );
       },
       future: Services.getUsers(),
     ):  Center(
             child: CircularProgressIndicator(),
           );
    // return  Container(
    //     color: Colors.black,
        
    //     child: ListView.builder(
    //       itemCount: user.meanings.length,
    //       itemBuilder: (context, index) {
           
    //         print(index);
    //         List<Meaning> mean = user.meanings;
    //         List<Definition> def = user.meanings[0].definitions;
    //         return ListTile(
    //           title: Text(mean[index].definitions[0].definition
    //           , style: TextStyle(
    //             color: Colors.white,
    //           ),),
    //         );
    //       },
    //     ),
    //   );
    
  }
}


class Tab2 extends StatefulWidget {
  @override
  _Tab2State createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  @override
  Widget build(BuildContext context) {
    return Text("Home",
              
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
                 color: Colors.black,
              ));
  }
}