import 'package:flutter/material.dart';

class MenuCard extends StatefulWidget {
  final Color colorname;
  final String Name;

  MenuCard({required this.Name, required this.colorname});

  @override
  _MenuCardState createState() => _MenuCardState(Name: Name,colorname: colorname);
}

class _MenuCardState extends State<MenuCard> {
  late final Color colorname;
  late final String Name;

  _MenuCardState({required this.Name, required this.colorname});
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
            color: Color(0xff00B7CC),
            fontWeight: FontWeight.w400,
            fontSize: 18),
      ),
    );
  }
}
