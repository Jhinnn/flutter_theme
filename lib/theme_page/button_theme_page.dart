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
        title: const Text('button theme'),
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
      body: Center(
        child: Column(
          
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        TextButton(onPressed: () {}, child: const Text('TextButton')),
        CupertinoButton(
          onPressed: () {
            showCupertinoDialog(
                barrierDismissible: true,
                context: context,
                builder: (_) {
                  return Theme(
                      data: ThemeData().copyWith(
                          dialogBackgroundColor: Colors.red,
                          dialogTheme: const DialogTheme(
                              backgroundColor: Colors.teal,
                              titleTextStyle: TextStyle(
                                  color: Colors.white, fontSize: 20),
                              contentTextStyle: TextStyle(
                                  color: Colors.white, fontSize: 15))),
                      child: CupertinoAlertDialog(
                        title: const Text('标题'),
                        content: const Text('市第六届家乐福静安寺两地分居阿里斯顿'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: const Text('确定'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text('取消'),
                          ),
                        ],
                      ));
                });
          },
          child: const Text('CupertinoButton'),
        ),
        ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (_) {
                  return AlertDialog(
                    title: const Text('标题'),
                    content: const Text('市第六届家乐福静安寺两地分居阿里斯顿'),
                    actions: [
                      Theme(
                        data: ThemeData(
                            textButtonTheme: TextButtonThemeData(
                                style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all<Size>(
                              const Size(120, 40)), //按钮大小
                          textStyle: MaterialStateProperty.all<TextStyle>(
                              const TextStyle(
                                  fontSize: 18,
                                  color: Colors.red)), //按钮字体大小
                          foregroundColor: MaterialStateProperty.all<Color>(
                              Colors.black), //按钮文本颜色
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.white), //按钮背景
                        ))),
                        child: TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text('确定'),
                        ),
                      ),
                      Theme(
                        data: ThemeData(
                            textButtonTheme: TextButtonThemeData(
                                style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all<Size>(
                              const Size(120, 40)), //按钮大小
                          textStyle: MaterialStateProperty.all<TextStyle>(
                              const TextStyle(
                                  fontSize: 12,
                                  color: Colors.red)), //按钮字体大小
                          foregroundColor: MaterialStateProperty.all<Color>(
                              Colors.black), //按钮文本颜色
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.white), //按钮背景
                        ))),
                        child: TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text('取消'),
                        ),
                      )
                    ],
                  );
                });
          },
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
