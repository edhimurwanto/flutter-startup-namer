import 'package:flutter/material.dart';

PreferredSizeWidget myAppBar({String title = '', Widget? rightIcon}) => AppBar(
      title: Text(
        title,
      ),
      leading: rightIcon,
      actions: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 15.0),
          child: Icon(Icons.mail),
        )
      ],
      centerTitle: false,
    );
