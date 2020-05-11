class ApiResultModel {
  List<Voucher> voucher;

  ApiResultModel({this.voucher});

  ApiResultModel.fromJson(Map<String, dynamic> json) {
    if (json['articles'] != null) {
      voucher = new List<Voucher>();
      json['articles'].forEach((v) {
        voucher.add(new Voucher.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.voucher != null) {
      data['articles'] = this.voucher.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
class  Voucher{
  int divisionId;
  String voucherCode;
  String voucherDes;
  String voucherName;

  Voucher(
      {this.divisionId, this.voucherCode, this.voucherDes, this.voucherName});

  Voucher.fromJson(Map<String, dynamic> json) {
    divisionId = json['division_id'];
    voucherCode = json['voucher_code'];
    voucherDes = json['voucher_des'];
    voucherName = json['voucher_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['division_id'] = this.divisionId;
    data['voucher_code'] = this.voucherCode;
    data['voucher_des'] = this.voucherDes;
    data['voucher_name'] = this.voucherName;
    return data;
  }
}