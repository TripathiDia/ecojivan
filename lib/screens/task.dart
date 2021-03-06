import 'package:ecojivan/constraint.dart';
import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  const Task({ Key? key }) : super(key: key);

  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: decoration,
         child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(40.0), //or 15.0
                child: Container(
                    height: 80.0,
                    width: 80.0,
                    color: Colors.brown,
                    child: Image.asset(
                      'assets/logo.png',
                      fit: BoxFit.cover,
                    )),
              ),
              Text(
                name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Card(
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: top,
                      child: Card(
                        child: ListTile(
                          leading: Icon(Icons.account_box),
                          title: Text(edit),
                        ),
                      ),
                    ),
                    Padding(
                      padding: top,
                      child: Card(
                        child: ListTile(
                          leading: Icon(Icons.account_box),
                          title: Text(edit),
                        ),
                      ),
                    ),
                    Padding(
                      padding: top,
                      child: Card(
                        child: ListTile(
                          leading: Icon(Icons.account_box),
                          title: Text(edit),
                        ),
                      ),
                    ),
                    Padding(
                      padding: top,
                      child: Card(
                        child: ListTile(
                          leading: Icon(Icons.account_box),
                          title: Text(edit),
                        ),
                      ),
                    ),
                    Padding(
                      padding: top,
                      child: Card(
                        child: ListTile(
                          leading: Icon(Icons.account_box),
                          title: Text(edit),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        
      ),
    );
  }
}