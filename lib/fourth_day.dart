import 'package:flutter/material.dart';


class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> fruits = <String>['bananas', 'apples', 'oranges','pap'];
    return
        ListView.builder(
            itemCount: 4,
            itemBuilder: (BuildContext context,int index){
              return ListTile(
                  leading: Icon(Icons.list),
                  trailing: Text("GFG",
                    style: TextStyle(
                        color: Colors.green,fontSize: 15),),
                  title:Text(fruits[index])
              );
            }
        );

  }
}
