import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "코딩 배우기",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("코딩 배우기"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(5.0, 0.0, 10.0, 0.0),
          child: RaisedButton(
                  onPressed: (){},
                  child: Text('플러터')
              )
              ,
    ));
  }
}