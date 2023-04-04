import 'package:flutter/material.dart';
import 'package:leopard/screens/dashboard.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Image.asset('lep.png', width: 100.0),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Hi, Please Enter Your Courier Code",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Text("Please Ensure Your Courier Code is Active"),
              SizedBox(height: 30.0),
              Text("Enter Your Coureir Code"),
              SizedBox(height: 10.0),
              TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "XXXX",
                    filled: true,
                    fillColor: Colors.white),
              ),
              Column(
                children: [
                  SizedBox(height: 20.0),
                  Text("Hub Information"),
                  Text("00592 - BRANCH OFFICE KARACHI")
                ],
              ),
              SizedBox(height: 60.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Dashboard(),
                  ));
                },
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.black),
              )
            ],
          ),
        ));
  }
}
