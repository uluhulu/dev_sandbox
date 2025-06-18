import 'package:flutter/material.dart';

extension ChangeNotifierExtension on ChangeNotifier {
  void addOneTimeListener(VoidCallback listener) {
    addTimeListenerUntil(() {
      listener();
      return true;
    });
  }

  void addTimeListenerUntil(bool Function() listener) {
    VoidCallback? l;
    l = () {
      bool stop = listener();
      if (stop && l != null) {
        removeListener(l);
      }
    };
    addListener(l);
  }
}
