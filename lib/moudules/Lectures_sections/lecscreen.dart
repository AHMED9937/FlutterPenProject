import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LecScreen extends StatefulWidget {
  const LecScreen({super.key});

  @override
  State<LecScreen> createState() => _LecScreenState();
}
class _LecScreenState extends State<LecScreen> {
  int _selectedIndex = 0; // Index to track the selected button

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(217, 217, 217, 0.5),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: SvgPicture.asset('lib/assets/images/Group 312111.svg')),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _toggleButton(0, 'Button 1'),
              _toggleButton(1, 'Button 2'),
            ],
          ),
          Expanded(
            child: _selectedWidget(),  // Display the selected widget
          ),
        ],
      ),
    );
  }

  Widget _toggleButton(int index, String text) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0), // Adds horizontal space between the buttons
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              _selectedIndex = index;
            });
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: _selectedIndex == index ? Colors.blue : Colors.grey,
            elevation: 0, // Flat appearance
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20), // Rounded corners
            ),
          ),
          child: Text(text, style: TextStyle(color: _selectedIndex == index ? Colors.white : Colors.black)),
        ),
      ),
    );
  }

  Widget _selectedWidget() {
    switch (_selectedIndex) {
      case 0:
        return lec_disc();  // Display this widget for the first button
      case 1:
        return lec_matrial();  // Display this widget for the first button
      default:
        return lec_disc();  // Display this widget for the first button
    }
  }
}


class LecScreen_2 extends StatefulWidget {
  const LecScreen_2({super.key});

  @override
  State<LecScreen_2> createState() => _LecScreen_2State();
}
class _LecScreen_2State extends State<LecScreen_2> {
  int _selectedIndex = 0; // Index to track the selected button

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(217, 217, 217, 0.5),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: SvgPicture.asset('lib/assets/images/Group 312111.svg')),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _toggleButton(0, 'Button 1'),
              _toggleButton(1, 'Button 2'),
            ],
          ),
          Expanded(
            child: _selectedWidget(),  // Display the selected widget
          ),
        ],
      ),
    );
  }

  Widget _toggleButton(int index, String text) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0), // Adds horizontal space between the buttons
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              _selectedIndex = index;
            });
          },
          style: ElevatedButton.styleFrom(

            foregroundColor: Colors.white, backgroundColor: _selectedIndex == index ? (index == 1||index == 0 ? const Color.fromRGBO(249, 174, 43, 1): Colors.blue): Colors.white,
            elevation: 0, // Flat appearance
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20), // Rounded corners
            ),
          ),
          child: Text(text, style: TextStyle(color: _selectedIndex == index ? Colors.white : Colors.black)),
        ),
      ),
    );
  }

  Widget _selectedWidget() {
    switch (_selectedIndex) {
      case 0:
        return lec_disc();  // Display this widget for the first button
      case 1:
        return sec_matrial();  // Display this widget for the first button
      default:
        return lec_disc();  // Display this widget for the first button
    }
  }
}

