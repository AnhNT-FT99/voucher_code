import 'package:flutter/material.dart';
import 'package:voucherapp/resoures/data/repositories/voucher_repository.dart';
import 'package:voucherapp/resoures/feature/home/home_bloc.dart';
import 'package:voucherapp/resoures/feature/home/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'resoures/data/repositories/voucher_repository.dart';
import 'resoures/data/repositories/voucher_repository.dart';
import 'resoures/feature/home/home_bloc.dart';
import 'resoures/feature/home/home_view.dart';
import 'resoures/feature/home/home_view.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create:(context) => VoucherBloc(repository: VoucherRepositoryImpl()),
        child: HomePage(),
      )
    );
  }

}