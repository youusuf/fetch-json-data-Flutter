import 'dart:async';
import 'main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      //appBar: AppBar(
       // title: Text("Hello"),
      //),
      body: Home(),
    ),
  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(milliseconds: 5),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Main()));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitCubeGrid(
        color: Colors.deepOrange,
        size: 50.0,
      ),
    );
  }
}
