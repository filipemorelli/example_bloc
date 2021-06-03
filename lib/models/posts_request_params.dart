import 'package:json_annotation/json_annotation.dart';
part 'posts_request_params.g.dart';

@JsonSerializable()
class PostsRequestParams {
  int page;
  int limit;

  PostsRequestParams({
    required this.page,
    required this.limit,
  });

  factory PostsRequestParams.fromJson(Map<String, dynamic> json) => _$PostsRequestParamsFromJson(json);
  Map<String, dynamic> toJson() => _$PostsRequestParamsToJson(this);
}
