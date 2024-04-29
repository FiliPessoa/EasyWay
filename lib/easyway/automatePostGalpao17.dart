import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class AutomatePostGalpao17 extends StatefulWidget {
  const AutomatePostGalpao17({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<AutomatePostGalpao17> createState() => _AutomatePostGalpao17State();
}

class _AutomatePostGalpao17State extends State<AutomatePostGalpao17> {
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

  Future<void> findinGuitar(String text) async {
    // The input text that contains the emoji

    // The emoji to search for
    String emojiToFind = "🚩";

    // Split the text into lines
    List<String> lines = text.split('\n');

    int lineNumberWithEmoji = -1;

    // Search for the emoji and determine its line number
    for (int i = 0; i < lines.length; i++) {
      if (lines[i].contains(emojiToFind)) {
        lineNumberWithEmoji = i;
      }
      print(lines);
    }
  }

  Future<void> saveTextToFile(
      List<String> paragraphs, List<String> firstLineTerms) async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final file = File('/lib/output.txt');

      // Concatenate the text from various sources
      final concatenatedText = [
        "Descrição",
        paragraphs[0],
        paragraphs[1],
        paragraphs[2], // Add more paragraphs as needed
        firstLineTerms[0],
        firstLineTerms[1],
        firstLineTerms[3],
        firstLineTerms[4],
        firstLineTerms[5],
      ].join('\n');

      // Write the concatenated text to the file
      await file.writeAsString(concatenatedText);

      print('Text saved to file: ${file.path}');
    } catch (e) {
      print('Error writing to file: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    String year = "2024";
    List<String> paragraphs = separateParagraphs(description);
    String firstParagraph = hasDescription ? paragraphs[1] : "";
    String lineWithGuitar1 = "h"; // Default value is "h"

    if (firstParagraph.isNotEmpty) {
      List<String> lines = firstParagraph.split('\n');

      for (String line in lines) {
        if (line.startsWith('🎸') ||
            line.startsWith('🎧') ||
            line.startsWith('🏆')) {
          lineWithGuitar1 = line;
          break; // Exit the loop once the line is found
        }
      }
    }
    List<String> firstLineTerms = firstParagraph.split(' ');
    List<String> firstInfo = separateWords(firstParagraph);
    String firstDate = hasDescription ? firstInfo[1] : "";
    List<String> firstdayMonth = separateDayMonth(firstDate);
    String firstday = hasDescription ? firstdayMonth[0] : "";
    String firstmonth = hasDescription ? firstdayMonth[1] : "";
    List<String> startHourInfo = separateWords(lineWithGuitar1);
    String firstStartfullHour = hasDescription ? startHourInfo[1] : "";
    String firststartHour =
        firstStartfullHour.replaceAll("h", ""); // Remove "h" from the string
    String firstendfullHour = hasDescription ? firstInfo[5] : "";
    String firstendHour = firstendfullHour.split(RegExp(r'[^0-9]')).join();

//2023-10-21 21:00:00
    String formattedDate = '$year-$firstmonth-$firstday $firststartHour:00:00';
    String formattedEndDate = '$year-$firstmonth-$firstday $firstendHour:00:00';

    String secondParagraph = hasDescription ? paragraphs[2] : "";
    String lineWithGuitar2 = "h"; // Default value is "h"

    if (firstParagraph.isNotEmpty) {
      List<String> lines = secondParagraph.split('\n');

      for (String line in lines) {
        if (line.startsWith('🎸') ||
            line.startsWith('🎧') ||
            line.startsWith('🏆')) {
          lineWithGuitar2 = line;
          break; // Exit the loop once the line is found
        }
      }
    }
    List<String> secondLineTerms = secondParagraph.split(' ');
    List<String> secondInfo = separateWords(secondParagraph);
    String secondDate = hasDescription ? secondInfo[1] : "";
    List<String> seconddayMonth = separateDayMonth(secondDate);
    String secondday = hasDescription ? seconddayMonth[0] : "";
    String secondmonth = hasDescription ? seconddayMonth[1] : "";
    List<String> secondstartHourInfo = separateWords(lineWithGuitar2);
    String secondStartfullHour = hasDescription ? secondstartHourInfo[1] : "";
    String secondstartHour =
        secondStartfullHour.replaceAll("h", ""); // Remove "h" from the string
    String secondendfullHour = hasDescription ? secondInfo[5] : "";
    String secondendHour = secondendfullHour.split(RegExp(r'[^0-9]')).join();
    String secondformattedDate =
        '$year-$secondmonth-$secondday $secondstartHour:00:00';
    String secondformattedEndDate =
        '$year-$secondmonth-$secondday $secondendHour:00:00';

    String thirdParagraph = hasDescription ? paragraphs[3] : "";
    String lineWithGuitar3 = "h"; // Default value is "h"

    if (firstParagraph.isNotEmpty) {
      List<String> lines = firstParagraph.split('\n');

      for (String line in lines) {
        if (line.startsWith('🎸') ||
            line.startsWith('🎧') ||
            line.startsWith('🏆')) {
          lineWithGuitar3 = line;
          break; // Exit the loop once the line is found
        }
      }
    }
    List<String> thirdLineTerms = thirdParagraph.split(' ');
    List<String> thirdInfo = separateWords(thirdParagraph);
    String thirdDate = hasDescription ? thirdInfo[1] : "";
    List<String> thirddayMonth = separateDayMonth(thirdDate);
    String thirdday = hasDescription ? thirddayMonth[0] : "";
    String thirdmonth = hasDescription ? thirddayMonth[1] : "";
    List<String> thirdstartHourInfo = separateWords(lineWithGuitar3);
    String thirdStartfullHour = hasDescription ? thirdstartHourInfo[1] : "";
    String thirdstartHour =
        thirdStartfullHour.replaceAll("h", ""); // Remove "h" from the string
    String thirdendfullHour = hasDescription ? thirdInfo[5] : "";
    String thirdendHour = thirdendfullHour.split(RegExp(r'[^0-9]')).join();
    String thirdformattedDate =
        '$year-$thirdmonth-$thirdday $thirdstartHour:00:00';
    String thirdformattedEndDate =
        '$year-$thirdmonth-$thirdday $thirdendHour:00:00';

    String forthParagraph = hasDescription ? paragraphs[4] : "";
    String lineWithGuitar4 = "h"; // Default value is "h"

    if (firstParagraph.isNotEmpty) {
      List<String> lines = forthParagraph.split('\n');

      for (String line in lines) {
        if (line.startsWith('🎸') ||
            line.startsWith('🎧') ||
            line.startsWith('🏆')) {
          lineWithGuitar4 = line;
          break; // Exit the loop once the line is found
        }
      }
    }
    List<String> forthLineTerms = forthParagraph.split(' ');
    List<String> forthInfo = separateWords(forthParagraph);
    String forthDate = hasDescription ? forthInfo[1] : "";
    List<String> forthdayMonth = separateDayMonth(forthDate);
    String forthday = hasDescription ? forthdayMonth[0] : "";
    String forthmonth = hasDescription ? forthdayMonth[1] : "";
    List<String> forthstartHourInfo = separateWords(lineWithGuitar4);
    String forthStartfullHour = hasDescription ? forthstartHourInfo[1] : "";
    String forthstartHour =
        forthStartfullHour.replaceAll("h", ""); // Remove "h" from the string
    String forthendfullHour = hasDescription ? forthInfo[5] : "";
    String forthendHour = forthendfullHour.split(RegExp(r'[^0-9]')).join();
    String forthformattedDate =
        '$year-$forthmonth-$forthday $forthstartHour:00:00';
    String forthformattedEndDate =
        '$year-$forthmonth-$forthday $forthendHour:00:00';

    String fifthParagraph = hasDescription ? paragraphs[5] : "";
    String lineWithGuitar5 = "h"; // Default value is "h"

    if (firstParagraph.isNotEmpty) {
      List<String> lines = fifthParagraph.split('\n');

      for (String line in lines) {
        if (line.startsWith('🎸') ||
            line.startsWith('🎧') ||
            line.startsWith('🏆')) {
          lineWithGuitar5 = line;
          break; // Exit the loop once the line is found
        }
      }
    }
    List<String> fifthLineTerms = fifthParagraph.split(' ');
    List<String> fifthInfo = separateWords(fifthParagraph);
    String fifthDate = hasDescription ? fifthInfo[1] : "";
    List<String> fifthdayMonth = separateDayMonth(fifthDate);
    String fifthday = hasDescription ? fifthdayMonth[0] : "";
    String fifthmonth = hasDescription ? fifthdayMonth[1] : "";
    List<String> fifthstartHourInfo = separateWords(lineWithGuitar5);
    String fifthStartfullHour = hasDescription ? fifthstartHourInfo[1] : "";
    String fifthstartHour =
        fifthStartfullHour.replaceAll("h", ""); // Remove "h" from the string
    String fifthendfullHour = hasDescription ? fifthInfo[5] : "";
    String fifthendHour = fifthendfullHour.split(RegExp(r'[^0-9]')).join();
    String fifthformattedDate =
        '$year-$fifthmonth-$fifthday $fifthstartHour:00:00';
    String fifthformattedEndDate =
        '$year-$fifthmonth-$fifthday $fifthendHour:00:00';

    int price = 0;
    String url = "https://www.instagram.com/galpao17df/";
    String local = "Galpão 17";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Easy Way Galpão 17"),
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
                            Container(child: Text(firstLineTerms[1])),
                            Container(child: Text(firstLineTerms[3])),
                            Container(child: Text(firstLineTerms[4])),
                            Container(child: Text(firstLineTerms[5])),
                            Container(child: Text(firstday)),
                            Container(child: Text(firstmonth)),
                            Container(child: Text(firststartHour)),
                            Container(child: Text(firstendHour)),
                            Container(child: Text(formattedDate)),
                            Container(child: Text(formattedEndDate)),
                            Container(child: Text(url)),
                            Container(child: Text("0")),
                            Container(child: Text(firststartHour)),
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
                            Container(child: Text(secondLineTerms[1])),
                            Container(child: Text(secondLineTerms[3])),
                            Container(child: Text(secondLineTerms[4])),
                            Container(child: Text(secondLineTerms[5])),
                            Container(child: Text(secondInfo[1])),
                            Container(child: Text(secondday)),
                            Container(child: Text(secondmonth)),
                            Container(child: Text(secondstartHour)),
                            Container(child: Text(secondendHour)),
                            Container(child: Text(secondformattedDate)),
                            Container(child: Text(secondformattedEndDate)),
                            Container(child: Text(url)),
                            Container(child: Text("0")),
                            Container(child: Text(lineWithGuitar2)),
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
                            Container(child: Text(thirdLineTerms[1])),
                            Container(child: Text(thirdLineTerms[3])),
                            Container(child: Text(thirdLineTerms[4])),
                            Container(child: Text(thirdLineTerms[5])),
                            Container(child: Text(thirdInfo[1])),
                            Container(child: Text(thirdday)),
                            Container(child: Text(thirdmonth)),
                            Container(child: Text(thirdstartHour)),
                            Container(child: Text(thirdendHour)),
                            Container(child: Text(thirdformattedDate)),
                            Container(child: Text(thirdformattedEndDate)),
                            Container(child: Text(url)),
                            Container(child: Text("0")),
                            Container(child: Text(lineWithGuitar3)),
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
                            Container(child: Text(forthLineTerms[1])),
                            Container(child: Text(forthLineTerms[3])),
                            Container(child: Text(forthLineTerms[4])),
                            Container(child: Text(forthLineTerms[5])),
                            Container(child: Text(forthInfo[1])),
                            Container(child: Text(forthday)),
                            Container(child: Text(forthmonth)),
                            Container(child: Text(forthstartHour)),
                            Container(child: Text(forthendHour)),
                            Container(child: Text(forthformattedDate)),
                            Container(child: Text(forthformattedEndDate)),
                            Container(child: Text(url)),
                            Container(child: Text("0")),
                            Container(child: Text(lineWithGuitar4)),
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
                            Container(child: Text(fifthLineTerms[1])),
                            Container(child: Text(fifthLineTerms[3])),
                            Container(child: Text(fifthLineTerms[4])),
                            Container(child: Text(fifthLineTerms[5])),
                            Container(child: Text(fifthInfo[1])),
                            Container(child: Text(fifthday)),
                            Container(child: Text(fifthmonth)),
                            Container(child: Text(fifthstartHour)),
                            Container(child: Text(fifthendHour)),
                            Container(child: Text(fifthformattedDate)),
                            Container(child: Text(fifthformattedEndDate)),
                            Container(child: Text(url)),
                            Container(child: Text("0")),
                            Container(child: Text(lineWithGuitar5)),
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
            String text = """Terça-feira, 31/10 - 11h às 00h
📍 BEERSPOT
🍺💀 30% de desconto na lagerzinha descarada
🏍️ 20% de desconto na lavagem de moto simples, com a galera do Lava Motos Old Bikers (@lavamotosoldbikers)
🎸 21h - Trih (Classic Rock - especial Rockin Dead's - @bandatrih)
""";
            findinGuitar(text);

            // Save the extracted hour to a file
            saveTextToFile(paragraphs, firstLineTerms);
          });
        },
        tooltip: 'Find and Save Hour',
        child: const Icon(Icons.add),
      ),
    );
  }
}
