import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/bga.jpg',),fit: BoxFit.cover

          ),
        ),
        child: Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: Container(
color: Colors.transparent,
                padding: EdgeInsets.all(10),
                child: SingleChildScrollView(
                    child: RichText(
                      text: TextSpan(
                          text: 'Maa’s Kitchen, ',
                          style: TextStyle(
                              color: Colors.pinkAccent,
                              fontSize: 26,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(text: 'the newly published app by Suky Mamado, has such a beautiful app, website, Facebook & Instagram that if it were a fabric, I’d certainly wear it.\n\n',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                recognizer:  TapGestureRecognizer()
                                  ..onTap = () {
                                    // open desired screen
                                  }
                            ),
                            TextSpan(
                                text: 'Published by ',
                                style: TextStyle(color: Colors.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500)
                            ),
                            TextSpan(
                                text: 'Bloomsbury',
                                style: TextStyle(
                                    color: Colors.pinkAccent,
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                   ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // open desired screen
                                  }
                            ),
                            TextSpan(
                                text: ' and subtitled ‘proudly inauthentic recipes from a lovely mother’s  kitchen\'. It is evocative and enticing.\n\n',
                                style: TextStyle(color: Colors.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500)
                            ),
                            TextSpan(
                              text: 'Our Mother was born in Zanzibar to Muslim parents and grew up in Zanzibar and then moved to Tanzania and Mombasa. In her cooking, she has taken traditional and regional home cooking which she transposed to her family where local availability of ingredients influence a recipe. She termed it loosely as',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: ' ‘Mamado Kitchen’.\n\n',
                              style: TextStyle(
                                color: Colors.pinkAccent,
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: 'Maa (which means Mother in Kishwali) spent her early years in Zanzibar & Kenya.\n\n',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: 'Our Mother have taught us to cook fantastic recipes which she has passed along to her daughters, daughters in law and grand children to follow. ',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: '\n\nThe family was quite large and during her childhood, there were often up to twenty-five people in the house at once. That is a lot of mouths to feed and all the women and girls had to help. Recipes were passed along the generations through experience rather than written down.',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: '\n\nWith',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: '\ \'Maa\'s kitchen\'',
                              style: TextStyle(
                                color: Colors.pinkAccent,
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: ', we aim to retrace and keep a record of all those recipes for the generations to come. So that the memory of our Maa stays with our children, grand children and more in the community.',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: 'We Miss you our Lovely Maa and pray we all follow your foot steps of a such a lovely and caring Mother to all.',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ]
                      ),
                    )
                )
            )),
      ),
    );
  }
}
