import 'dart:convert';

import 'package:web_scraper/domain/entities/data.dart';

class DataModel extends Data {
  DataModel({
    required super.title,
    required super.url,
  });

  DataModel copyWith({
    String? title,
    String? url,
  }) {
    return DataModel(
      title: title ?? this.title,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'url': url,
    };
  }

  factory DataModel.fromMap(Map<String, dynamic> map) {
    return DataModel(
      title: map['title'] ?? '',
      url: map['url'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory DataModel.fromJson(String source) =>
      DataModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'DataModel(title: $title, url: $url)';

  @override
  bool operator ==(covariant DataModel other) {
    if (identical(this, other)) return true;

    return other.hashCode == hashCode;
  }

  @override
  int get hashCode => Object.hashAll([runtimeType, title, url]);
}
