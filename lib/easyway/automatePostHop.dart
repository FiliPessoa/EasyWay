import 'dart:io';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class AutomatePostHop extends StatefulWidget {
  const AutomatePostHop({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<AutomatePostHop> createState() => _AutomatePostHopState();
}

class _AutomatePostHopState extends State<AutomatePostHop> {
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

  List<String> separateDayMonth(String text) {
    return text.split('/');
  }

  List<String> removeLetters(String text) {
    return text.split(RegExp(r'[^0-9]'));
  }

  @override
  Widget build(BuildContext context) {
    int year = 2013;
    List<String> paragraphs = separateParagraphs(description);
    String firstParagraph = hasDescription ? paragraphs[3] : "";
    List<String> firstLineTerms = firstParagraph.split(' ');

// Split the last paragraph into lines using '\n' as the delimiter
    List<String> linesInLastParagraph = firstParagraph.split('\n');

// Select the string in the last line
    String lastLineString = linesInLastParagraph.last;
    // saveTextToFile(paragraphs, firstLineTerms);
    print(lastLineString);
    String lastline = hasDescription ? lastLineString[1] : "";
// Select the string in the last line
    List<String> firstInfo = separateWords(lastLineString);
    print(firstInfo);
    // String firstDate = hasDescription ? firstInfo[1] : "";
    // List<String> firstdayMonth = separateDayMonth(firstDate);
    // String firstday = hasDescription ? firstdayMonth[0] : "";
    // String firstmonth = hasDescription ? firstdayMonth[1] : "";
    // String firstStartfullHour = hasDescription ? firstInfo[3] : "";
    // String firststartHour = firstStartfullHour.split(RegExp(r'[^0-9]')).join();
    // String firstendfullHour = hasDescription ? firstInfo[5] : "";
    // String firstendHour = firstendfullHour.split(RegExp(r'[^0-9]')).join();
    // String firstformattedDate =
    //     '$year-$firstmonth-$firstday $firststartHour:00:00';

    String secondParagraph = hasDescription ? paragraphs[4] : "";
    List<String> secondLineTerms = secondParagraph.split(' ');
    // List<String> secondInfo = separateWords(secondParagraph);
    // String secondDate = hasDescription ? secondInfo[1] : "";
    // List<String> seconddayMonth = separateDayMonth(secondDate);
    // String secondday = hasDescription ? seconddayMonth[0] : "";
    // String secondmonth = hasDescription ? seconddayMonth[1] : "";
    // String secondStartfullHour = hasDescription ? secondInfo[3] : "";
    // String secondstartHour =
    //     secondStartfullHour.split(RegExp(r'[^0-9]')).join();
    // String secondendfullHour = hasDescription ? secondInfo[5] : "";
    // String secondendHour = secondendfullHour.split(RegExp(r'[^0-9]')).join();
    // String secondformattedDate =
    //     '$year-$secondmonth-$secondday $secondstartHour:00:00';

    String thirdParagraph = hasDescription ? paragraphs[5] : "";
    List<String> thirdLineTerms = thirdParagraph.split(' ');
    // List<String> thirdInfo = separateWords(thirdParagraph);
    // String thirdDate = hasDescription ? thirdInfo[1] : "";
    // List<String> thirddayMonth = separateDayMonth(thirdDate);
    // String thirdday = hasDescription ? thirddayMonth[0] : "";
    // String thirdmonth = hasDescription ? thirddayMonth[1] : "";
    // String thirdStartfullHour = hasDescription ? thirdInfo[3] : "";
    // String thirdstartHour = thirdStartfullHour.split(RegExp(r'[^0-9]')).join();
    // String thirdendfullHour = hasDescription ? thirdInfo[5] : "";
    // String thirdendHour = thirdendfullHour.split(RegExp(r'[^0-9]')).join();
    // String thirdformattedDate =
    //     '$year-$thirdmonth-$thirdday $thirdstartHour:00:00';
    // String forthParagraph = hasDescription ? paragraphs[4] : "";
    // List<String> forthLineTerms = forthParagraph.split(' ');
    // String fifthParagraph = hasDescription ? paragraphs[5] : "";
    // List<String> fifthLineTerms = fifthParagraph.split(' ');
    int preco = 0;
    String url = "https://www.instagram.com/galpao17df/";
    String local = "Galpão 17";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("widget.title)"),
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
                            Container(child: Text(firstLineTerms[0])),
                            Container(child: Text(firstLineTerms[2])),
                            Container(child: Text(firstLineTerms[3])),
                            Container(child: Text(firstLineTerms[4])),
                            Container(child: Text(firstLineTerms[4])),
                            Container(child: Text(firstInfo[0])),
                            Container(child: Text(lastline)),
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
                            Container(child: Text(secondLineTerms[0])),
                            Container(child: Text(secondLineTerms[2])),
                            Container(child: Text(secondLineTerms[3])),
                            Container(child: Text(secondLineTerms[4])),
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
                            Container(child: Text(thirdLineTerms[0])),
                            Container(child: Text(thirdLineTerms[2])),
                            Container(child: Text(thirdLineTerms[3])),
                            Container(child: Text(thirdLineTerms[4])),
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
                            // Container(child: Text(forthLineTerms[0])),
                            // Container(child: Text(forthLineTerms[1])),
                            // Container(child: Text(forthLineTerms[3])),
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
                            // Container(child: Text(fifthLineTerms[0])),
                            // Container(child: Text(fifthLineTerms[1])),
                            // Container(child: Text(fifthLineTerms[3])),
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
                            // Container(child: Text(fifthLineTerms[0])),
                            // Container(child: Text(fifthLineTerms[1])),
                            // Container(child: Text(fifthLineTerms[3])),
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
            List<String> infosparagraph = lastParagraph.split(' ');

// Select the string in the last line
            String lastLineString = infosparagraph.last;
            // saveTextToFile(paragraphs, firstLineTerms);
            print(infosparagraph[0]);

            // List<String> info = lastLineString.split(' ');
            // print(info[8]);
            // var priceFull = info.last;
            // List<String> priceInt = priceFull.split(',');
            // var price = priceInt[0];
            // print(price);
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
