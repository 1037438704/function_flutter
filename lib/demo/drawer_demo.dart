import 'package:flutter/material.dart';



class DrawerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1587627965&di=5d47f9e9627d0ebfb63f8c91cb73ff22&src=http://01.minipic.eastday.com/20170511/20170511132714_a97930c96c5a47884752b81f8a5da89f_6.jpeg'),
            ),
            decoration: BoxDecoration(
                color: Colors.yellow[400],
                image: DecorationImage(
                    image: NetworkImage(
                        "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1587627965&di=5d47f9e9627d0ebfb63f8c91cb73ff22&src=http://01.minipic.eastday.com/20170511/20170511132714_a97930c96c5a47884752b81f8a5da89f_6.jpeg"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.yellow[400].withOpacity(0.6),
                        BlendMode.lighten))),
            accountName: Text("赵栋亮",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            accountEmail: Text("1037438704@qq.com"),
          ),
          ListTile(
            title: Text('Message', textAlign: TextAlign.right),
            trailing: Icon(Icons.message, color: Colors.black12, size: 22),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
              title: Text("Favorite", textAlign: TextAlign.right),
              trailing:
              Icon(Icons.favorite, color: Colors.black12, size: 22),
              onTap: () => Navigator.pop(context)),
          ListTile(
              title: Text("Settings", textAlign: TextAlign.right),
              trailing:
              Icon(Icons.settings, color: Colors.black12, size: 22),
              onTap: () => Navigator.pop(context)),
        ],
      ),
    );
  }

}