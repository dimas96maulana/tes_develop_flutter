import 'dart:convert';

import 'package:flutter/services.dart';

class ServiceHome{
  Future<Map<String, dynamic>> getCustomerTTH()async{
    final String fileJson = await rootBundle.loadString('json/CustomerTTH.json');
    final Map<String, dynamic> result = await json.decode(fileJson);

    return result;
  }

  Future<Map<String, dynamic>> getCustomer()async{
    final String fileJson = await rootBundle.loadString('json/Customer.json');
    final Map<String, dynamic> result = await json.decode(fileJson);

    return result;
  }
}