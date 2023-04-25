import 'package:flutter/material.dart';
import 'package:ch8_drawer/widgets/menu_list_tile.dart';

class LeftDrawerWidget extends StatefulWidget {
  const LeftDrawerWidget({Key? key}) : super(key: key);

  @override
  State<LeftDrawerWidget> createState() => _LeftDrawerWidgetState();
}

class _LeftDrawerWidgetState extends State<LeftDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: Icon(
              Icons.face,
              size: 48.0,
              color: Colors.white,
            ),
            accountName: Text('Sandy Smith'),
            accountEmail: Text('Sandy.smith@domainname.com'),
            otherAccountsPictures: <Widget>[
              Icon(
                Icons.bookmark_border,
                color: Colors.white,
              )
            ],
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/mountain.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const MenuListTileWidget(),
        ],
      ),
    );
  }
}