Widget lec_disc(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [

       Stack(
         clipBehavior: Clip.none,
          children:
            [
              SvgPicture.asset('lib/assets/images/Rectangle 68111.svg'),
              Positioned(
                  left: 8,  // Horizontal position from the left
                  top: 10,
                  child: SvgPicture.asset('lib/assets/images/asmaaaaa.svg')
              ),
              const Positioned(
                left: 69,  // Horizontal position from the left
                top: 22,   // Vertical position from the top
                child: Text('Asmaa awad'),
              ),
              Positioned(
                right: 16,  // Horizontal position from the left
                top: 16,   // Vertical position from the top
                child: SvgPicture.asset('lib/assets/images/Asmaacotor.svg')
              ),

           ],
         ),

      Stack(
        clipBehavior: Clip.none,
        children:
        [
          SvgPicture.asset('lib/assets/images/Rectangle 68111.svg'),
          const Positioned(
              right: 12,  // Horizontal position from the left
              top: 22,   // Vertical position from the top
              child: Text('+750 Students Enrolled'),
          ),

        ],
      ),

      Stack(
        clipBehavior: Clip.none,
        children:
        [
          SvgPicture.asset('lib/assets/images/Rectangle 68111.svg'),
          const Positioned(
            left: 10,  // Horizontal position from the left
            top: 23,   // Vertical position from the top
            child:Text('Lectures Number'),
          ),
          Positioned(
            right: 23,  // Horizontal position from the left
            top: 17,   // Vertical position from the top
            child:SvgPicture.asset('lib/assets/images/Bluec.svg'),
          ),

        ],
      ),

    ],
  );
}
Widget lec_matrial(){
  return SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
    const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Stack(
              clipBehavior: Clip.none,
              children:
              [


                Positioned(
                  top: 12,
                    left: 5,
                    child: SvgPicture.asset('lib/assets/images/Rectangle 766.svg'
                    )),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset('lib/assets/images/Rectangle lec.svg'),
                    const Text(
                        'Lecture 1',
                      style: TextStyle(
                          fontSize: 14,

                      ),
                    ),
                    const Text('55 Slide',
                      style: TextStyle(
                        fontSize: 10,

                      ),
                    ),

                  ],
                ),
                Positioned(
                  top: 9,
                  left: 47,
                    child: SvgPicture.asset('lib/assets/images/GroupLec.svg')
                ),


              ],
            ),
            Stack(
              clipBehavior: Clip.none,
              children:
              [


                Positioned(
                    top: 12,
                    left: 5,
                    child: SvgPicture.asset('lib/assets/images/Rectangle 766.svg'
                    )),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset('lib/assets/images/Rectangle lec.svg'),
                    const Text(
                      'Lecture 1',
                      style: TextStyle(
                        fontSize: 14,

                      ),
                    ),
                    const Text('55 Slide',
                      style: TextStyle(
                        fontSize: 10,

                      ),
                    ),

                  ],
                ),
                Positioned(
                    top: 9,
                    left: 47,
                    child: SvgPicture.asset('lib/assets/images/GroupLec.svg')
                ),


              ],
            ),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Stack(
              clipBehavior: Clip.none,
              children:
              [


                Positioned(
                    top: 12,
                    left: 5,
                    child: SvgPicture.asset('lib/assets/images/Rectangle 766.svg'
                    )),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset('lib/assets/images/Rectangle lec.svg'),
                    const Text(
                      'Lecture 1',
                      style: TextStyle(
                        fontSize: 14,

                      ),
                    ),
                    const Text('55 Slide',
                      style: TextStyle(
                        fontSize: 10,

                      ),
                    ),

                  ],
                ),
                Positioned(
                    top: 9,
                    left: 47,
                    child: SvgPicture.asset('lib/assets/images/GroupLec.svg')
                ),


              ],
            ),
            Stack(
              clipBehavior: Clip.none,
              children:
              [


                Positioned(
                    top: 12,
                    left: 5,
                    child: SvgPicture.asset('lib/assets/images/Rectangle 766.svg'
                    )),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset('lib/assets/images/Rectangle lec.svg'),
                    const Text(
                      'Lecture 1',
                      style: TextStyle(
                        fontSize: 14,

                      ),
                    ),
                    const Text('55 Slide',
                      style: TextStyle(
                        fontSize: 10,

                      ),
                    ),

                  ],
                ),
                Positioned(
                    top: 9,
                    left: 47,
                    child: SvgPicture.asset('lib/assets/images/GroupLec.svg')
                ),


              ],
            ),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Stack(
              clipBehavior: Clip.none,
              children:
              [


                Positioned(
                    top: 12,
                    left: 5,
                    child: SvgPicture.asset('lib/assets/images/Rectangle 766.svg'
                    )),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset('lib/assets/images/Rectangle lec.svg'),
                    const Text(
                      'Lecture 1',
                      style: TextStyle(
                        fontSize: 14,

                      ),
                    ),
                    const Text('55 Slide',
                      style: TextStyle(
                        fontSize: 10,

                      ),
                    ),

                  ],
                ),
                Positioned(
                    top: 9,
                    left: 47,
                    child: SvgPicture.asset('lib/assets/images/GroupLec.svg')
                ),


              ],
            ),
            Stack(
              clipBehavior: Clip.none,
              children:
              [


                Positioned(
                    top: 12,
                    left: 5,
                    child: SvgPicture.asset('lib/assets/images/Rectangle 766.svg'
                    )),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset('lib/assets/images/Rectangle lec.svg'),
                    const Text(
                      'Lecture 1',
                      style: TextStyle(
                        fontSize: 14,

                      ),
                    ),
                    const Text('55 Slide',
                      style: TextStyle(
                        fontSize: 10,

                      ),
                    ),

                  ],
                ),
                Positioned(
                    top: 9,
                    left: 47,
                    child: SvgPicture.asset('lib/assets/images/GroupLec.svg')
                ),


              ],
            ),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Stack(
              clipBehavior: Clip.none,
              children:
              [


                Positioned(
                    top: 12,
                    left: 5,
                    child: SvgPicture.asset('lib/assets/images/Rectangle 766.svg'
                    )),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset('lib/assets/images/Rectangle lec.svg'),
                    const Text(
                      'Lecture 1',
                      style: TextStyle(
                        fontSize: 14,

                      ),
                    ),
                    const Text('55 Slide',
                      style: TextStyle(
                        fontSize: 10,

                      ),
                    ),

                  ],
                ),
                Positioned(
                    top: 9,
                    left: 47,
                    child: SvgPicture.asset('lib/assets/images/GroupLec.svg')
                ),


              ],
            ),
            Stack(
              clipBehavior: Clip.none,
              children:
              [


                Positioned(
                    top: 12,
                    left: 5,
                    child: SvgPicture.asset('lib/assets/images/Rectangle 766.svg'
                    )),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset('lib/assets/images/Rectangle lec.svg'),
                    const Text(
                      'Lecture 1',
                      style: TextStyle(
                        fontSize: 14,

                      ),
                    ),
                    const Text('55 Slide',
                      style: TextStyle(
                        fontSize: 10,

                      ),
                    ),

                  ],
                ),
                Positioned(
                    top: 9,
                    left: 47,
                    child: SvgPicture.asset('lib/assets/images/GroupLec.svg')
                ),


              ],
            ),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Stack(
              clipBehavior: Clip.none,
              children:
              [


                Positioned(
                    top: 12,
                    left: 5,
                    child: SvgPicture.asset('lib/assets/images/Rectangle 766.svg'
                    )),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset('lib/assets/images/Rectangle lec.svg'),
                    const Text(
                      'Lecture 1',
                      style: TextStyle(
                        fontSize: 14,

                      ),
                    ),
                    const Text('55 Slide',
                      style: TextStyle(
                        fontSize: 10,

                      ),
                    ),

                  ],
                ),
                Positioned(
                    top: 9,
                    left: 47,
                    child: SvgPicture.asset('lib/assets/images/GroupLec.svg')
                ),


              ],
            ),
            Stack(
              clipBehavior: Clip.none,
              children:
              [


                Positioned(
                    top: 12,
                    left: 5,
                    child: SvgPicture.asset('lib/assets/images/Rectangle 766.svg'
                    )),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset('lib/assets/images/Rectangle lec.svg'),
                    const Text(
                      'Lecture 1',
                      style: TextStyle(
                        fontSize: 14,

                      ),
                    ),
                    const Text('55 Slide',
                      style: TextStyle(
                        fontSize: 10,

                      ),
                    ),

                  ],
                ),
                Positioned(
                    top: 9,
                    left: 47,
                    child: SvgPicture.asset('lib/assets/images/GroupLec.svg')
                ),


              ],
            ),

          ],
        ),



      ],
    ),
  );
}
Widget sec_matrial(){
  return SingleChildScrollView(
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
            children: [
              Image.asset('lib/assets/images/Rectangle 74.png'),
              const Column(children: [
                Text('data'),
                Text('data'),
                Text('data'),
      
      
              ]),
              const InteractiveSvgImage(
                myImage: 'lib/assets/images/Vectordownload.svg',
                Changeto: 'lib/assets/images/Property1Variant2.svg',
              ),
              const InteractiveSvgImage(
                  myImage: 'lib/assets/images/Group 385 circel.svg',
                  Changeto: 'lib/assets/images/Property2Variant2.svg',
              ),

      
            ],
          ),



        ],
      ),
    ),
  );
}
class InteractiveSvgImage extends StatefulWidget {
  final String myImage;
  final String Changeto;

  const InteractiveSvgImage({
    super.key,
    required this.myImage,
    required this.Changeto,
  });

  @override
  _InteractiveSvgImageState createState() => _InteractiveSvgImageState();
}

class _InteractiveSvgImageState extends State<InteractiveSvgImage> {
  late String currentImagePath;  // Declare without initializing

  @override
  void initState() {
    super.initState();
    currentImagePath = widget.myImage;  // Initialize here using widget property
  }
  void _toggleImage() {
    setState(() {
      if (currentImagePath == widget.myImage) {
        currentImagePath = widget.Changeto;
      } else {
        currentImagePath = widget.myImage;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleImage, // Update image path when image is tapped
      child: SvgPicture.asset(
        currentImagePath,
      ),
    );
  }
}

//Property2Variant2

