import 'dart:io';

import 'package:dio/dio.dart';
import 'package:example_bloc/models/posts.dart';
import 'package:example_bloc/repositories/PostRepository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:mockito/mockito.dart';

void main() {
  group('Post Repository testes', () {
    late final Dio dio;
    late final DioAdapter dioAdapter;
    late final PostRepository repository;

    setUp(() {
      dio = Dio();
      dioAdapter = DioAdapter();
      dio.httpClientAdapter = dioAdapter;
      repository = PostRepository(dio);
    });
    test('should return list of posts', () async {
      dioAdapter.onGet('/posts', (request) => request.reply(HttpStatus.ok, {}));
      final result = await repository.getPosts();
      expect(result, isA<List<Post>>());
    });
  });
}
