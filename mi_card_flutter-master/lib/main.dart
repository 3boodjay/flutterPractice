import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(50, 0, 13, 50),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 75.0,
                backgroundImage: NetworkImage(
                    'https://pbs.twimg.com/profile_images/1221006230837170176/vic5J01j.jpg'),
              ),
              Text(
                'Abdulla Jay',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                'Programmer Freelancer',
                style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w600,
                    color: Colors.teal[100]),
              ),
              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                      leading: Icon(Icons.phone,
                          size: 40, color: Color.fromRGBO(50, 0, 13, 50)),
                      title: Center(
                        child: Text(
                          "+973 33257463",
                          style: TextStyle(
                              color: Color.fromRGBO(50, 0, 13, 50),
                              fontFamily: 'Source Sans Pro',
                              fontSize: 20.0),
                        ),
                      )),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 25.0),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      size: 40,
                      color: Color.fromRGBO(50, 0, 13, 50),
                    ),
                    title: Center(
                      child: Text(
                        "abdullaaljalahma1@gmail.com",
                        style: TextStyle(
                            color: Color.fromRGBO(50, 0, 13, 50),
                            fontFamily: 'Source Sans Pro',
                            fontSize: 15.0),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset('images/vs code.png'),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset('images/unity.png'),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset('images/flutter.png'),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset('images/azure.png'),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}
