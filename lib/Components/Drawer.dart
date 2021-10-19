import 'package:flutter/material.dart';
import 'package:mamadokitchen/screens/about%20us.dart';
import 'package:mamadokitchen/screens/breakfast.dart';
import 'package:mamadokitchen/screens/homepage.dart';

import '../Constant.dart';
import 'Drawer_MenuCard.dart';

class RecipeDrawer extends StatefulWidget {
  const RecipeDrawer({Key? key}) : super(key: key);

  @override
  _RecipeDrawerState createState() => _RecipeDrawerState();
}

class _RecipeDrawerState extends State<RecipeDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                // padding: EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25))),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Container(
                    //     child: Image.asset('assets/logo.png',scale: 7.5,color: Colors.red,)),
                  ],
                ),
              ),
              SizedBox(height: 5,),
              MenuCard(Name: 'Home', colorname: Color(getColorHexFromStr('#F18DB5')).withOpacity(0.3),
              menuImage: 'assets/house.png',
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BreakFast()),
                    );
                  },
                  child:
                  MenuCard(Name: 'Recipe', colorname: Colors.white, menuImage: 'assets/recipe-book.png',)),
              MenuCard(Name: 'Categories', colorname: Color(getColorHexFromStr('#F18DB5')).withOpacity(0.3),
                menuImage: 'assets/options.png',
              ),


              MenuCard(Name: 'Favourites', colorname: Colors.white,   menuImage: 'assets/favorite.png',),
              MenuCard(Name: 'Follow US', colorname: Color(getColorHexFromStr('#F18DB5')).withOpacity(0.3),   menuImage: 'assets/followers.png',),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutUs()),
                    );
                  },
                  child: MenuCard(Name: 'About Us', colorname: Colors.white,   menuImage: 'assets/information.png',)),
              MenuCard(Name: 'Contact us', colorname: Color(getColorHexFromStr('#F18DB5')).withOpacity(0.3),   menuImage: 'assets/contact.png',),

            ],
          ),
        ),
      ),
    );
  }
}
