import 'package:flutter/material.dart';
import 'package:gsheets/gsheets.dart';

// create credentials for gsheets
const _credentials = r'''

YOUR JSON CREDENTIALS HERE


''';
// const spreadSheet id
const _spreadSheetId = "YOUR SPREAD SHEET ID HERE";

void main() async {
  // init google spreadsheet
  final gsheets = GSheets(_credentials);

  // fetch spreadsheet by id
  final spreadsheet = await gsheets.spreadsheet(_spreadSheetId);

  // get worksheet by name title
  final sheet = spreadsheet.worksheetByTitle("Tutorial1");

  // basic function
  // updating cell
  await sheet!.values.insertValue('Test Denny 2', column: 2, row: 1);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
