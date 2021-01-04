import 'package:flutter/material.dart';
import 'package:aluramoveis/widgets/cart_button.dart';

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
        showCarIcon ? CartButton() : Container(),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
