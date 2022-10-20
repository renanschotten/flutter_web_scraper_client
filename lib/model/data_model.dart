import 'dart:convert';

class DataModel {
  final String title;
  final String url;

  DataModel({
    required this.title,
    required this.url,
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

    return other.title == title && other.url == url;
  }

  @override
  int get hashCode => title.hashCode ^ url.hashCode;
}
