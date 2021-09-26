import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipeDetails extends StatefulWidget {
  const RecipeDetails({Key? key}) : super(key: key);

  @override
  _RecipeDetailsState createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,elevation: 0,
        title: Text('Recipe',
          style: GoogleFonts.roboto(
              color: Colors.deepOrange
          ),),
        leading: InkWell(
            onTap: ()=>Navigator.of(context).pop(),
            child: Icon(Icons.chevron_left,color: Colors.deepOrange,size:30,)),
        centerTitle: true,
      ),
      body: Container(padding: EdgeInsets.all(15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(margin: EdgeInsets.only(bottom: 15),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Breakfast',
                    style: GoogleFonts.roboto(color: Colors.deepOrange,
                        fontSize: 20,fontWeight: FontWeight.w300
                    ),


                  ),
                  Text('Delicious Breakfast in just 30 Minutes',
                    style: GoogleFonts.roboto(color: Colors.black,
                        fontSize: 14,fontWeight: FontWeight.w400
                    ),


                  ),
                ],
              ),
            ),
            Image.network('https://images.unsplash.com/photo-1493770348161-369560ae357d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YnJlYWtmYXN0fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80'),
          SizedBox(height: 10,),
            Container(margin: EdgeInsets.symmetric(vertical: 5),

            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(radius: 8,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('assets/user.png',),
                    ),
                    SizedBox(width: 10,),
                    Text('Author',
                      style: GoogleFonts.roboto(color: Colors.deepOrange,
                          fontSize: 18,fontWeight: FontWeight.w300
                      ),


                    ),
                  ],
                ),
                Text('Zain',
                  style: GoogleFonts.roboto(color: Colors.black,
                      fontSize: 18,fontWeight: FontWeight.w300
                  ),


                ),
              ],
            ),
          ),
          Container(margin: EdgeInsets.symmetric(vertical: 5),

            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(radius: 8,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('assets/food-tray.png',),
                    ),
                    SizedBox(width: 10,),
                    Text('Cuisine',
                      style: GoogleFonts.roboto(color: Colors.deepOrange,
                          fontSize: 18,fontWeight: FontWeight.w300
                      ),


                    ),
                  ],
                ),
                Text('Chinese',
                  style: GoogleFonts.roboto(color: Colors.black,
                      fontSize: 18,fontWeight: FontWeight.w300
                  ),


                ),
              ],
            ),
          ),
          Container(margin: EdgeInsets.symmetric(vertical: 5),

            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(radius: 8,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('assets/grid.png',),
                    ),
                    SizedBox(width: 10,),
                    Text('Courses',
                      style: GoogleFonts.roboto(color: Colors.deepOrange,
                          fontSize: 18,fontWeight: FontWeight.w300
                      ),


                    ),
                  ],
                ),
                Text('Indian',
                  style: GoogleFonts.roboto(color: Colors.black,
                      fontSize: 18,fontWeight: FontWeight.w300
                  ),


                ),
              ],
            ),
          ),
            Divider(color: Colors.deepOrange,),
            Container(margin: EdgeInsets.symmetric(vertical: 5),

              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Difficulty',
                    style: GoogleFonts.roboto(color: Colors.deepOrange,
                        fontSize: 18,fontWeight: FontWeight.w300
                    ),


                  ),
                  Text('Intermediate',
                    style: GoogleFonts.roboto(color: Colors.black,
                        fontSize: 18,fontWeight: FontWeight.w300
                    ),


                  ),
                ],
              ),
            ),
            Divider(color: Colors.deepOrange,),
            Container(margin: EdgeInsets.symmetric(vertical: 5),

              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(radius: 8,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/clock.png',),
                      ),
                      SizedBox(width: 10,),
                      Text('Prep Time',
                        style: GoogleFonts.roboto(color: Colors.deepOrange,
                            fontSize: 18,fontWeight: FontWeight.w300
                        ),


                      ),
                    ],
                  ),
                  Text('30 min',
                    style: GoogleFonts.roboto(color: Colors.black,
                        fontSize: 18,fontWeight: FontWeight.w300
                    ),


                  ),
                ],
              ),
            ),
            Container(margin: EdgeInsets.symmetric(vertical: 5),

              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(radius: 8,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/clock(1).png',),
                      ),
                      SizedBox(width: 10,),
                      Text('Cook Time',
                        style: GoogleFonts.roboto(color: Colors.deepOrange,
                            fontSize: 18,fontWeight: FontWeight.w300
                        ),


                      ),
                    ],
                  ),
                  Text('30 min',
                    style: GoogleFonts.roboto(color: Colors.black,
                        fontSize: 18,fontWeight: FontWeight.w300
                    ),


                  ),
                ],
              ),
            ),
          ],
        ),

      ),

    );
  }
}
