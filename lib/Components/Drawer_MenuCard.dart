import 'package:flutter/material.dart';

class MenuCard extends StatefulWidget {
  final Color colorname;
  final String Name;
  final String menuImage;

  MenuCard({required this.Name, required this.colorname,required this.menuImage});

  @override
  _MenuCardState createState() => _MenuCardState(Name: Name,colorname: colorname,menuImage: menuImage);
}

class _MenuCardState extends State<MenuCard> {
  late final Color colorname;
  late final String Name;
  late final String menuImage;

  _MenuCardState({required this.Name, required this.colorname,required this.menuImage});
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Row(
                children: [
                  Container(
                    height:30,
                    width:30,
                      margin: EdgeInsets.symmetric(horizontal: 12),
                      child: Image.asset(menuImage)),
                  SizedBox(width: 10,),
                  Text(
                    Name,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 19),
                  ),
                ],
              ),
              // Container(
              //     margin: EdgeInsets.symmetric(horizontal: 12),
              //     child: Icon(Icons.chevron_right_outlined,color: Colors.black,size: 20,))
            ],
          ),

        ),
        SizedBox(height: 10,)
        // Divider(color: Colors.grey,indent: 35,endIndent: 35,)
      ],
    );
  }
}
