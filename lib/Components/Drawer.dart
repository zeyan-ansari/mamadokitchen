import 'package:flutter/material.dart';
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
                height: 120,
                padding: EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                decoration: BoxDecoration(color:Color(getColorHexFromStr('#F18DB5')).withOpacity(0.3),),
                child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      'assets/recipe-book.png',
                      scale: 7.8,
                        color: Color(0xff00B7CC),
                    )),
              ),
              MenuCard(Name: 'Home', colorname: Color(getColorHexFromStr('#F18DB5')).withOpacity(0.3),),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BreakFast()),
                    );
                  },
                  child:
                  MenuCard(Name: 'Breakfast', colorname: Colors.white)),
              MenuCard(Name: 'Paneer', colorname: Color(getColorHexFromStr('#F18DB5')).withOpacity(0.3),),
              MenuCard(Name: 'Curry', colorname: Colors.white),
              MenuCard(Name: 'Snacks', colorname: Color(getColorHexFromStr('#F18DB5')).withOpacity(0.3),),
              MenuCard(Name: 'Sandwich', colorname: Colors.white),
              MenuCard(Name: 'Sweets', colorname: Color(getColorHexFromStr('#F18DB5')).withOpacity(0.3),),
              MenuCard(Name: 'Rice', colorname: Colors.white),
              MenuCard(Name: 'Idli', colorname: Color(getColorHexFromStr('#F18DB5')).withOpacity(0.3),),
              MenuCard(Name: 'Dosa', colorname: Colors.white),
              MenuCard(Name: 'Eggless', colorname: Color(getColorHexFromStr('#F18DB5')).withOpacity(0.3),),
              MenuCard(Name: 'Dal', colorname: Colors.white),
              MenuCard(Name: 'Beverages', colorname:Color(getColorHexFromStr('#F18DB5')).withOpacity(0.3),),
              MenuCard(Name: 'Starters', colorname: Colors.white),
              MenuCard(Name: 'Chaat', colorname: Color(getColorHexFromStr('#F18DB5')).withOpacity(0.3),),
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
    );
  }
}
