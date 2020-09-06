import 'package:flutter/material.dart';

import 'fourth_day.dart';

void main() => runApp(HomeWidgetDayFour());

class HomeWidgetDayFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ListView",
      home: Scaffold(
        appBar: AppBar(
          title: Text("List"),
          backgroundColor: Colors.orangeAccent,
        ),
        body: getListView(),
      ),
    );
  }

  Widget getListView() {
    List<Person> p = generateList();

    return ListView.builder(
        itemCount: p.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.list),
            trailing: Text(
              "${p[index].id}",
              style: TextStyle(color: Colors.green, fontSize: 15),
            ),
            title: Text(p[index].name),
            onTap: () => {
              debugPrint(p[index].name)
              //p[index].name = "sss"
            },
          );
        });
  }

  List<Person> generateList() {
    var person1 = new Person();
    person1.id = 1;
    person1.name = "isaac";

    var person2 = new Person();
    person2.id = 2;
    person2.name = "moses";

    List<Person> p = new List();
    p.add(person1);
    p.add(person2);

    return p;
  }
}

class Person {
  String name;
  int id;
}
