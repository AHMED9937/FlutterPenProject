import 'package:flutter/material.dart';
import 'package:graduatedproject/moudules/Lectures_sections/lecscreen.dart';

class LecSecScreen extends StatefulWidget {
  const LecSecScreen({super.key});

  @override
  _LecSecScreenState createState() => _LecSecScreenState();
}

class _LecSecScreenState extends State<LecSecScreen> {
  int _selectedIndex = 0; // Index to track the selected button

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color.fromRGBO(217, 217, 217, 0.0),
    ),
      body: Column(
        children: [
          Row(  // The row for buttons
            children: [
              _buildButton(0, 'Button 1'),
              _buildButton(1, 'Button 2'),
            ],
          ),
          Expanded(
            child: _selectedContent(),  // This is where the content will change
          ),
        ],
      ),
    );
  }
  Expanded _buildButton(int index, String text) {
    return Expanded(
      child: Container(
        color: const Color.fromRGBO(217, 217, 217, 0.5),
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _selectedIndex = index;  // Update the selected index
              });
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: _selectedIndex == index ? (index == 1 ? const Color.fromRGBO(249, 174, 43, 1): Colors.blue): Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            child: Text(text, style: TextStyle(color: _selectedIndex == index ? Colors.white : Colors.black)),
          ),
        ),
      ),
    );
  }

  Widget _selectedContent() {
    switch (_selectedIndex) {
      case 0:
        return const LecScreen();  // Content for the first button
      case 1:
        return const LecScreen_2();  // Content for the second button
      default:
        return const LecScreen();  // Default content
    }
  }
}
class FirstContent extends StatelessWidget {
  const FirstContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Content for First Button", style: TextStyle(fontSize: 24, color: Colors.blue)),
    );
  }
}

class SecondContent extends StatelessWidget {
  const SecondContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Content for Second Button", style: TextStyle(fontSize: 24, color: Colors.green)),
    );
  }
}
