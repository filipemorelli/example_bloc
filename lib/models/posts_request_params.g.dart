// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_request_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostsRequestParams _$PostsRequestParamsFromJson(Map<String, dynamic> json) {
  return PostsRequestParams(
    page: json['page'] as int,
    limit: json['limit'] as int,
  );
}

Map<String, dynamic> _$PostsRequestParamsToJson(PostsRequestParams instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
    };
