import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provder/theme_provider.dart';

class ListTileThemePage extends StatelessWidget {
  const ListTileThemePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile主题'),
      actions: [
          Switch(
                  value: context.read<ThemeModel>().themeType == ThemeMode.dark ? true : false,
                  onChanged: (value) {
                    context.read<ThemeModel>().changeThemeType();
                    
                  }),
        ],
      ),
      
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:const [
            ListTile(
              leading: Icon(Icons.radio_button_checked),
              title: Text('文本主题'),
              subtitle: Text('文本主题详情'),
              // tileColor: Colors.white,
            ),
            ListTile(
              leading: Icon(Icons.help_outline),
              title: Text('文本主题'),
              subtitle: Text('文本主题详情'),
              // tileColor: Colors.white,
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text('文本主题'),
              subtitle: Text('文本主题详情'),
              // tileColor: Colors.white,
            ),
          ],
        ),
      )),
    );
  }
}
