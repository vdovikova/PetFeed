import 'package:flutter/material.dart';
import 'package:pet_feed/user.dart';

class UserProvider extends InheritedWidget {
  final UserInfo user;

  const UserProvider({super.key, required this.user, required super.child});

  static UserInfo of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<UserProvider>()!.user;
  }

  @override
  bool updateShouldNotify(UserProvider oldWidget) {
    return user != oldWidget.user;
  }
}
