import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fetch Json"),
        ),
        body: Body(),
      ),
    );
  }
}
class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var data;

    Future getData()async{
      Response response =await get('https://reqres.in/api/users?page=2');
      setState(() {
        Map decode = jsonDecode(response.body);
        data = decode["data"];
      });
    }
    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data==null?0:data.length,
      itemBuilder:(context,index){
        return Card(
          elevation: 6.0,
          child: ListTile(
              title: Text(data[index]['first_name']),
            subtitle: Text(data[index]['email']),
          ),
        );
      },

    );
  }
}
