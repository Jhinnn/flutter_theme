import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provder/theme_provider.dart';

class ButtouThemePage extends StatelessWidget {
  const ButtouThemePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('按钮主题'),
        actions: [
          Switch(
              value: context.read<ThemeModel>().themeType == ThemeMode.dark
                  ? true
                  : false,
              onChanged: (value) {
                context.read<ThemeModel>().changeThemeType();
              }),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('按钮'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(onPressed: () {}, child: const Text('TextButton')),
            CupertinoButton(
              onPressed: () {},
              child: const Text('CupertinoButton'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('ElevatedButton'),
            ),
            OutlinedButton(
                onPressed: () {}, child: const Text('OutlinedButton')),
          ],
        ),
      ),
    );
  }
}
