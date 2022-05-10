import 'package:flutter/material.dart';
import 'package:junaid_jafferi/Res/Constant.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({Key? key, required this.name, required this.icon, required this.onPressed}) : super(key: key);

  final String name;
  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: 40,
        child: Row(
          children: [
            Icon(icon, size: 20, color: Colors.orangeAccent,),
            const SizedBox(width: 40,),
            Text(name, style: Textt1.textStyle(kPrimaryFontColor, 18)),
          ],
        ),
      ),
    );
  }
}
