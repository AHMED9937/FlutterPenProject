import 'package:flutter/material.dart';

class table extends StatelessWidget {
  final List<Map<String, String>> sessionss;
  const table({
    super.key,
    required this.sessionss,
  });


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
backgroundColor:  const Color(0xFFE8F1F7),
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  const Row(
                    mainAxisAlignment:MainAxisAlignment.start ,
                    children: [
                      Text('Thu Mar 29, 2024'),
                    ],
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 110,
                    // Define a fixed height or calculate it dynamically based on content if needed
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            decoration:  BoxDecoration(

                                borderRadius: BorderRadius.circular(10),

                              gradient: const LinearGradient(
                                colors: [Color.fromARGB(255, 255, 255, 255), Color.fromARGB(125, 51, 65, 197)],
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text('9:00 AM'),
                                      SizedBox(width: 10),
                                      Text('Ui/ux',style:TextStyle(fontSize: 16,fontWeight: FontWeight.w400) ,)
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconWrapper(),
                                      SizedBox(width: 14),
                                      DeleteIcon(),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('11:00 AM'),
                                      SizedBox(width: 10),
                                      Text('Dr:Eman Reda'),
                                      SizedBox(width: 10),
                                      Text('Hall 1'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 110,
                    // Define a fixed height or calculate it dynamically based on content if needed
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            decoration:  BoxDecoration(

                              borderRadius: BorderRadius.circular(10),
                                color: Colors.white,

                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text('9:00 AM'),
                                      SizedBox(width: 10),
                                      Text('Ui/ux',style:TextStyle(fontSize: 16,fontWeight: FontWeight.w400) ,)
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconWrapper(),
                                      SizedBox(width: 14),
                                      DeleteIcon(),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('11:00 AM'),
                                      SizedBox(width: 10),
                                      Text('Dr:Eman Reda'),
                                      SizedBox(width: 10),
                                      Text('Hall 1'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 110,
                    // Define a fixed height or calculate it dynamically based on content if needed
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            decoration:  BoxDecoration(

                              borderRadius: BorderRadius.circular(10),

                              gradient: const LinearGradient(
                                colors: [Color.fromARGB(255, 255, 255, 255), Color.fromARGB(125, 51, 65, 197)],
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text('9:00 AM'),
                                      SizedBox(width: 10),
                                      Text('Ui/ux',style:TextStyle(fontSize: 16,fontWeight: FontWeight.w400) ,)
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconWrapper(),
                                      SizedBox(width: 14),
                                      DeleteIcon(),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('11:00 AM'),
                                      SizedBox(width: 10),
                                      Text('Dr:Eman Reda'),
                                      SizedBox(width: 10),
                                      Text('Hall 1'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 110,
                    // Define a fixed height or calculate it dynamically based on content if needed
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            decoration:  BoxDecoration(

                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,

                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text('9:00 AM'),
                                      SizedBox(width: 10),
                                      Text('Ui/ux',style:TextStyle(fontSize: 16,fontWeight: FontWeight.w400) ,)
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconWrapper(),
                                      SizedBox(width: 14),
                                      DeleteIcon(),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('11:00 AM'),
                                      SizedBox(width: 10),
                                      Text('Dr:Eman Reda'),
                                      SizedBox(width: 10),
                                      Text('Hall 1'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 110,
                    // Define a fixed height or calculate it dynamically based on content if needed
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            decoration:  BoxDecoration(

                              borderRadius: BorderRadius.circular(10),

                              gradient: const LinearGradient(
                                colors: [Color.fromARGB(255, 255, 255, 255), Color.fromARGB(125, 51, 65, 197)],
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text('9:00 AM'),
                                      SizedBox(width: 10),
                                      Text('Ui/ux',style:TextStyle(fontSize: 16,fontWeight: FontWeight.w400) ,)
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconWrapper(),
                                      SizedBox(width: 14),
                                      DeleteIcon(),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('11:00 AM'),
                                      SizedBox(width: 10),
                                      Text('Dr:Eman Reda'),
                                      SizedBox(width: 10),
                                      Text('Hall 1'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 110,
                    // Define a fixed height or calculate it dynamically based on content if needed
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            decoration:  BoxDecoration(

                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,

                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text('9:00 AM'),
                                      SizedBox(width: 10),
                                      Text('Ui/ux',style:TextStyle(fontSize: 16,fontWeight: FontWeight.w400) ,)
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconWrapper(),
                                      SizedBox(width: 14),
                                      DeleteIcon(),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('11:00 AM'),
                                      SizedBox(width: 10),
                                      Text('Dr:Eman Reda'),
                                      SizedBox(width: 10),
                                      Text('Hall 1'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 110,
                    // Define a fixed height or calculate it dynamically based on content if needed
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            decoration:  BoxDecoration(

                              borderRadius: BorderRadius.circular(10),

                              gradient: const LinearGradient(
                                colors: [Color.fromARGB(255, 255, 255, 255), Color.fromARGB(125, 51, 65, 197)],
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text('9:00 AM'),
                                      SizedBox(width: 10),
                                      Text('Ui/ux',style:TextStyle(fontSize: 16,fontWeight: FontWeight.w400) ,)
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconWrapper(),
                                      SizedBox(width: 14),
                                      DeleteIcon(),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('11:00 AM'),
                                      SizedBox(width: 10),
                                      Text('Dr:Eman Reda'),
                                      SizedBox(width: 10),
                                      Text('Hall 1'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 110,
                    // Define a fixed height or calculate it dynamically based on content if needed
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            decoration:  BoxDecoration(

                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,

                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text('9:00 AM'),
                                      SizedBox(width: 10),
                                      Text('Ui/ux',style:TextStyle(fontSize: 16,fontWeight: FontWeight.w400) ,)
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconWrapper(),
                                      SizedBox(width: 14),
                                      DeleteIcon(),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('11:00 AM'),
                                      SizedBox(width: 10),
                                      Text('Dr:Eman Reda'),
                                      SizedBox(width: 10),
                                      Text('Hall 1'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Repeat other containers similarly, removing Expanded and setting explicit heights
                ],
              ),
            ),
          ),
      ),
    );
  }

}
class DeleteIcon extends StatefulWidget {
  const DeleteIcon({super.key});

  @override
  _DeleteIconState createState() => _DeleteIconState();
}
class _DeleteIconState extends State<DeleteIcon> {
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
                child: TextButton
                  (
                  onPressed: () {

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

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.delete, color: Colors.red),
      onPressed: _showDeleteDialog,
      iconSize: 30, // Size of the trash icon
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

