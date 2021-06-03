import 'package:dio/dio.dart';
import 'package:example_bloc/models/posts.dart';

abstract class IPostRepository {
  Future<List<Post>> getPosts();

  Future<void> add(Post post);

  Future<void> update(Post post);

  Future<void> remove(Post post);
}

class PostRepository extends IPostRepository {
  final Dio _dio;

  PostRepository(this._dio);

  @override
  Future<void> add(Post post) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<List<Post>> getPosts() {
    // TODO: implement getPosts
    throw UnimplementedError();
  }

  @override
  Future<void> remove(Post post) {
    // TODO: implement remove
    throw UnimplementedError();
  }

  @override
  Future<void> update(Post post) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
