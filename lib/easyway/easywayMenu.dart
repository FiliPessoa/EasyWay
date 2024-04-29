import 'dart:io';
import 'package:form_helper/easyway/AutomateStories/automateStoryAben%C3%A7oadoBar.dart';
import 'package:form_helper/easyway/AutomateStories/automateStoryQuintaldaTiaSandra.dart';
import 'package:form_helper/easyway/automatePostGodofredo.dart';
import 'package:form_helper/easyway/automatePostLondon.dart';
import 'package:form_helper/easyway/AutomateStories/automateStoryBarResponsa.dart';
import 'package:form_helper/easyway/AutomateStories/automateStoryFazendaChurrascada.dart';
import 'package:form_helper/easyway/AutomateStories/automateStoryIzzi.dart';
import 'package:form_helper/easyway/AutomateStories/automateStoryPrimeiroBar.dart';
import 'package:form_helper/easyway/AutomateStories/automateStoryTicianaWerner.dart';
import 'package:form_helper/easyway/automatePostGalpao17.dart';
import 'package:form_helper/easyway/automatePostHop.dart';
import 'package:form_helper/easyway/automatePostJobim.dart';
import 'package:form_helper/easyway/automatePostPinella.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class EasyWayMenu extends StatefulWidget {
  const EasyWayMenu({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<EasyWayMenu> createState() => _EasyWayMenuState();
}

bool rightEasyWayMenu = false;
String user = "";
List<int> typePassorwd = []; // List to store numbers
List<int> finolisPassorwd = [1, 6, 9, 7]; // List to store numbers
List<int> giPassorwd = [1, 1, 1, 1]; // List to store numbers

class _EasyWayMenuState extends State<EasyWayMenu> {
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
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        AutomatePostGalpao17(title: 'EasyWay Galpão 17'),
                  ),
                );
              },
              child: Container(
                width: 150,
                height: 40,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  color: Colors.white,
                ),
                child: Text(
                  'Galpão 17',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        AutomatePostPinella(title: 'EasyWay Pinella'),
                  ),
                );
              },
              child: Container(
                width: 150,
                height: 40,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  color: Colors.white,
                ),
                child: Text(
                  'Pinella',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        AutomatePostJobim(title: 'EasyWay Jobim'),
                  ),
                );
              },
              child: Container(
                width: 150,
                height: 40,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  color: Colors.white,
                ),
                child: Text(
                  'Jobim',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        AutomatePostLondon(title: 'EasyWay London Street Pub'),
                  ),
                );
              },
              child: Container(
                width: 150,
                height: 40,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 175, 36, 36),
                    width: 1.0,
                  ),
                  color: Colors.white,
                ),
                child: Text(
                  'London Street',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ]),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      AutomatePostGodofredo(title: 'EasyWay Godofredo'),
                ),
              );
            },
            child: Container(
              width: 300,
              height: 40,
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 175, 36, 36),
                  width: 1.0,
                ),
                color: Colors.white,
              ),
              child: Text(
                'Godofredo',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AutomateStoryTicianaWerner(
                      title: 'EasyWay Ticiana Werner'),
                ),
              );
            },
            child: Container(
              width: 300,
              height: 40,
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 175, 36, 36),
                  width: 1.0,
                ),
                color: Colors.white,
              ),
              child: Text(
                'Ticiana Werner',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AutomateStoryIzziWineGarden(
                      title: 'EasyWay Izzi Wine Garden'),
                ),
              );
            },
            child: Container(
              width: 300,
              height: 40,
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 175, 36, 36),
                  width: 1.0,
                ),
                color: Colors.white,
              ),
              child: Text(
                'Izzi Wine Garden',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AutomateStoryFazendaChurrascada(
                      title: 'EasyWay Fazenda Churrascada'),
                ),
              );
            },
            child: Container(
              width: 300,
              height: 40,
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 175, 36, 36),
                  width: 1.0,
                ),
                color: Colors.white,
              ),
              child: Text(
                'Fazenda Churrascada',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AutomateStoryQuintaldaTiaSandra(
                      title: 'EasyWay Quintal da tia Sandra'),
                ),
              );
            },
            child: Container(
              width: 300,
              height: 40,
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
                color: Colors.white,
              ),
              child: Text(
                'Quintal da Tia Sandra',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        AutomateStoryBarResponsa(title: 'EasyWay Bar Responsa'),
                  ),
                );
              },
              child: Container(
                width: 150,
                height: 40,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  color: Colors.white,
                ),
                child: Text(
                  'Bar Responsa',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        AutomateStoryPrimeiroBar(title: 'EasyWay Primeiro Bar'),
                  ),
                );
              },
              child: Container(
                width: 150,
                height: 40,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  color: Colors.white,
                ),
                child: Text(
                  'Primeiro Bar',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        AutomatePostJobim(title: 'EasyWay Rio Butiquim'),
                  ),
                );
              },
              child: Container(
                width: 150,
                height: 40,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  color: Colors.white,
                ),
                child: Text(
                  'Rio Butiquim',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        AutomateAbencoadoBar(title: 'EasyWay Abençoado Bar'),
                  ),
                );
              },
              child: Container(
                width: 150,
                height: 40,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 175, 36, 36),
                    width: 1.0,
                  ),
                  color: Colors.white,
                ),
                child: Text(
                  'Abençoado Bar',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}
