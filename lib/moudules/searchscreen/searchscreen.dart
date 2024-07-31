import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  List<String> _searchResults = [];
  final List<String> _searchHistory = [];
  final List<String> _dataBase = [
    "Flutter Development",
    "React Native",
    "Android Development",
    "iOS Development",
    "Xamarin Development",
    "Web Development",
    "Backend Development",
    "Frontend Development",
  ];

  void _onSearchChanged(String query) {
    if (query.isEmpty) {
      setState(() {
        _searchResults = [];
      });
    } else {
      List<String> tempList = _dataBase.where((item) => item.toLowerCase().contains(query.toLowerCase())).toList();
      setState(() {
        _searchResults = tempList;
      });
    }
  }

  void _addSearchHistory(String query) {
    if (!_searchHistory.contains(query) && query.isNotEmpty) {
      setState(() {
        _searchHistory.insert(0, query); // Insert new query at the beginning of the list
      });
    }
  }

  void _clearSearchHistory() {
    setState(() {
      _searchHistory.clear();
    });
  }
  void _showDeleteDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Are you sure you want to delete?'),

          actions: <Widget>[
            // Cancel button
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Cancel', style: TextStyle(color: Colors.black)),
            ),
            // Confirm button
            TextButton(
              onPressed: () {
                // Place your delete operation logic here
                Navigator.of(context).pop(); // Close the dialog after action
              },
              child:     Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 199, 0, 0), // Background color of the button
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextButton(
                  onPressed: () {
                    // Add your onPressed functionality here
                    print("Button Pressed!");
                  },

                  child: const Text(
                    'Delete',
                    style: TextStyle(
                      fontSize: 16, // Size of the text inside the button
                      color: Colors.white,
                      fontWeight: FontWeight.w400,// Color of the text
                    ),
                  ),
                ),
              ),
            ),

          ],
        );
      },
    );
  }
  void _confirmAction() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Center(child: Text("No search History to delete ")),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Dismiss the dialog
              },
              child: Center(child: Container(
                width: 100,
              height: 40,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(47, 63, 255, 1.0),
                  borderRadius: BorderRadius.all(

                  Radius.circular(24))),
              child: const Center(child: Text("back",style: TextStyle(color: Colors.white),)))),
            ),

          ],
        );
      },
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

         title: const Text('Search'),
        actions: <Widget>[
          Image.asset(
            'lib/assets/images/person397.jpg',
            height: 48,
            width: 48,
          ),
        ],

      ),

      body: Container(
        color: const Color.fromRGBO(232, 241, 247, 1.0),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  focusNode: _focusNode,
                  controller: _searchController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(42)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      gapPadding: double.maxFinite,
                      borderRadius: BorderRadius.all(Radius.circular(42)),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(0, 122, 255, 0.5),
                        width: 35,

                      ), // Border color when focused
                    ),
                    hintText: 'Search in pen',
                    prefixIcon: const Icon(Icons.search, size: 40),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        _searchController.clear();
                        setState(() {
                          _searchResults = [];
                        });
                      },
                    ),
                    contentPadding: const EdgeInsets.all(20),
                  ),
                  onChanged: _onSearchChanged,
                  onTap: () {
                    _searchController.clear(); // Clear text when the TextField is tapped
                    setState(() {});
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(width: 10),
                  const Text('History',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  const SizedBox(width: 290),
                  IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: _searchHistory.isNotEmpty ? () => _showDeleteDialog() : _confirmAction,
                    iconSize: 30, // Size of the trash icon
                  ),

                ],
              ),
              Expanded(
                child: _searchController.text.isEmpty && _searchHistory.isNotEmpty
                    ? SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Wrap(
                    direction: Axis.horizontal,
                    spacing: 8.0,
                    runSpacing: 4.0,

                    children: _searchHistory.map((query) => Chip(
                      elevation: 0,

                      shape: const StadiumBorder(), // This will create the circular borders
                    labelPadding: const EdgeInsets.all(2),
                      backgroundColor: const Color.fromRGBO(0, 25, 250, 0.5), // Set the background color of the chip to red
                      label: Text(query, style: const TextStyle(color: Colors.white)), // Set the text color to white
                      onDeleted: () {
                        setState(() {
                          _searchHistory.remove(query);
                        });
                      },
                    )
                    ).toList(),
                  ),
                )
                    : ListView.builder(
                  itemCount: _searchResults.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(_searchResults[index]),
                      onTap: () {
                        _searchController.text = _searchResults[index];
                        _addSearchHistory(_searchResults[index]);
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    _focusNode.dispose();  // Don't forget to dispose of the focus node!
    super.dispose();
  }
}
