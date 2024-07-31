import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduatedproject/moudules/Lectures_sections/Lec_sec.dart';

class MaterialScreen extends StatefulWidget {
  const MaterialScreen({super.key});

  @override
  State<MaterialScreen> createState() => _MaterialScreenState();
}

class _MaterialScreenState extends State<MaterialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8F1F7),
      appBar: AppBar(),
      body: SafeArea(

        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              color: const Color.fromARGB(255, 239, 249, 255),
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,

                  children:
                  [

                  const ButtonSwitcher(),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () => navigateToScreenOne(context),
                    child: Container(
                      height: 171,
                      width: 389,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(75, 177, 177, 1.0),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Stack(
                        clipBehavior: Clip.none, // Allows overflow
                        children: [
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 23),
                              Row(
                                children: [
                                  SizedBox(width: 24,),
                                  Text('Calculus', style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                    
                                      color: Colors.white)),
                                ],
                              ),
                            ],
                          ),
                    
                          Positioned(
                           bottom: 0,
                            right: 0,
                            height: 181,
                            width: 181,
                            // Adjust position to make SVG partly out
                            child: SvgPicture.asset(
                              'lib/assets/images/svgdc.svg',
                              width: double.infinity, // Specify width for proper sizing
                              height: double.infinity, // Specify height for proper sizing
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () => navigateToScreenOne(context),
                    child: Container(
                      height: 171,
                      width: 389,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(115, 130, 189, 1.0),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Stack(
                        clipBehavior: Clip.none, // Allows overflow
                        children: [
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 23),
                              Row(
                                children: [
                                  SizedBox(width: 24,),
                                  Text('Discrete Math', style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                    
                                      color: Colors.white)),
                                ],
                              ),
                            ],
                          ),
                    
                          Positioned(
                            bottom: 0,
                            right: 0,
                            height: 191,
                            width: 181,
                            // Adjust position to make SVG partly out
                            child: SvgPicture.asset(
                              'lib/assets/images/seco.svg',
                              width: double.infinity, // Specify width for proper sizing
                              height: double.infinity, // Specify height for proper sizing
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                  onTap: () => navigateToScreenOne(context),
    child: Container(
    height: 171,
    width: 389,
    decoration: BoxDecoration(
    color: const Color.fromRGBO(0, 122, 255, 1.0),
    borderRadius: BorderRadius.circular(8),
    ),
    child: Stack(
    clipBehavior: Clip.none,
    children: [
    const Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    SizedBox(height: 23),
    Row(
    children: [
    SizedBox(width: 24),
    Text('Discrete Math', style: TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 18,
    color: Colors.white)),
    ],
    ),
    ],
    ),
    Positioned(
    bottom: 0,
    right: 0,
    height: 191,
    width: 181,
    child: SvgPicture.asset(
    'lib/assets/images/seco.svg',
    width: double.infinity,
    height: double.infinity,
    ),
    ),
    ],
    ),
    ),
          ),


        ]),
      ),
    ),
      ),
    ),
    );
  }

}




void navigateToScreenOne(BuildContext context) {
  // Navigate to ScreenOne
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => const LecSecScreen(),
  ));
}

class ButtonSwitcher extends StatefulWidget {
  const ButtonSwitcher({super.key});
  @override
  _ButtonSwitcherState createState() => _ButtonSwitcherState();
}

class _ButtonSwitcherState extends State<ButtonSwitcher> {
  int _activeButton = 0; // 0: none, 1: first button, 2: second button, 3: third button

  void _updateActiveButton(int buttonNumber) {
    setState(() {
      _activeButton = buttonNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: _activeButton == 1 ? const Color.fromRGBO(0, 122, 255, 1.0) : const Color.fromRGBO(148, 146, 146, 0.0),
          ),
          onPressed: () => _updateActiveButton(1),
          child: Text(
            'All',
            style: TextStyle(color: _activeButton == 1 ? Colors.white : Colors.black),
          ),
        ),
        const SizedBox(width: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: _activeButton == 2 ? const Color.fromRGBO(0, 122, 255, 1.0) : const Color.fromRGBO(148, 146, 146, 0.0),
          ),
          onPressed: () => _updateActiveButton(2),
          child: Text(
            'Button 2',
            style: TextStyle(color: _activeButton == 2 ? Colors.white : Colors.black),
          ),
        ),
        const SizedBox(width: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: _activeButton == 3 ? const Color.fromRGBO(0, 122, 255, 1.0) : const Color.fromRGBO(148, 146, 146, 0.0),
          ),
          onPressed: () => _updateActiveButton(3),
          child: Text(
            'Button 3',
            style: TextStyle(color: _activeButton == 3 ? Colors.white : Colors.black),
          ),
        ),
      ],
    );
  }
}
