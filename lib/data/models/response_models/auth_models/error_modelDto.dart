class ErrorModelDto {
  String? value;
  String? msg;
  String? param;
  String? location;

  ErrorModelDto({this.value, this.msg, this.param, this.location});

  ErrorModelDto.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    msg = json['msg'];
    param = json['param'];
    location = json['location'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    data['msg'] = this.msg;
    data['param'] = this.param;
    data['location'] = this.location;
    return data;
  }
}
