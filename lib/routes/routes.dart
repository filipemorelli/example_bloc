import 'package:example_bloc/screens/posts/post_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String posts = '/';
  static const String postAdd = '/post_add';

  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    posts: (ctx) => PostScreen(),
  };
}
