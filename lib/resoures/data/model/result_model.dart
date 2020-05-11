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