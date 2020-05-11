import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:voucherapp/resoures/data/model/result_model.dart';

abstract class VoucherState extends Equatable {}

class VoucherInitialState extends VoucherState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class VoucherLoadingState extends VoucherState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class VoucherLoadedState extends VoucherState {

  List<Voucher> voucher;

  VoucherLoadedState({@required this.voucher});

  @override
  // TODO: implement props
  List<Object> get props => [voucher];
}

class VoucherErrorState extends VoucherState {

  String message;

  VoucherErrorState({@required this.message});

  @override
  // TODO: implement props
  List<Object> get props => [message];
}