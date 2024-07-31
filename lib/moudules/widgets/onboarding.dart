import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoarding_card extends StatelessWidget {
 final String image,descripton,titlel,titlel1,icon_image;
 final Function OnPressed;
  const OnBoarding_card({
    super.key,
    required this.titlel1,
    required this.titlel,
    required this.image,
    required this.descripton,
    required this.OnPressed,
    required this.icon_image,

  });

 Widget image_Svg(context) {

     return SvgPicture.asset(
       image,
       width: 133.3,
       height: 45,

     );

 }
 @override
  Widget build(BuildContext context) {

    return  Expanded(
      child: Container(


      child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
      const SizedBox(height: 342,),
      SvgPicture.asset(
        image,
        width: 133.36,
        height: 45,

      ),
      const SizedBox(height: 54,),
      Column(
        children: [

          Center(
            child: Container(
              alignment: Alignment.center,
               width: 210,
              child:RichText(
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                text: const TextSpan(

                  // Default text style for all TextSpans if not overridden
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                    // Default color
                  ),
                  children: <TextSpan>[
                    TextSpan(text: 'All what you need to ',),
                    TextSpan(
                      text: 'Understand',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 47, 63, 255), // Example of changing color
                      ),
                    ),
                    TextSpan(text: ' and '),
                    TextSpan(
                      text: 'Improve',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 47, 63, 255), // Example of changing color
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),

        ],


      ),
      const SizedBox(height: 220,),
      InkWell(
        onTap: () => OnPressed(),
        child: SvgPicture.asset(
          icon_image,
        ),
      ),


            ],


      ),


      ),
    );



  }

}
class OnBoarding_card2 extends StatelessWidget {
  final String image,descripton,titlel,icon_image;
  final Function OnPressed;
  const OnBoarding_card2({
    super.key,
    required this.titlel,
    required this.image,
    required this.descripton,
    required this.OnPressed,
    required this.icon_image,

  });


  @override
  Widget build(BuildContext context) {

    return  SizedBox(

      height: MediaQuery.sizeOf(context).height*0.8,
      width: MediaQuery.sizeOf(context).width,

      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40,),
          Column(
            children: [
              Text(
                textAlign: TextAlign.center,
                titlel,
                style: const TextStyle(
                  color:Color.fromARGB(255, 47, 63, 255),
                  fontSize:25 ,
                  fontWeight:FontWeight.bold ,

                ),
              ),
              Padding(

                padding:  const EdgeInsets.all(10.0),
                child: SizedBox(

                  width: 350,
                  child: Text(
                    textAlign: TextAlign.center,
                    descripton,
                    maxLines: 3,

                    style: const TextStyle(

                      fontSize:18 ,
                      fontWeight:FontWeight.w500 ,

                    ),
                  ),
                ),

              ),

            ],


          ),
          Image.asset(
            image,
            height: 388,
            width: 355.4,
          ),
          InkWell(
            onTap: () => OnPressed(),
            child: SvgPicture.asset(
              icon_image,
            ),
          )
          ,


        ],


      ),


    );



  }

}
class OnBoarding_card3 extends StatelessWidget {
  final String image,descripton,titlel,icon_image;
  final Function OnPressed;
  const OnBoarding_card3({
    super.key,
    required this.titlel,
    required this.image,
    required this.descripton,
    required this.OnPressed,
    required this.icon_image,

  });


  @override
  Widget build(BuildContext context) {

    return  SizedBox(

      height: MediaQuery.sizeOf(context).height*0.8,
      width: MediaQuery.sizeOf(context).width,

      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40,),
          Column(
            children: [
              Text(
                textAlign: TextAlign.center,
                titlel,
                style: const TextStyle(
                  color:Color.fromARGB(255, 47, 63, 255),
                  fontSize:25 ,
                  fontWeight:FontWeight.bold ,

                ),
              ),
              Padding(

                padding:  const EdgeInsets.all(10.0),
                child: SizedBox(

                  width: 350,
                  child: Text(
                    textAlign: TextAlign.center,
                    descripton,
                    maxLines: 3,

                    style: const TextStyle(

                      fontSize:18 ,
                      fontWeight:FontWeight.w500 ,

                    ),
                  ),
                ),

              ),

            ],


          ),
          Image.asset(
            image,
            height: 388,
            width: 355.4,
          ),
          InkWell (
            onTap: () => OnPressed(),
            child: SvgPicture.asset(
              icon_image,
            ),
          )
          ,


        ],


      ),


    );



  }


}

