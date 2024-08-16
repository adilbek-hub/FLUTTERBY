class TokenModel {
  String? accessToken;
  String? refreshToken;
  bool? firstVisit;

  TokenModel({this.accessToken, this.refreshToken, this.firstVisit});

  TokenModel.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    refreshToken = json['refresh_token'];
    firstVisit = json['first_visit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['access_token'] = accessToken;
    data['refresh_token'] = refreshToken;
    data['first_visit'] = firstVisit;
    return data;
  }
}
