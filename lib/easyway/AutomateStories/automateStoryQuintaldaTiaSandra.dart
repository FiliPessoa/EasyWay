import 'dart:io';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';

class AutomateStoryQuintaldaTiaSandra extends StatefulWidget {
  const AutomateStoryQuintaldaTiaSandra({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  State<AutomateStoryQuintaldaTiaSandra> createState() =>
      _AutomateStoryQuintaldaTiaSandraState();
}

class _AutomateStoryQuintaldaTiaSandraState
    extends State<AutomateStoryQuintaldaTiaSandra> {
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

  List<String> separateBarra(String text) {
    return text.split('-');
  }

  List<String> separatePrice(String text) {
    return text.split(',');
  }

  List<String> separateHour(String text) {
    return text.split('h');
  }

  List<String> removeLetters(String text) {
    return text.split(RegExp(r'[^0-9]'));
  }

  String removeZero(String text) {
    return text.replaceAll('0', '');
  }

  String removeSpace(String text) {
    return text.replaceAll(' ', '');
  }

  String removeH(String text) {
    return text.replaceAll('h', '');
  }

  @override
  Widget build(BuildContext context) {
    // Get the name of the current day of the week.

    // Get the numeric value for the current day. Use the null-aware operator (??) to provide a default value.

    0; // 0 is the default value, change it as needed
    String url = "https://www.instagram.com/quintaldatiasandra/";
    String local = "Quintal da Tia Sandra";
    String price = "0";
    int year = 2024;
    List<String> paragraphs = separateParagraphs(description);
    String firstParagraph = hasDescription ? paragraphs[1] : "";
    List<String> firstTerms = separateLines(firstParagraph);

    List<String> firstfullDate = separateBarra(firstTerms[0]);
    List<String> firstDate =
        separateDayMonth(hasDescription ? firstfullDate[1] : "");
    String firstDay = removeSpace(hasDescription ? firstDate[0] : "");

    String firstMonth = removeSpace(hasDescription ? firstDate[1] : "");

    List<String> firstartistAndHour =
        separateBarra(hasDescription ? firstTerms[1] : "");
    //
    String firstartist = hasDescription ? firstartistAndHour[0] : "";
    String firsttitle = hasDescription ? firstartist + "no " + local : "";
    //

    String firstHour = removeH(hasDescription ? firstartistAndHour[1] : "");
//
    int firstIntDay = hasDescription ? int.parse(firstDay) : 0;
    int firstIntMonth = hasDescription ? int.parse(firstMonth) : 0;
    int firstIntHour = hasDescription ? int.parse(firstHour) : 0;
    String firstformattedDate =
        '$year-$firstIntMonth-$firstIntDay $firstIntHour:00:00';

    //
/////////////////////////////////////////////////////////////////////
    String secondParagraph = hasDescription ? paragraphs[2] : "";
    List<String> secondTerms = separateLines(secondParagraph);

    List<String> secondfullDate = separateBarra(secondTerms[0]);
    List<String> secondDate =
        separateDayMonth(hasDescription ? secondfullDate[1] : "");
    String secondDay = removeSpace(hasDescription ? secondDate[0] : "");

    String secondMonth = removeSpace(hasDescription ? secondDate[1] : "");

    List<String> secondartistAndHour =
        separateBarra(hasDescription ? secondTerms[1] : "");
    //
    String secondartist = hasDescription ? secondartistAndHour[0] : "";
    String secondtitle = hasDescription ? secondartist + "no " + local : "";
    //

    String secondHour = removeH(hasDescription ? secondartistAndHour[1] : "");
//
    int secondIntDay = hasDescription ? int.parse(secondDay) : 0;
    int secondIntMonth = hasDescription ? int.parse(secondMonth) : 0;
    int secondIntHour = hasDescription ? int.parse(secondHour) : 0;
    String secondformattedDate =
        '$year-$secondIntMonth-$secondIntDay $secondIntHour:00:00';

    //
/////////////////////////////////////////////////////////////////////
    String thirdParagraph = hasDescription ? paragraphs[3] : "";
    List<String> thirdTerms = separateLines(thirdParagraph);

    List<String> thirdfullDate = separateBarra(thirdTerms[0]);
    List<String> thirdDate =
        separateDayMonth(hasDescription ? thirdfullDate[1] : "");
    String thirdDay = removeSpace(hasDescription ? thirdDate[0] : "");

    String thirdMonth = removeSpace(hasDescription ? thirdDate[1] : "");

    List<String> thirdartistAndHour =
        separateBarra(hasDescription ? thirdTerms[1] : "");
    //

    String thirdartist = hasDescription ? thirdartistAndHour[0] : "";
    String thirdtitle = hasDescription ? thirdartist + "no " + local : "";
    //

    String thirdHour = removeH(hasDescription ? thirdartistAndHour[1] : "");
//
    int thirdIntDay = hasDescription ? int.parse(thirdDay) : 0;
    int thirdIntMonth = hasDescription ? int.parse(thirdMonth) : 0;
    int thirdIntHour = hasDescription ? int.parse(thirdHour) : 0;
    String thirdformattedDate =
        '$year-$thirdIntMonth-$thirdIntDay $thirdIntHour:00:00';
    /////////////////////////////////////////////////////////////////////
    String forthParagraph = hasDescription ? paragraphs[4] : "";
    List<String> forthTerms = separateLines(forthParagraph);

    List<String> forthfullDate = separateBarra(forthTerms[0]);
    List<String> forthDate =
        separateDayMonth(hasDescription ? forthfullDate[1] : "");
    String forthDay = removeSpace(hasDescription ? forthDate[0] : "");

    String forthMonth = removeSpace(hasDescription ? forthDate[1] : "");

    List<String> forthartistAndHour =
        separateBarra(hasDescription ? forthTerms[1] : "");
    //
    String forthartist = hasDescription ? forthartistAndHour[0] : "";
    String forthtitle = hasDescription ? "Sexta no Bar Responsa" : "";
    //

    List<String> forthFullHour =
        separateHour(hasDescription ? forthartistAndHour[1] : "");
    String forthHour = hasDescription ? forthFullHour[0] : "";
    String forthMinute = hasDescription ? forthFullHour[1] : "";
//
    int forthIntDay = hasDescription ? int.parse(forthDay) : 0;
    int forthIntMonth = hasDescription ? int.parse(forthMonth) : 0;
    int forthIntHour = hasDescription ? int.parse(forthHour) : 0;
    int forthIntMinute = hasDescription ? int.parse(forthMinute) : 0;
    String forthformattedDate =
        '$year-$forthMonth-$forthIntDay $forthIntHour:$forthIntMinute:00';

//     /////////////////////////////////////////////////////////////////////
    String fifthParagraph = hasDescription ? paragraphs[5] : "";
    List<String> fifthTerms = separateLines(fifthParagraph);

    List<String> fifthfullDate = separateBarra(fifthTerms[0]);
    List<String> fifthDate =
        separateDayMonth(hasDescription ? fifthfullDate[1] : "");
    String fifthDay = removeSpace(hasDescription ? fifthDate[0] : "");

    String fifthMonth = removeSpace(hasDescription ? fifthDate[1] : "");

    List<String> fifthartistAndHour =
        separateBarra(hasDescription ? fifthTerms[1] : "");
    //
    String fifthartist = hasDescription ? fifthartistAndHour[0] : "";
    String fifthtitle = hasDescription ? "Sábado no Bar Responsa" : "";
    //

    List<String> fifthFullHour =
        separateHour(hasDescription ? fifthartistAndHour[1] : "");
    String fifthHour = hasDescription ? fifthFullHour[0] : "";
    String fifthMinute = hasDescription ? fifthFullHour[1] : "";
//
    int fifthIntDay = hasDescription ? int.parse(fifthDay) : 0;
    int fifthIntMonth = hasDescription ? int.parse(fifthMonth) : 0;
    int fifthIntHour = hasDescription ? int.parse(fifthHour) : 0;
    int fifthIntMinute = hasDescription ? int.parse(fifthMinute) : 0;
    String fifthformattedDate =
        '$year-$fifthIntMonth-$fifthIntDay $fifthIntHour:$fifthIntMinute:00';

    /////////////////////////////////////////////////////////////////////
    String sixthParagraph = hasDescription ? paragraphs[6] : "";
    List<String> sixthTerms = separateLines(sixthParagraph);

    List<String> sixthfullDate = separateBarra(sixthTerms[0]);
    List<String> sixthDate =
        separateDayMonth(hasDescription ? sixthfullDate[1] : "");
    String sixthDay = removeSpace(hasDescription ? sixthDate[0] : "");

    String sixthMonth = removeSpace(hasDescription ? sixthDate[1] : "");

    List<String> sixthartistAndHour =
        separateBarra(hasDescription ? sixthTerms[1] : "");
    //
    String sixthartist = hasDescription ? sixthartistAndHour[0] : "";
    String sixthtitle = hasDescription ? "Domingo no Bar Responsa" : "";
    //
    List<String> sixthFullHour =
        separateHour(hasDescription ? sixthartistAndHour[1] : "");
    String sixthHour = hasDescription ? sixthFullHour[0] : "";
    String sixthMinute = hasDescription ? sixthFullHour[1] : "";
//
    int sixthIntDay = hasDescription ? int.parse(sixthDay) : 0;
    int sixthIntMonth = hasDescription ? int.parse(sixthMonth) : 0;
    int sixthIntHour = hasDescription ? int.parse(sixthHour) : 0;
    int sixthIntMinute = hasDescription ? int.parse(sixthMinute) : 0;
    String sixthformattedDate =
        '$year-$sixthIntMonth-$sixthIntDay $sixthIntHour:$sixthIntMinute:00';

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
                            Container(child: Text(firsttitle)),
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
                            Container(child: Text(secondtitle)),
                            Container(child: Text(secondformattedDate)),
                            Container(child: Text(url)),
                            Container(child: Text(local)),
                            Container(child: Text(price as String)),
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
                            Container(child: Text(thirdtitle)),
                            Container(child: Text(thirdformattedDate)),
                            Container(child: Text(url)),
                            Container(child: Text(local)),
                            Container(child: Text(price as String)),
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
                            Container(child: Text(forthtitle)),
                            Container(child: Text(forthformattedDate)),
                            Container(child: Text(url)),
                            Container(child: Text(local)),
                            Container(child: Text(price as String)),
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
                            Container(child: Text(fifthtitle)),
                            Container(child: Text(fifthformattedDate)),
                            Container(child: Text(url)),
                            Container(child: Text(local)),
                            Container(child: Text(price as String)),
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
                            Container(child: Text(paragraphs[6])),
                            SizedBox(height: 10),
                            Container(child: Text(sixthtitle)),
                            Container(child: Text(sixthformattedDate)),
                            Container(child: Text(url)),
                            Container(child: Text(local)),
                            Container(child: Text(price as String)),
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
