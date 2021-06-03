part of 'post_cubit.dart';

@immutable
abstract class PostState {}

class PostStateLoading extends PostState {}

class PostStateLoaded extends PostState {
  final List<Post> posts;

  PostStateLoaded(this.posts);
}

class FailedStatePost extends PostState {
  final String e;

  FailedStatePost(this.e);
}
