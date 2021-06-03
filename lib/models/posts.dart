import 'package:json_annotation/json_annotation.dart';
part 'posts.g.dart';

@JsonSerializable()
class Post {
  int id;
  String text;
  String createdAt;

  Post({
    required this.id,
    required this.text,
    required this.createdAt,
  });

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
  Map<String, dynamic> toJson() => _$PostToJson(this);
}
