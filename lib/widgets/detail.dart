import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile_programming/models/programming_language.dart';

class Detail extends StatefulWidget {
  final ProgrammingLanguage pl;

  const Detail({ Key key, this.pl }) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.pl.name),),
      body: ListView(
        children: [
          Container(
            child: Lottie.asset(widget.pl.imgUrl),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              children: [
                Icon(Icons.star, color: Colors.red,),
                Expanded(
                  child: Text(widget.pl.name + ' Programming Language',
                    style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Text(widget.pl.description),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Something Awesome is coming trough this button!')));
              }, 
              child: Text('More Info...')),
          ),
        ],
      ),
    );
  }
}