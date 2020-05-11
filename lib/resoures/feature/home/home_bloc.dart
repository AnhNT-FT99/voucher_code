import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:voucherapp/resoures/data/model/result_model.dart';
import 'package:voucherapp/resoures/data/repositories/voucher_repository.dart';
import 'package:voucherapp/resoures/feature/home/home_event.dart';
import 'package:voucherapp/resoures/feature/home/home_state.dart';

class VoucherBloc extends Bloc<VoucherEvent, VoucherState> {

  VoucherRepository repository;

  VoucherBloc({@required this.repository});

  @override
  // TODO: implement initialState
  VoucherState get initialState => VoucherInitialState();

  @override
  Stream<VoucherState> mapEventToState(VoucherEvent event) async* {
    if (event is FetchDataVoucherEvent) {
      yield VoucherLoadingState();
      try {
        List<Voucher> voucher = await repository.getVouchers();
        yield VoucherLoadedState(voucher: voucher);
      } catch (e) {
        yield VoucherErrorState(message: e.toString());
      }
    }
  }

}