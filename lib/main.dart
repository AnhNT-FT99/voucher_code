import 'package:flutter/material.dart';
import 'package:voucherapp/resoures/data/repositories/voucher_repository.dart';
import 'package:voucherapp/resoures/feature/home/home_bloc.dart';
import 'package:voucherapp/resoures/feature/home/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        builder: (context) => VoucherBloc(repository: VoucherRepositoryImpl()),
        child: HomePage(),
      ),
    );
  }

}