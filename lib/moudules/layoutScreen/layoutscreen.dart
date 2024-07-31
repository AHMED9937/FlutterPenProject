import 'package:flutter/material.dart';
import 'package:graduatedproject/moudules/HomeScreen/HomeScreen.dart';
import 'package:graduatedproject/moudules/aboutofus/aboutofus_screen.dart';
import 'package:graduatedproject/moudules/matrialscreen/matrialscreen.dart';
import 'package:graduatedproject/moudules/searchscreen/searchscreen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  _LayoutScreenState createState() => _LayoutScreenState();
}


class _LayoutScreenState extends State<LayoutScreen> {
  int _selectedIndex = 0;  // Default index of the first screen

  // List of widget pages for each navigation item
  static final List<Widget> _pageOptions = <Widget>[
    const HomeScreen_1(),
    const SearchScreen(),
    const MaterialScreen(),
    const AboutUsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;  // Updating the selected index on tap
    });
  }

  Future<bool> _onWillPop() async {
    if (_selectedIndex > 0) {
      setState(() {
        _selectedIndex--;  // Decrement to go to the previous tab
      });
      return false;  // Prevents the pop (back action)
    }
    // If it's the first tab and there's no 'previous' tab, ask for confirmation to exit
    return await _showExitConfirmation(context);
  }

  Future<bool> _showExitConfirmation(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Confirm Exit"),
        content: const Text("Do you want to exit the application?"),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),  // Cancels the exit
            child: const Text("No"),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),  // Confirms the exit
            child: const Text("Yes"),
          ),
        ],
      ),
    ) ?? false;  // In case the dialog is dismissed (by tapping outside of it, for example)
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(

        body: Center(
          child: _pageOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info_outline),
              label: 'Material',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'About Us',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue[800],
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}

// Example stubs for other screens

