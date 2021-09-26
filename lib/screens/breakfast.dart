import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import 'RecipeDetails.dart';

class BreakFast extends StatefulWidget {
  const BreakFast({Key? key}) : super(key: key);

  @override
  _BreakFastState createState() => _BreakFastState();
}

class _BreakFastState extends State<BreakFast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,elevation: 0,
        title: Text('Breakfast',
          style: GoogleFonts.roboto(
          color: Colors.deepOrange
        ),),
        leading: InkWell(
            onTap: ()=>Navigator.of(context).pop(),
            child: Icon(Icons.chevron_left,color: Colors.deepOrange,size:30,)),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        color: Colors.orange.shade100,
        child: SingleChildScrollView(
          child: Column(
            children: [
              RecipeCards(),
              RecipeCards(),
              RecipeCards(),
            ],
          ),
        ),
      ),
    );
  }
}

class RecipeCards extends StatelessWidget {
  const RecipeCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RecipeDetails()),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white
        ),
        child:Column(
          children: [
            Container(alignment:Alignment.centerLeft,
                margin:EdgeInsets.symmetric(vertical: 20,horizontal: 15),
                child: Text('Breakfast',
                  style: GoogleFonts.roboto(color: Colors.deepOrange,
                  fontSize: 20,fontWeight: FontWeight.w300
                  ),

                )),
            Image.network('https://images.unsplash.com/photo-1493770348161-369560ae357d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YnJlYWtmYXN0fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80'),

            Container(
              margin:EdgeInsets.symmetric(vertical: 10  ,horizontal: 15),
              child: ReadMoreText(
                'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                style: GoogleFonts.roboto(color: Colors.black),
                trimLines: 2,
                colorClickableText: Colors.deepOrange,
                trimMode: TrimMode.Line,
                trimCollapsedText: '...Show more',
                trimExpandedText: ' show less',
              ),
            ),

          ],
        ) ,
      ),
    );
  }
}
