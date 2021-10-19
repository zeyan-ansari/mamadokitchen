import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mamadokitchen/Components/Drawer.dart';
import 'package:mamadokitchen/providers/get_recepies_provider.dart';
import 'package:provider/provider.dart';

import '../Constant.dart';
import 'breakfast.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
  List<int> list = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: RecipeDrawer(),
      key: _key,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 250.0,
                  decoration: BoxDecoration(

                    image: DecorationImage(image: AssetImage('assets/bg4.jpg',),fit: BoxFit.cover

                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 35.0, 15.0, 10.0),
                      child: Material(
                        elevation: 0,
                        borderRadius: BorderRadius.circular(15.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: InkWell(
                                  onTap: () => _key.currentState!.openDrawer(),
                                  child: Image.asset(
                                    'assets/menu.png',
                                    scale: 28,
                                    color: Color(0xff00B7CC)
                                  )),
                              suffixIcon: Image.asset(
                                'assets/loupe.png',
                                scale: 28,
                                color: Color(0xff00B7CC),
                              ),
                              contentPadding:
                                  EdgeInsets.only(left: 15.0, top: 15.0),
                              hintText: 'Search for recipes and channels',
                              hintStyle: TextStyle(color: Colors.grey)),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Container(
                        margin: EdgeInsets.only(left: 10.0),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),

                            border: Border(
                                left: BorderSide(
                                    color: Color(0xff00B7CC),
                                    style: BorderStyle.solid,
                                    width: 3.0))),
                        child: Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('POPULAR RECIPES',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontFamily: 'Timesroman',
                                        fontWeight: FontWeight.bold)),
                                Text('THIS WEEK',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontFamily: 'Timesroman',
                                        fontWeight: FontWeight.bold)),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 15.0),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15.0, left: 15.0),
                      height: 90.0,
                      child: Consumer<GetRecpiesAPI>(
                          builder: (context, ra, snapshot) {
                        return ra.model != null &&
                                ra.model?.data != null &&
                                ra.model!.data!.isNotEmpty
                            ? ListView.builder(
                                shrinkWrap: true,
                                itemCount: ra.model?.data!.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, int index) {
                                  var b1 = ra.model!.data![index].recipeMetas;
                                  return Row(
                                    children: [
                                      _foodCard(),
                                      SizedBox(width: 10.0),
                                      _foodCard(),
                                      SizedBox(width: 10.0),
                                      _foodCard(),
                                      SizedBox(width: 10.0),
                                    ],
                                  );
                                },
                              )
                            : Container();
                      }),
                    )
                  ],
                )
              ],
            ),
            // SizedBox(height: 10.0),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'September 7',
                style: TextStyle(
                    fontFamily: 'Quicksand',
                    color: Colors.grey,
                    fontSize: 14.0),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'TODAY',
                style: TextStyle(
                    fontFamily: 'Timesroman',
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    // aspectRatio: 2/5,
                    disableCenter: true,
                    autoPlay: true
                  ),
                  items: list
                      .map((item) => Stack(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 12.0, right: 12.0),
                        child: Container(
                          height: 275.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                  image: AssetImage('assets/breakfast.jpg'),
                                  fit: BoxFit.cover)),
                          child: Container(
                            decoration:
                            BoxDecoration(color: Colors.white.withOpacity(0.0)),
                          ),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 150.0, left: 60.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'BEST OF',
                                style: TextStyle(
                                    fontFamily: 'Timesroman',
                                    fontSize: 25.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'THE DAY',
                                style: TextStyle(
                                    fontFamily: 'Timesroman',
                                    fontSize: 25.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10.0),
                              Container(
                                height: 3.0,
                                width: 50.0,
                                color: Colors.orange,
                              )
                            ],
                          ))
                    ],
                  ))
                      .toList(),
                )),
            SizedBox(height: 25.0),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 15.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'NEW RECIPES',
                    style: TextStyle(
                        fontFamily: 'Timesroman',
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0),
                  ),
                  Container(margin: EdgeInsets.symmetric(horizontal: 15),

                      decoration: BoxDecoration(
                          color: Color(0xff00B7CC).withOpacity(0.5),
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Icon(Icons.chevron_right_outlined,size: 35,color: Colors.white,))
                ],
              ),
            ),
            SizedBox(height: 5.0),
Container(
  height: 150,width: MediaQuery.of(context).size.width*0.99,
  child:   ListView.builder(

      scrollDirection: Axis.horizontal,

  itemCount: 5,

  itemBuilder: (BuildContext context,int index){

    return Container(height: 25,
margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
borderRadius: BorderRadius.circular(15),
        color: Colors.cyanAccent

      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset('assets/bg3.jpg')),

    );

  }

  ),
)
          ],
        ),
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        decoration: BoxDecoration(
          color: Color(0xff00B7CC).withOpacity(0.5),
          borderRadius: BorderRadius.circular(25)
        ),
        child: Row(mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 5,),
            Text('Add Recipe',style: TextStyle(
                fontSize: 12.0,
                fontFamily: 'Timesroman',
                fontWeight: FontWeight.bold)),
            SizedBox(width: 10,),
            CircleAvatar(radius: 15,
                backgroundColor: Colors.white,
                child: Icon(Icons.add,color: Colors.black,size: 20,))
          ],
        ),
      ),
    );
  }

  Widget _foodCard() {
    return Container(
      height: 125.0,
      width: 250.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
      ),
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image:
                    DecorationImage(image: AssetImage('assets/balanced.jpg'))),
            height: 125.0,
            width: 100.0,
          ),
          SizedBox(width: 20.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Grilled Chicken',
                style: TextStyle(fontFamily: 'Quicksand'),
              ),
              Text(
                'with Fruit Salad',
                style: TextStyle(fontFamily: 'Quicksand'),
              ),
              SizedBox(height: 10.0),
              Container(
                height: 2.0,
                width: 75.0,
                color: Colors.orange,
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 25.0,
                    width: 25.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.5),
                        image: DecorationImage(
                            image: AssetImage('assets/chris.jpg'))),
                  ),
                  SizedBox(width: 10.0),
                  Text('James Oliver',
                      style: TextStyle(fontFamily: 'Quicksand'))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}



