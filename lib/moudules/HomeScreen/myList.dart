import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Session {
  String topic;
  String time;

  Session({required this.topic, required this.time});
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Session> sessions = [
    Session(topic: 'UI/UX', time: '9:30'),
    Session(topic: 'Flutter Development', time: '10:30'),
    Session(topic: 'React Native', time: '11:30'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            'lib/assets/images/Vector.svg',
            height: 24,
            width: 24,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'lib/assets/images/person397.jpg',
              height: 48,
              width: 48,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: sessions.length,
          itemBuilder: (context, index) {
            return sessionTile(index);
          },
        ),
      ),
    );
  }

  Widget sessionTile(int index) {
    return ListTile(
      title: Text(sessions[index].topic),
      subtitle: Text(sessions[index].time),

      trailing: Row(
        children: [

          IconButton(
            icon: const Icon(Icons.delete, color: Colors.red),
            onPressed: () => _showDeleteDialog(index),
          ),
        ],
      ),
    );
  }

  void _showDeleteDialog(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Are you sure you want to delete "${sessions[index].topic}"?'),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Delete', style: TextStyle(color: Colors.red)),
              onPressed: () {
                setState(() {
                  sessions.removeAt(index);
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class IconWrapper extends StatefulWidget {
  const IconWrapper({Key? key}) : super(key: key);

  @override
  _IconWrapperState createState() => _IconWrapperState();
}

class _IconWrapperState extends State<IconWrapper> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isPressed = !_isPressed;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: _isPressed ? Colors.blue[100] : Colors.transparent,
          borderRadius: BorderRadius.circular(14),
        ),
        padding: const EdgeInsets.all(10),
        child: const Icon(
          Icons.notifications,
          size: 30,
          color: Colors.blue,
        ),
      ),
    );
  }
}

