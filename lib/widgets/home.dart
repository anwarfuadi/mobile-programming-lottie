import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile_programming/models/programming_language.dart';

import 'detail.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<ProgrammingLanguage> languages = [
    ProgrammingLanguage("Dart", "Dart is a Programming Language that...", "assets/animations/99069-flutter-logo.json"),
    ProgrammingLanguage("Swift", "Swift is a Programming Language that...", "assets/animations/99073-swift-logo.json"),
    ProgrammingLanguage("Kotlin", "Kotlin is a Programming Language that...", "assets/animations/45116-kotlin.json"),
    ProgrammingLanguage("Java", "Java is a Programming Language that...", "assets/animations/70176-java-logo.json"),
    ProgrammingLanguage("Objective-C", "Objective-C is a Programming Language that ... ....... ......... ...... ........ ....... ..", "assets/animations/80387-apple.json"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Programming Language'),
      ),
      body: ListView.builder(
        itemCount: languages.length+1,
        itemBuilder: (context, index) {
          if(index != languages.length){
            return Container(
              decoration: BoxDecoration(
                borderRadius: new BorderRadius.all(Radius.circular(10)),
                color: Colors.green[300],
              ),
              margin: EdgeInsets.only(top: 10, left: 10, right: 10),
              padding: EdgeInsets.all(20),
              child: ListTile(
                leading: Container(
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.white,
                    child: Lottie.asset(languages[index].imgUrl),
                  ),
                ),
                title: Text(
                  languages[index].name,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => Detail(pl: languages[index])),
                  );
                },
              ),
            );
          }else{
            return Container(
              margin: EdgeInsets.all(10),
              child: Center(child: Text('Copyleft Sinau Flutter')),
            );
          }
        },
      ),
    );
  }
}