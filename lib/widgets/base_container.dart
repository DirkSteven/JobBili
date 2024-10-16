
import 'package:flutter/material.dart';

class BaseContainer extends StatelessWidget {
  final Widget child;
  final bool showAppBar;
  final String? appBarTitle;
  const BaseContainer({required this.child, super.key, String? title, bool? showAppBar})
      : this.showAppBar = showAppBar ?? false,
        this.appBarTitle = title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
            appBar: showAppBar
                ? AppBar(
                    title: Text(
                      appBarTitle ?? "Title",
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    centerTitle: true,
                ):null,
            body: Container(
                
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
                
                width: double.infinity,
                height: double.infinity,
                child: child)));
  }
}
