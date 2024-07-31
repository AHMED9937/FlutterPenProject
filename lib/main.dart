import 'package:flutter/material.dart';
import 'package:graduatedproject/moudules/startscreen/startscreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: startscreen(),

    ) ;
  }
}

class ListSegmentDisplay extends StatefulWidget {
  const ListSegmentDisplay({super.key});
  @override
  _ListSegmentDisplayState createState() => _ListSegmentDisplayState();
}

class _ListSegmentDisplayState extends State<ListSegmentDisplay> {
  //List<int> fullList = List.generate(20, (index) => index + 1); // Sample list
  List<int> displayedList = [];
  int activeButton = 1; // Default to first button active

  @override
  void initState() {
    super.initState();
    //displayedList = fullList; // Initialize with full list displayed
  }

  void handleButtonPress(int buttonNumber) {
    setState(() {
      activeButton = buttonNumber;
      switch (buttonNumber) {
        case 1:
      //    displayedList = fullList; // Show full list
          break;
        case 2:
        //  int half = (fullList.length / 2).ceil();
          //displayedList = fullList.sublist(0, half); // Show first half
          break;
        case 3:
          //int half = (fullList.length / 2).ceil();
          //displayedList = fullList.sublist(half); // Show second half
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              for (int i = 1; i <= 3; i++)
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (states) => i == activeButton ? const Color(0xFF007AFF) : Colors.grey[300]!,
                    ),
                  ),
                  onPressed: () => handleButtonPress(i),
                  child: Text(i == 1 ? 'All' : i == 2 ? 'First Half' : 'Second Half'),
                ),
            ],
          ),
       /*   Expanded(
            child: ListView.builder(
              itemCount: displayedList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(displayedList[index].toString()),
                );
              },
            ),
          ),*/
        ],
      ),
    );
  }
}
