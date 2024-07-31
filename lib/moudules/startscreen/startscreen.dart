import 'package:flutter/material.dart';
import 'package:graduatedproject/moudules/login/loginscreen.dart';
import 'package:graduatedproject/moudules/widgets/onboarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class startscreen extends StatefulWidget {
  const startscreen({super.key});


  @override
  State<startscreen> createState() => _startscreenState();
}

class _startscreenState extends State<startscreen> {
  static final PageController _pageController=PageController(initialPage: 0);
final List<Widget>_onboardingPages=[
 OnBoarding_card
   (

   titlel1: 'Understand',
   icon_image: 'lib/assets/images/Group 176.svg',
     image: 'lib/assets/images/logo.svg',
     titlel: 'Improve',
     descripton: 'All what You Need To Understand And Improve ',
     OnPressed: (){
       _pageController.animateToPage(1, duration: Durations.medium4, curve: Curves.linear,);
     },
  ),
  OnBoarding_card2(
    descripton: 'Have all materials you need one place',
     titlel: 'Understand',
    icon_image: 'lib/assets/images/Group 176.svg',
    image:'lib/assets/images/Onboarding2.png' ,
    OnPressed: (){
      _pageController.animateToPage(2, duration: Durations.medium4, curve: Curves.linear,);
    },

  ),
  OnBoarding_card3(
    descripton: 'Get a statics of your results to know your weakness points and improve it ',
    titlel: 'Improve',
    icon_image: 'lib/assets/images/Group 9.svg',
    image:'lib/assets/images/bro.png' ,
    OnPressed: (){

      },

  ),

];

  @override
  Widget build(BuildContext context) {
    List<Widget>onboardingPages=[
      OnBoarding_card
        (

        titlel1: 'Understand',
        icon_image: 'lib/assets/images/Group 176.svg',
        image: 'lib/assets/images/logo.svg',
        titlel: 'Improve',
        descripton: 'All what You Need To Understand And Improve ',
        OnPressed: (){
          _pageController.animateToPage(1, duration: Durations.medium4, curve: Curves.linear,);
        },
      ),
      OnBoarding_card2(
        descripton: 'Have all materials you need one place',
        titlel: 'Understand',
        icon_image: 'lib/assets/images/Group 176.svg',
        image:'lib/assets/images/Onboarding2.png' ,
        OnPressed: (){
          _pageController.animateToPage(2, duration: Durations.medium4, curve: Curves.linear,);
        },

      ),
      OnBoarding_card3(
        descripton: 'Get a statics of your results to know your weakness points and improve it ',
        titlel: 'Improve',
        icon_image: 'lib/assets/images/Group 9.svg',
        image:'lib/assets/images/bro.png' ,
        OnPressed: ()async {
          // Navigate to the login screen
          await Navigator.push(
            context,
            MaterialPageRoute(

                builder: (context) => const loginscreen(),


            ),
          );

          // After the login screen is dismissed, navigate back to the previous screen
          // This will be executed when the login screen is popped
          // (i.e., when the user presses the back button or programmatically dismisses the login screen)

        },

      ),

    ];


    return  Scaffold(

      body: Expanded(
        child: Column(
        mainAxisSize: MainAxisSize.max,
          children: [

            Expanded(
                child: PageView(
              controller:_pageController ,
          children: onboardingPages,


            )),
            SmoothPageIndicator(

                controller: _pageController,
                count: onboardingPages.length,
              effect: const ExpandingDotsEffect(
                activeDotColor:Color.fromARGB(255, 47, 63, 255) ,
                dotColor:Color.fromARGB(255, 227, 231, 237) ,
              dotWidth: 5,
                dotHeight:7,
              ),

               onDotClicked:(index){
                  _pageController.animateToPage(
                    index,
                    duration: Durations.medium4,
                    curve: Curves.linear,
                  );

              } ,
            ),
            const SizedBox(height: 20,)
          ],
        ),
      ),

    );
  }
}
