import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const Image(
            image: AssetImage('lib/assets/images/Subtract.png'),

          ),
          Expanded(

              child:Column(

                children: [
                  SvgPicture.asset('lib/assets/images/logo.svg',height:41,width: 125, ),
                  const SizedBox(height: 20,),
                  const Text('application built to help you deal with  ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                  const SizedBox(height: 30,),
                  Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                    const SizedBox(width: 30,),SvgPicture.asset('lib/assets/images/Group 360.svg'),
                    const SizedBox(width: 30,),
                    Stack(
                      children: [
                        SvgPicture.asset('lib/assets/images/Group 361.svg'),
                        Positioned(
                          top: 30,
                          left: 31,
                          child:SvgPicture.asset('lib/assets/images/Group.svg'),
                        )

                      ],
                    ),
                    const SizedBox(width: 30,),SvgPicture.asset('lib/assets/images/Group 362.svg'),
                    const SizedBox(width: 30,),
                  ],)),

                ],
              ),
          ),
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),  // Reduces height by adding vertical padding
                  child: SvgPicture.asset(
                    'lib/assets/images/Subtract.svg',
                    fit: BoxFit.fill,
                    height: double.infinity,
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: buildBottomRows(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> buildBottomRows() {
    return [

      buildCenterText('Our Team'),
      const SizedBox(height: 10,),

      buildIconRow(),
      const SizedBox(height: 10),
      buildIconRow1(),
      const SizedBox(height: 10),
      buildIconRow2(),
      const SizedBox(height: 10),
      buildIconRow3(),
      const SizedBox(height: 20),
    ];
  }

  Widget buildCenterText(String text) => Center(child: Text(text, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white)));

  Widget buildIconRow() => Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SvgPicture.asset('lib/assets/images/Group 371.svg'),
      const SizedBox(width: 70),
      SvgPicture.asset('lib/assets/images/Group 372.svg'),
    ],
  );

  Widget buildIconRow1() => Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Image.asset('lib/assets/images/Group 373.png'),
      const SizedBox(width: 19),
      Image.asset('lib/assets/images/Group 374.png'),
    ],
  );

  Widget buildIconRow2() => Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Image.asset('lib/assets/images/Group 375.png'),
      const SizedBox(width: 52),
      Image.asset('lib/assets/images/Group 376.png'),
    ],
  );

  Widget buildIconRow3() => Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Image.asset('lib/assets/images/Group 378.png'),
      const SizedBox(width: 49),
      Image.asset('lib/assets/images/Group 379.png'),
    ],
  );


}
