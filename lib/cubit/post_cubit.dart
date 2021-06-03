import 'package:bloc/bloc.dart';
import 'package:example_bloc/models/posts.dart';
import 'package:example_bloc/repositories/PostRepository.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'post_state.dart';

class PostCubit extends Cubit<PostState> {
  late final PostRepository _repository;
  late final GlobalKey<ScaffoldMessengerState> _scaffoldState;

  PostCubit(this._repository) : super(PostStateLoading()) {
    _scaffoldState = GlobalKey<ScaffoldMessengerState>();
  }

  Future<void> loadPosts() async {
    try {
      emit(PostStateLoading());
      List<Post> posts = await _repository.getPosts();
      emit(PostStateLoaded(posts));
    } catch (e) {
      String message = e.toString();
      emit(FailedStatePost(message));
      _showMessageError(message);
    }
  }

  void _showMessageError(String e) {
    _scaffoldState.currentState?.showSnackBar(SnackBar(content: Text(e)));
  }

  GlobalKey<ScaffoldMessengerState> get scaffoldState => _scaffoldState;
}
