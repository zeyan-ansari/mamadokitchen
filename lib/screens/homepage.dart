import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mamadokitchen/providers/get_recepies_provider.dart';
import 'package:provider/provider.dart';

import '../Constant.dart';
import 'breakfast.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: SafeArea(
        child: Drawer(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.orange.shade100),
                  child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        'assets/fork.png',
                        scale: 8,
                        color: Colors.deepOrange,
                      )),
                ),
                MenuCard(Name: 'Home', colorname: Colors.orange.shade100),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BreakFast()),
                      );
                    },
                    child:
                        MenuCard(Name: 'Breakfast', colorname: Colors.white)),
                MenuCard(Name: 'Paneer', colorname: Colors.orange.shade100),
                MenuCard(Name: 'Curry', colorname: Colors.white),
                MenuCard(Name: 'Snacks', colorname: Colors.orange.shade100),
                MenuCard(Name: 'Sandwich', colorname: Colors.white),
                MenuCard(Name: 'Sweets', colorname: Colors.orange.shade100),
                MenuCard(Name: 'Rice', colorname: Colors.white),
                MenuCard(Name: 'Idli', colorname: Colors.orange.shade100),
                MenuCard(Name: 'Dosa', colorname: Colors.white),
                MenuCard(Name: 'Eggless', colorname: Colors.orange.shade100),
                MenuCard(Name: 'Dal', colorname: Colors.white),
                MenuCard(Name: 'Beverages', colorname: Colors.orange.shade100),
                MenuCard(Name: 'Starters', colorname: Colors.white),
                MenuCard(Name: 'Chaat', colorname: Colors.orange.shade100),
                MenuCard(Name: 'Dessert', colorname: Colors.white),
                MenuCard(
                    Name: 'International Recipes',
                    colorname: Colors.orange.shade100),
                MenuCard(Name: 'Soup', colorname: Colors.white),
                MenuCard(Name: 'Bakery', colorname: Colors.orange.shade100),
                MenuCard(Name: 'Paratha', colorname: Colors.white),
              ],
            ),
          ),
        ),
      ),
      key: _key,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 250.0,
                  color: Color(getColorHexFromStr('#fff5ea')),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 35.0, 15.0, 10.0),
                      child: Material(
                        elevation: 1,
                        borderRadius: BorderRadius.circular(25.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: InkWell(
                                  onTap: () => _key.currentState!.openDrawer(),
                                  child: Image.asset(
                                    'assets/menu.png',
                                    scale: 28,
                                    color: Colors.deepOrange,
                                  )),
                              suffixIcon: Image.asset(
                                'assets/loupe.png',
                                scale: 28,
                                color: Colors.deepOrange,
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
                        padding: EdgeInsets.only(left: 10.0),
                        decoration: BoxDecoration(
                            border: Border(
                                left: BorderSide(
                                    color: Colors.orange,
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
                      height: 125.0,
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
            SizedBox(height: 15.0),
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
            Stack(
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
            )
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

class MenuCard extends StatelessWidget {
  final Color colorname;
  final String Name;

  MenuCard({required this.Name, required this.colorname});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      decoration: BoxDecoration(
        color: colorname,
      ),
      child: Text(
        Name,
        style: TextStyle(
            color: Colors.deepOrange,
            fontWeight: FontWeight.w500,
            fontSize: 18),
      ),
    );
  }
}
