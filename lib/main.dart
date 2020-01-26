import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView Example"),
        ),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return myListView(context);
  }
}

Widget myListView(BuildContext context) {
  /*final ulkeler = [
    "türkiye",
    "yunanistan",
    "portekiz",
    "polonya",
    "macaristan",
    "almanya",
    "fransa",
    "ispanya",
    "italya",
    "çek cumhuriyeti"
  ];
  
  return ListView.builder(
      itemCount: ulkeler.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(ulkeler[index]),
          subtitle: Text("ülke"),
          onTap: () => print(ulkeler[index]+"tıklandı"),
        );
      });*/
  return Center(
    child: Column(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          elevation: 20,
          color: Colors.blue,
          child: ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person),
              radius: 15,
            ),
            title: Text("Onur Özbay"),
            subtitle: Text("Pamukkale Üniversitesi"),
            trailing: Icon(Icons.call),
          ),
        ),


        Card(
          margin: EdgeInsets.all(10),
          elevation: 20,
          color: Colors.blue,
          child: ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person),
              radius: 15,
            ),
            title: Text("Faruk Özdemir"),
            subtitle: Text("Pamukkale Üniversitesi"),
            trailing: Icon(Icons.call),
          ),
        ),


        Card(
          margin: EdgeInsets.all(10),
          elevation: 20,
          color: Colors.blue,
          child: ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person),
              radius: 15,
            ),
            title: Text("Ufuk Can Kurt"),
            subtitle: Text("Pamukkale Üniversitesi"),
            trailing: Icon(Icons.call),
          ),
        ),
      ],
    ),

  );
}
