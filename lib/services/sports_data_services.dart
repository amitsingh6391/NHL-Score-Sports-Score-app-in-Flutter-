import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:sports/models/sports_data.dart';
import 'package:sports/utils/constants.dart';
import 'package:sports/utils/helpers.dart';

class SportServices extends ChangeNotifier {
  bool getDataBool = false;

  bool networkBool = true;

  SportData? sportData;

  getSportsData() async {
    try {
      final response = await Dio().get(ApiUrl);

      print("i m in serviexs");
      print(response.data);

      sportData = SportData.fromJson(response.data);

      getDataBool = true;

      notifyListeners();

      return response;
    } catch (e) {
      print(e);
    }
  }

  checkConnectivity() async {
    networkBool = await Helpers().checkNetwork();

    print(networkBool);
    // return networkBool;
    notifyListeners();
  }
}
