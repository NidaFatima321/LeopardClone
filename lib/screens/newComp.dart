import 'package:flutter/material.dart';
import 'package:leopard/widgets/cards.dart';
import 'package:leopard/widgets/listViewItems.dart';

void main() => runApp(MaterialApp(
      home: NewComp(),
    ));

class NewComp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "TASKS",
                style: TextStyle(color: Colors.black),
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("RE ROUTE"),
                  ))
            ],
          ),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Cards(text: "IN PROCESS", count: 104, colors: Colors.blue),
                Cards(
                  text: "DELIVERED",
                  count: 0,
                  colors: Colors.white,
                ),
                Cards(
                  text: "UNDELIVERED",
                  count: 0,
                  colors: Colors.white,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child:Container(
                      margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 7.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Search Here (Enter CN Number)",
                            filled: true,
                            fillColor: Colors.white
                        ),
                      ),
                    )
                ),
                Icon(Icons.cancel,size: 40,color: Colors.blue,)
              ],
            ),
            Expanded(child: ListView(
              padding: const EdgeInsets.all(8),
              children: <ListViewItems>[
                ListViewItems(
                  
                ),
                ListViewItems(
                
                ),
                ListViewItems(
                 
                ),
              ],
            ))
          ],
        )
    );
  }
}
