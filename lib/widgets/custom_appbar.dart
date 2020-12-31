import 'package:aluramoveis/widgets/car_button.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final bool showCarIcon;

  CustomAppBar({
    this.title,
    this.showCarIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.transparent,
      brightness: Brightness.light,
      elevation: 0.0,
      centerTitle: true,
      actions: <Widget>[
        showCarIcon ? CarButton() : Container(),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
