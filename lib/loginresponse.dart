class LoginResponse {
  String msg;
  bool status;
  String baseUrl;

  LoginResponse({this.msg, this.status, this.baseUrl});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    status = json['status'];
    baseUrl = json['base_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    data['status'] = this.status;
    data['base_url'] = this.baseUrl;
    return data;
  }
}