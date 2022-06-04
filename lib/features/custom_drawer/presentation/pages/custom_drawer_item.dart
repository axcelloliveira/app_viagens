import 'package:flutter/material.dart';

class CustomDrawerItem extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final Color? color;
  final GestureTapCallback? onTap;


  const CustomDrawerItem({Key? key, this.title, this.icon, this.color, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ListTile(
        title: Row(
          children: <Widget>[
            Icon(
              icon,
              color: color,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(title!),
            ),
          ],
        ),
        onTap: onTap,
      ),
    );
  }
}
