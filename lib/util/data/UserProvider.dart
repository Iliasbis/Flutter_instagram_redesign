import 'package:flutter/material.dart';

import 'Data.dart';

class UserProvider extends ChangeNotifier {
  List <User> _likedPost = [];
  get likerdPost => _likedPost;

  void addToLiked(User user) {
    _likedPost.add(user);
    notifyListeners();
  }

  void removeFromLiked(User user) {
    _likedPost.remove(user);
    notifyListeners();
  }

  bool isLiked(User user) {
    return _likedPost.contains(user);
  }
}
