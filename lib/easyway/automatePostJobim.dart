import 'dart:io';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';

class AutomatePostJobim extends StatefulWidget {
  const AutomatePostJobim({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<AutomatePostJobim> createState() => _AutomatePostJobimState();
}

class _AutomatePostJobimState extends State<AutomatePostJobim> {
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
    List<String> firstTerms = separateBarra(firstParagraph);
    int firstTermsIndex = firstTerms.length - 1;
    String firstdata = firstTerms[0];
    String firstname = hasDescription ? firstTerms[1] : "";
    String firsthora = firstTerms[firstTermsIndex];
    List<String> firstdate = separateDayMonth(firstdata);
    String firstDay = hasDescription ? firstdate[0] : "";
    String firstMonth = hasDescription ? firstdate[1] : "";
    List<String> firstHtime = removeLetters(firsthora);

    String secondParagraph = hasDescription ? paragraphs[2] : "";
    List<String> secondTerms = separateBarra(secondParagraph);
    int secondTermsIndex = secondTerms.length - 1;
    String seconddata = secondTerms[0];
    String secondname = hasDescription ? secondTerms[1] : "";
    String secondhora = secondTerms[secondTermsIndex];
    List<String> seconddate = separateDayMonth(seconddata);
    String secondDay = hasDescription ? seconddate[0] : "";
    String secondMonth = hasDescription ? seconddate[1] : "";
    List<String> secondHtime = removeLetters(secondhora);

    String thirdParagraph = hasDescription ? paragraphs[3] : "";
    List<String> thirdTerms = separateBarra(thirdParagraph);
    int thirdTermsIndex = thirdTerms.length - 1;
    String thirddata = thirdTerms[0];
    String thirdname = hasDescription ? thirdTerms[1] : "";
    String thirdhora = thirdTerms[thirdTermsIndex];
    List<String> thirddate = separateDayMonth(thirddata);
    String thirdDay = hasDescription ? thirddate[0] : "";
    String thirdMonth = hasDescription ? thirddate[1] : "";
    List<String> thirdHtime = removeLetters(thirdhora);

    String forthParagraph = hasDescription ? paragraphs[4] : "";
    List<String> forthTerms = separateBarra(forthParagraph);
    int forthTermsIndex = forthTerms.length - 1;
    String forthdata = forthTerms[0];
    String forthname = hasDescription ? forthTerms[1] : "";
    String forthhora = forthTerms[forthTermsIndex];
    List<String> forthdate = separateDayMonth(forthdata);
    String forthDay = hasDescription ? forthdate[0] : "";
    String forthMonth = hasDescription ? forthdate[1] : "";
    List<String> forthHtime = removeLetters(forthhora);

    String fifthParagraph = hasDescription ? paragraphs[5] : "";
    List<String> fifthTerms = separateBarra(fifthParagraph);
    int fifthTermsIndex = fifthTerms.length - 1;
    String fifthdata = fifthTerms[0];
    String fifthname = hasDescription ? fifthTerms[1] : "";
    String fifthhora = fifthTerms[fifthTermsIndex];
    List<String> fifthdate = separateDayMonth(fifthdata);
    String fifthDay = hasDescription ? fifthdate[0] : "";
    String fifthMonth = hasDescription ? fifthdate[1] : "";
    List<String> fifthHtime = removeLetters(fifthhora);

    String url = "https://www.instagram.com/jobim.brasilia/";
    String local = "Jobim";
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
                            Container(child: Text(firstdata)),
                            Container(child: Text(firstname)),
                            Container(child: Text(firstDay)),
                            Container(child: Text(firstMonth)),
                            Container(child: Text(firstHtime[1])),
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
                            Container(child: Text(seconddata)),
                            Container(child: Text(secondname)),
                            Container(child: Text(secondDay)),
                            Container(child: Text(secondMonth)),
                            Container(child: Text(secondHtime[1])),
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
                            Container(child: Text(thirddata)),
                            Container(child: Text(thirdname)),
                            Container(child: Text(thirdDay)),
                            Container(child: Text(thirdMonth)),
                            Container(child: Text(thirdHtime[1])),
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
                            Container(child: Text(forthdata)),
                            Container(child: Text(forthname)),
                            Container(child: Text(forthDay)),
                            Container(child: Text(forthMonth)),
                            Container(child: Text(forthHtime[1])),
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
                            Container(child: Text(fifthdata)),
                            Container(child: Text(fifthname)),
                            Container(child: Text(fifthDay)),
                            Container(child: Text(fifthMonth)),
                            Container(child: Text(fifthHtime[1])),
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
