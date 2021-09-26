import 'package:flutter/material.dart';
import 'package:mamadokitchen/Services/APICALLS.dart';
import 'package:mamadokitchen/models/recepies_model.dart';

class GetRecpiesAPI with ChangeNotifier {
  GetAllRecepiesModel? model;

  getRecepies() async {
    model = await WebServices().getRecpies();
    notifyListeners();
  }
}
