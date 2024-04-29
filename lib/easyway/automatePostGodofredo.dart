import 'dart:io';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';

class AutomatePostGodofredo extends StatefulWidget {
  const AutomatePostGodofredo({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  State<AutomatePostGodofredo> createState() => _AutomatePostGodofredoState();
}

class _AutomatePostGodofredoState extends State<AutomatePostGodofredo> {
  String description = "";
  bool hasDescription = false;
  void changeDescriptionStatus() {
    setState(() {
      hasDescription = true;
    });
  }

  List<String> separateParagraphs(String text) {
    return text.split(RegExp(r'\s{2,}'));
  }

  List<String> separateWords(String text) {
    return text.split(' ');
  }

  List<String> separateLines(String text) {
    return text.split("\n");
  }

  List<String> separateDayMonth(String text) {
    return text.split('/');
  }

  List<String> separateElements(String text) {
    return text.split(':');
  }

  List<String> separateBarra(String text) {
    return text.split('-');
  }

  List<String> separatePrice(String text) {
    return text.split(',');
  }

  List<String> removeLetters(String text) {
    return text.split(RegExp(r'[^0-9]'));
  }

  @override
  Widget build(BuildContext context) {
    // Get the name of the current day of the week.

    // Get the numeric value for the current day. Use the null-aware operator (??) to provide a default value.

    0; // 0 is the default value, change it as needed

    int year = 2024;
    List<String> paragraphs = separateParagraphs(description);
    String firstParagraph = hasDescription ? paragraphs[1] : "";
    List<String> firstTerms =
        separateElements(hasDescription ? firstParagraph : "");
    String firstdate = hasDescription ? firstTerms[0] : "";
    List<String> firstFulldate =
        separateDayMonth(hasDescription ? firstdate : "");
    String firstDay = hasDescription ? firstFulldate[0] : "";
    String firstMonth = hasDescription ? firstFulldate[1] : "";
    String firstTitle = "Atração do primeiro dia no Godofredo";
    int startHour = 18;
    int firstIntDay = hasDescription ? int.parse(firstDay) : 0;
    int firstIntMonth = hasDescription ? int.parse(firstMonth) : 0;
    String firstformattedDate =
        '$year-$firstIntMonth-$firstIntDay $startHour:00:00';
    /////////////////////////////////////////
    String secondParagraph = hasDescription ? paragraphs[2] : "";
    List<String> secondTerms =
        separateElements(hasDescription ? secondParagraph : "");
    String seconddate = hasDescription ? secondTerms[0] : "";
    List<String> secondFulldate =
        separateDayMonth(hasDescription ? seconddate : "");
    String secondDay = hasDescription ? secondFulldate[0] : "";
    String secondMonth = hasDescription ? secondFulldate[1] : "";
    String secondTitle = "Atração do segundo dia no Godofredo";
    int secondIntDay = hasDescription ? int.parse(secondDay) : 0;
    int secondIntMonth = hasDescription ? int.parse(secondMonth) : 0;
    String secondformattedDate =
        '$year-$secondIntMonth-$secondIntDay $startHour:00:00';
    /////////////////////////////////////////
    String thirdParagraph = hasDescription ? paragraphs[3] : "";
    List<String> thirdTerms =
        separateElements(hasDescription ? thirdParagraph : "");
    String thirddate = hasDescription ? thirdTerms[0] : "";
    List<String> thirdFulldate =
        separateDayMonth(hasDescription ? thirddate : "");
    String thirdDay = hasDescription ? thirdFulldate[0] : "";
    String thirdMonth = hasDescription ? thirdFulldate[1] : "";
    String thirdTitle = "Atração do terceiro dia no Godofredo";
    int thirdIntDay = hasDescription ? int.parse(thirdDay) : 0;
    int thirdIntMonth = hasDescription ? int.parse(thirdMonth) : 0;
    String thirdformattedDate =
        '$year-$thirdIntMonth-$thirdIntDay $startHour:00:00';
    /////////////////////////////////////////
    String forthParagraph = hasDescription ? paragraphs[4] : "";
    List<String> forthTerms =
        separateElements(hasDescription ? forthParagraph : "");
    String forthdate = hasDescription ? forthTerms[0] : "";
    List<String> forthFulldate =
        separateDayMonth(hasDescription ? forthdate : "");
    String forthDay = hasDescription ? forthFulldate[0] : "";
    String forthMonth = hasDescription ? forthFulldate[1] : "";
    String forthTitle = "Atração do quarto dia no Godofredo";
    int forthIntDay = hasDescription ? int.parse(forthDay) : 0;
    int forthIntMonth = hasDescription ? int.parse(forthMonth) : 0;
    String forthformattedDate =
        '$year-$forthIntMonth-$forthIntDay $startHour:00:00';
    /////////////////////////////////////////
    String fifthParagraph = hasDescription ? paragraphs[5] : "";
    List<String> fifthTerms =
        separateElements(hasDescription ? fifthParagraph : "");
    String fifthdate = hasDescription ? fifthTerms[0] : "";
    List<String> fifthFulldate =
        separateDayMonth(hasDescription ? fifthdate : "");
    String fifthDay = hasDescription ? fifthFulldate[0] : "";
    String fifthMonth = hasDescription ? fifthFulldate[1] : "";
    String fifthTitle = "Atração do quinto dia no Godofredo";
    int fifthIntDay = hasDescription ? int.parse(fifthDay) : 0;
    int fifthIntMonth = hasDescription ? int.parse(fifthMonth) : 0;
    String fifthformattedDate =
        '$year-$fifthIntMonth-$fifthIntDay $startHour:00:00';
    /////////////////////////////////////////

    String url = "https://www.instagram.com/godofredo408norte/";
    String local = "Godofredo";
    String price = "0";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              height: 450,
              width: 300,
              color: Colors.lightBlue,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Description",
                  hintText: "Colar Descrição",
                ),
                onChanged: (value) {
                  setState(() {
                    description = value;
                  });
                },
                maxLines: null,
                expands: true,
              ),
            ),
            Container(
              height: 450,
              width: 300,
              color: Colors.lightBlue,
              child: SingleChildScrollView(
                  child: hasDescription
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(child: Text("Descrição")),
                            Container(child: Text(paragraphs[0])),
                            SizedBox(height: 10),
                            Container(child: Text(paragraphs[1])),
                            SizedBox(height: 10),
                            Container(child: Text(firstTitle)),
                            Container(child: Text(firstformattedDate)),
                            Container(child: Text(url)),
                            Container(child: Text(local)),
                            Container(child: Text(price)),
                          ],
                        )
                      : Text("no Paragraph")),
            ),
            Container(
              height: 450,
              width: 300,
              color: Colors.lightBlue,
              child: SingleChildScrollView(
                  child: hasDescription
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(child: Text("Descrição")),
                            Container(child: Text(paragraphs[0])),
                            SizedBox(height: 10),
                            Container(child: Text(paragraphs[2])),
                            SizedBox(height: 10),
                            Container(child: Text(secondTitle)),
                            Container(child: Text(secondformattedDate)),
                            Container(child: Text(url)),
                            Container(child: Text(local)),
                            Container(child: Text(price)),
                          ],
                        )
                      : Text("no Paragraph")),
            ),
            Container(
              height: 450,
              width: 300,
              color: Colors.lightBlue,
              child: SingleChildScrollView(
                  child: hasDescription
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(child: Text("Descrição")),
                            Container(child: Text(paragraphs[0])),
                            SizedBox(height: 10),
                            Container(child: Text(paragraphs[3])),
                            SizedBox(height: 10),
                            Container(child: Text(thirdTitle)),
                            Container(child: Text(thirdformattedDate)),
                            Container(child: Text(url)),
                            Container(child: Text(local)),
                            Container(child: Text(price)),
                          ],
                        )
                      : Text("no Paragraph")),
            ),
            Container(
              height: 450,
              width: 300,
              color: Colors.lightBlue,
              child: SingleChildScrollView(
                  child: hasDescription
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(child: Text("Descrição")),
                            Container(child: Text(paragraphs[0])),
                            SizedBox(height: 10),
                            Container(child: Text(paragraphs[4])),
                            SizedBox(height: 10),
                            Container(child: Text(forthTitle)),
                            Container(child: Text(forthformattedDate)),
                            Container(child: Text(url)),
                            Container(child: Text(local)),
                            Container(child: Text(price)),
                          ],
                        )
                      : Text("no Paragraph")),
            ),
            Container(
              height: 450,
              width: 300,
              color: Colors.lightBlue,
              child: SingleChildScrollView(
                  child: hasDescription
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(child: Text("Descrição")),
                            Container(child: Text(paragraphs[0])),
                            SizedBox(height: 10),
                            Container(child: Text(paragraphs[5])),
                            SizedBox(height: 10),
                            Container(child: Text(fifthTitle)),
                            Container(child: Text(fifthformattedDate)),
                            Container(child: Text(url)),
                            Container(child: Text(local)),
                            Container(child: Text(price)),
                          ],
                        )
                      : Text("no Paragraph")),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            hasDescription = true;
            // Get the last paragraph
            String lastParagraph = paragraphs.last;

// Split the last paragraph into lines using '\n' as the delimiter
            List<String> linesInLastParagraph = lastParagraph.split('\n');

// Select the string in the last line
            String lastLineString = linesInLastParagraph.last;
            // saveTextToFile(paragraphs, firstLineTerms);
            print(lastLineString);
            List<String> info = lastLineString.split(' ');
            print(info.last);
            var priceFull = info.last;
            List<String> priceInt = priceFull.split(',');
            var price = priceInt[0];
            print(price);
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
