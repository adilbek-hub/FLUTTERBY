class SmsModel {
  SmsModel({
    required this.send,
    required this.sms,
    required this.time,
    this.isMy,
  });
  final String send;
  final String sms;
  final DateTime time;
  bool? isMy;

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'send': send});
    result.addAll({'sms': sms});
    result.addAll({'time': time.millisecondsSinceEpoch});
    if (isMy != null) {
      result.addAll({'isMy': isMy});
    }

    return result;
  }

  factory SmsModel.fromMap(Map<String, dynamic> map) {
    return SmsModel(
      send: map['send'] ?? '',
      sms: map['sms'] ?? '',
      time: DateTime.fromMillisecondsSinceEpoch(map['time']),
      isMy: map['isMy'],
    );
  }
}
