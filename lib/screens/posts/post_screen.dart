import 'package:example_bloc/cubit/post_cubit.dart';
import 'package:example_bloc/models/posts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  late List<Post> _posts;
  late bool _isLast;

  @override
  void initState() {
    super.initState();
    _posts = <Post>[];
    _isLast = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<PostCubit>().scaffoldState,
      appBar: AppBar(
        title: Text('ScreetWall'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
        ],
      ),
      body: BlocConsumer<PostCubit, PostState>(
        listener: (context, state) {
          if (state is PostStateLoaded) {
            _posts.addAll(state.posts);
            _isLast = state.posts.isEmpty;
          }
        },
        builder: (context, state) {
          if (state is PostStateLoading) return _loadingState();
          if (state is PostStateLoaded) return _loadedState();
          return _loadingState();
        },
      ),
    );
  }

  Widget _loadingState() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _loadedState() {
    return ListView.builder(
      padding: EdgeInsets.all(10),
      itemCount: _posts.length,
      itemBuilder: (context, i) {
        if (_posts.length == i && !_isLast) {
          return _loadingState();
        }

        Post post = _posts[i];
        return Card(
          elevation: 5,
          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: ListTile(
            title: Text(post.text),
            subtitle: Text(post.createdAt),
          ),
        );
      },
    );
  }
}
