import 'package:example_bloc/models/posts.dart';

abstract class PostRepository {
  Future<List<Post>> getPosts();

  Future<void> add(Post post);

  Future<void> update(Post post);

  Future<void> remove(Post post);
}
