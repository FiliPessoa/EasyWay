import 'dart:io';
import 'package:form_helper/easyway/easywayMenu.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class Password extends StatefulWidget {
  const Password({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Password> createState() => _PasswordState();
}

bool rightPassword = false;
String user = "";
List<int> typePassorwd = []; // List to store numbers
List<int> finolisPassorwd = [1, 6, 9, 7]; // List to store numbers
List<int> giPassorwd = [1, 1, 1, 1]; // List to store numbers

class _PasswordState extends State<Password> {
  void addNumber(int numberToAdd) {
    setState(() {
      typePassorwd.add(numberToAdd); // Add the specified number to the list
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            GestureDetector(
              onTap: () => addNumber(1),
              child: Container(
                width: 80,
                height: 80,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  color: Colors.white,
                ),
                child: Image.asset('1.jpeg', height: 80, width: 80),
              ),
            ),
            GestureDetector(
              onTap: () => addNumber(2),
              child: Container(
                width: 80,
                height: 80,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  color: Colors.white,
                ),
                child: Image.asset('2.jpeg', height: 80, width: 80),
              ),
            ),
            GestureDetector(
              onTap: () => addNumber(3),
              child: Container(
                width: 80,
                height: 80,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  color: Colors.white,
                ),
                child: Image.asset('3.jpeg', height: 80, width: 80),
              ),
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            GestureDetector(
              onTap: () => addNumber(4),
              child: Container(
                width: 80,
                height: 80,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  color: Colors.white,
                ),
                child: Image.asset('4.jpeg', height: 80, width: 80),
              ),
            ),
            GestureDetector(
              onTap: () => addNumber(5),
              child: Container(
                width: 80,
                height: 80,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  color: Colors.white,
                ),
                child: Image.asset('5.jpeg', height: 80, width: 80),
              ),
            ),
            GestureDetector(
              onTap: () => addNumber(6),
              child: Container(
                width: 80,
                height: 80,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  color: Colors.white,
                ),
                child: Image.asset('6.jpeg', height: 80, width: 80),
              ),
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            GestureDetector(
              onTap: () => addNumber(7),
              child: Container(
                width: 80,
                height: 80,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  color: Colors.white,
                ),
                child: Image.asset('7.jpeg', height: 80, width: 80),
              ),
            ),
            GestureDetector(
              onTap: () => addNumber(8),
              child: Container(
                width: 80,
                height: 80,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  color: Colors.white,
                ),
                child: Image.asset('8.jpeg', height: 80, width: 80),
              ),
            ),
            GestureDetector(
              onTap: () => addNumber(9),
              child: Container(
                width: 80,
                height: 80,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  color: Colors.white,
                ),
                child: Image.asset('9.jpeg', height: 80, width: 80),
              ),
            ),
          ]),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          String typedPassword =
              typePassorwd.join(); // Convert the list to a string
          String correctFinolisPassword =
              finolisPassorwd.join(); // Convert the list to a string
          String correctGiPassword =
              giPassorwd.join(); // Convert the list to a string
          if (typedPassword == correctFinolisPassword) {
            user = ("Finólis");
            rightPassword = true;
            print(typePassorwd);
            print(finolisPassorwd);
            print(giPassorwd);
            print(user);
            print("Right Password");
            typePassorwd.clear(); // Clear the typed password
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => EasyWayMenu(title: 'Explanador'),
              ),
            );
          }
          if (typedPassword == correctGiPassword) {
            user = ("Gi");
            rightPassword = true;
            print(typePassorwd);
            print(finolisPassorwd);
            print(giPassorwd);
            print(user);
            print("Right Password");
            typePassorwd.clear(); // Clear the typed password
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => EasyWayMenu(title: 'Explanador'),
              ),
            );
          }
          if (typedPassword != correctGiPassword &&
              typedPassword != correctFinolisPassword) {
            rightPassword = false;
            print(typePassorwd);
            print(finolisPassorwd);
            print(giPassorwd);
            print(user);
            print("Wrong Password");
            typePassorwd.clear(); // Clear the typed password
          }
        },
        tooltip: 'Check Password',
        child: const Icon(Icons.password_rounded),
      ),
    );
  }
}
