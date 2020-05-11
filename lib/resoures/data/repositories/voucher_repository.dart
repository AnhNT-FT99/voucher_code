import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:voucherapp/resoures/data/model/result_model.dart';

import '../model/result_model.dart';


abstract class VoucherRepository {
  Future<List<Voucher>> getVouchers();
}

class VoucherRepositoryImpl implements VoucherRepository {
  @override
  Future<List<Voucher>> getVouchers() async  {
    final response = await http.get('http://192.168.31.171:5000/api/v1/resources/vouchers/all');
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      var dataList = data as List;
      List<Voucher> vouchers = dataList.map((item) => Voucher.fromJson(item)).toList();
      return vouchers;
    } else {
      throw Exception('Failed to load album');
    }
  }
}
