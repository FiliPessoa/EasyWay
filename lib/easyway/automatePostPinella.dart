import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';

class AutomatePostPinella extends StatefulWidget {
  const AutomatePostPinella({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<AutomatePostPinella> createState() => _AutomatePostPinellaState();
}

class _AutomatePostPinellaState extends State<AutomatePostPinella> {
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
    List<String> firstLineTerms = firstParagraph.split(' ');
    List<String> firstLiners = separateLines(firstParagraph);
    String firstTitle = hasDescription ? firstLiners[1] : "";
    int firstLastLineIndex = firstLiners.length - 1;
    String firstPriceLine = firstLiners[firstLastLineIndex];
    List<String> firstPriceLineTerms = separateWords(firstPriceLine);
    int priceIndex = firstPriceLineTerms.length - 1;
    String fullPrice = firstPriceLineTerms[priceIndex];
    List<String> dividePrice = separatePrice(fullPrice);
    String price = dividePrice[0];

    String secondParagraph = hasDescription ? paragraphs[2] : "";
    List<String> secondLineTerms = secondParagraph.split(' ');
    List<String> secondLiners = separateLines(secondParagraph);
    String secondTitle = hasDescription ? secondLiners[1] : "";
    int secondLastLineIndex = secondLiners.length - 1;
    String secondPriceLine = secondLiners[secondLastLineIndex];
    List<String> secondPriceLineTerms = separateWords(secondPriceLine);
    int secondPriceIndex = secondPriceLineTerms.length - 1;
    String secondFullPrice = secondPriceLineTerms[secondPriceIndex];
    List<String> secondDividePrice = separatePrice(secondFullPrice);
    String secondPrice = secondDividePrice[0];

    String thirdParagraph = hasDescription ? paragraphs[3] : "";
    List<String> thirdLineTerms = thirdParagraph.split(' ');
    List<String> thirdLiners = separateLines(thirdParagraph);
    String thirdTitle = hasDescription ? thirdLiners[1] : "";
    int thirdLastLineIndex = thirdLiners.length - 1;
    String thirdPriceLine = thirdLiners[thirdLastLineIndex];
    List<String> thirdPriceLineTerms = separateWords(thirdPriceLine);
    int thirdPriceIndex = thirdPriceLineTerms.length - 1;
    String thirdFullPrice = thirdPriceLineTerms[thirdPriceIndex];
    List<String> thirdDividePrice = separatePrice(thirdFullPrice);
    String thirdPrice = thirdDividePrice[0];

    String forthParagraph = hasDescription ? paragraphs[4] : "";
    List<String> forthLineTerms = forthParagraph.split(' ');
    List<String> forthLiners = separateLines(forthParagraph);
    String forthTitle = hasDescription ? forthLiners[1] : "";
    int forthLastLineIndex = forthLiners.length - 1;
    String forthPriceLine = forthLiners[forthLastLineIndex];
    List<String> forthPriceLineTerms = separateWords(forthPriceLine);
    int forthPriceIndex = forthPriceLineTerms.length - 1;
    String forthFullPrice = forthPriceLineTerms[forthPriceIndex];
    List<String> forthDividePrice = separatePrice(forthFullPrice);
    String forthPrice = forthDividePrice[0];

    String fifthParagraph = hasDescription ? paragraphs[5] : "";
    List<String> fifthLineTerms = fifthParagraph.split(' ');
    List<String> fifthLiners = separateLines(fifthParagraph);
    String fifthTitle = hasDescription ? fifthLiners[1] : "";
    int fifthLastLineIndex = fifthLiners.length - 1;
    String fifthPriceLine = fifthLiners[fifthLastLineIndex];
    List<String> fifthPriceLineTerms = separateWords(fifthPriceLine);
    int fifthPriceIndex = fifthPriceLineTerms.length - 1;
    String fifthFullPrice = fifthPriceLineTerms[fifthPriceIndex];
    List<String> fifthDividePrice = separatePrice(fifthFullPrice);
    String fifthPrice = fifthDividePrice[0];

    String sixthParagraph = hasDescription ? paragraphs[6] : "";
    List<String> sixthLineTerms = sixthParagraph.split(' ');
    List<String> sixthLiners = separateLines(sixthParagraph);
    String sixthTitle = hasDescription ? sixthLiners[1] : "";
    int sixthLastLineIndex = sixthLiners.length - 1;
    String sixthPriceLine = sixthLiners[sixthLastLineIndex];
    List<String> sixthPriceLineTerms = separateWords(sixthPriceLine);
    int sixthPriceIndex = sixthPriceLineTerms.length - 1;
    String sixthFullPrice = sixthPriceLineTerms[sixthPriceIndex];
    List<String> sixthDividePrice = separatePrice(sixthFullPrice);
    String sixthPrice = sixthDividePrice[0];

    String url = "https://www.instagram.com/galpao17df/";
    String local = "Pinella";

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
                            Container(child: Text(firstLineTerms[0])),
                            Container(child: Text(firstTitle)),
                            // Container(child: Text(firstTitle + " no " + local)),
                            Container(child: Text(firstLineTerms[2])),
                            Container(child: Text(firstLineTerms[4])),
                            // Container(child: Text(preco as String)),
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
                            Container(child: Text(secondLineTerms[0])),
                            Container(child: Text(secondTitle + local)),
                            Container(child: Text(secondLineTerms[2])),
                            Container(child: Text(secondLineTerms[4])),
                            Container(child: Text(url)),
                            Container(child: Text(local)),
                            Container(child: Text(secondPrice)),
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
                            Container(child: Text(thirdTitle + local)),
                            Container(child: Text(thirdLineTerms[2])),
                            Container(child: Text(thirdLineTerms[4])),
                            Container(child: Text(url)),
                            Container(child: Text(local)),
                            Container(child: Text(thirdPrice)),
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
                            Container(child: Text(forthLineTerms[0])),
                            Container(child: Text(forthTitle + local)),
                            Container(child: Text(forthLineTerms[2])),
                            Container(child: Text(forthLineTerms[4])),
                            Container(child: Text(url)),
                            Container(child: Text(local)),
                            Container(child: Text(forthPrice)),
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
                            Container(child: Text(fifthLineTerms[0])),
                            Container(child: Text(fifthTitle + local)),
                            Container(child: Text(fifthLineTerms[2])),
                            Container(child: Text(fifthLineTerms[4])),
                            Container(child: Text(url)),
                            Container(child: Text(local)),
                            Container(child: Text(fifthPrice)),
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
                            Container(child: Text(sixthLineTerms[0])),
                            Container(child: Text(sixthTitle + local)),
                            Container(child: Text(sixthLineTerms[2])),
                            Container(child: Text(sixthLineTerms[4])),
                            Container(child: Text(url)),
                            Container(child: Text(local)),
                            Container(child: Text(sixthPrice)),
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
