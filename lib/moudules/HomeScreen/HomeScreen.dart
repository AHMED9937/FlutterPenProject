import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduatedproject/moudules/HomeScreen/tables.dart';
import 'package:graduatedproject/moudules/matrialscreen/matrialscreen.dart';


class HomeScreen_1 extends StatefulWidget {
  const HomeScreen_1({super.key});

  @override
  State<HomeScreen_1> createState() => _HomeScreenState1();
}

class _HomeScreenState1 extends State<HomeScreen_1> {
  List<Map<String, String>> sessions = [
    {'topic': 'UI/UX', 'time': '9:30'},
    {'topic': 'UI/UX', 'time': '10:00'},
    {'topic': 'UI/UX', 'time': '10:30'},
    {'topic': 'UI/UX', 'time': '11:00'},
  ];

  void _deleteSession(int index) {
    setState(() {
      sessions.removeAt(index);
    });
  }

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
        ), // Ensures the title is centered on the AppBar
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
        child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 10,),

                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => table(sessionss: sessions,)), // Replace YourNextPageClass with the actual class you want to navigate to
                    );
                  },
                  child: SvgPicture.asset(
                    'lib/assets/images/Component 9.svg',
                    alignment: const Alignment(20, 129),
                    fit: BoxFit.cover,
                  ),
                ),


                const SizedBox(width: 10,),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>const MaterialScreen()), // Replace YourNextPageClass with the actual class you want to navigate to
                    );
                  },
                  child: SvgPicture.asset('lib/assets/images/Group 343.svg',
                    alignment: const Alignment(222, 129),
                    fit: BoxFit.cover,
                  ),
                ),

              ],
            ),
            Padding(

              padding: const EdgeInsets.all(8.0),
              child:Container(
                height: 358,
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 10,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Today’s Sessions',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight:FontWeight.w500 ,
                                ),

                              ),

                            ],
                          ),

                        ],
                      ),
                      const SizedBox(height: 10,),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Topic',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 135, 147, 165),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                ),

                              ),




                            ],
                          ),
                          SizedBox(width: 65,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Time',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 135, 147, 165),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                ),

                              ),



                            ],
                          ),
                          SizedBox(width: 70,),



                        ],
                      ),
                      const SizedBox(height: 10,),

                      Expanded(
                        child: ListView.builder(
                          itemCount: sessions.length,
                          itemBuilder: (context, index) {
                            return SessionItem(
                              topic: sessions[index]['topic']!,
                              time: sessions[index]['time']!,
                              onDelete: () => _deleteSession(index),
                            );
                          },
                        ),
                      ),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 47, 63, 255), // Background color of the button
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextButton(
                            onPressed: () {
                              // Add your onPressed functionality here
                              print("Button Pressed!");
                            },

                            child: const Text(
                              'Show More',
                              style: TextStyle(
                                fontSize: 16, // Size of the text inside the button
                                color: Colors.white,
                                fontWeight: FontWeight.w400,// Color of the text
                              ),
                            ),
                          ),
                        ),

                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(

                      height: 240,
                      decoration: BoxDecoration(

                        border: Border.all(width: 1,),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset('lib/assets/images/13746506_5351340 1.svg'),
                            const SizedBox(width: 13,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(height: 65,),
                                Container(
                                  width: 102,
                                  alignment: Alignment.center,
                                  child: const Text(
                                    textAlign:TextAlign.center,
                                    'Generate QR Code',
                                    maxLines: 2,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,

                                    ),),
                                ),
                                const SizedBox(height: 32,),
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 47, 63, 255), // Background color of the button
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      // Add your onPressed functionality here
                                      print("Button Pressed!");
                                    },

                                    child: const Text(
                                      'Generate',
                                      style: TextStyle(
                                        fontSize: 16, // Size of the text inside the button
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,// Color of the text
                                      ),
                                    ),
                                  ),
                                ),

                              ],

                            ),
                          ],

                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

class SessionItem extends StatelessWidget {
  final String topic;
  final String time;
  final VoidCallback onDelete;

  const SessionItem({
    required this.topic,
    required this.time,
    required this.onDelete,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(

      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(topic, style: const TextStyle(fontSize: 16)),
            Text(time, style: const TextStyle(fontSize: 16)),
            const IconWrapper(),
            IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: onDelete,
            ),
          ],
        ),
      ],
    );
  }
}

class IconWrapper extends StatefulWidget {
  const IconWrapper({super.key});
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
          color: _isPressed ? const Color.fromARGB(255, 229, 235, 247) : Colors.transparent,
          borderRadius: BorderRadius.circular(14),
        ),
        padding: const EdgeInsets.all(10), // Padding around the icon
        child: const Icon(
          Icons.notifications,
          size: 30, // Size of the bell icon
          color: Color.fromARGB(255, 47, 63, 255), // Color of the bell icon
        ),
      ),
    );
  }
}

