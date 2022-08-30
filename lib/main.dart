import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_theme/constants/status_color.dart';
import 'package:flutter_theme/provder/theme_provider.dart';
import 'package:flutter_theme/theme_page/dialog_theme_page.dart';
import 'package:flutter_theme/theme_page/list_tile_page.dart';
import 'package:flutter_theme/theme_page/text_theme_page.dart';
import 'package:provider/provider.dart';

import 'theme_page/button_theme_page.dart';
import 'constants/app_colors.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => ThemeModel())],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(builder: ((context, ThemeModel value, child) {
      return MaterialApp(
        title: 'Flutter Theme Demo',
        themeMode: value.themeType == ThemeType.dark
            ? ThemeMode.dark
            : ThemeMode.light,
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
              // color: Colors.orange,
              backgroundColor: Colors.white,
              foregroundColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.black),
              titleSpacing: 10,
              // centerTitle: false,
              // toolbarHeight: 88,
              // shadowColor: Colors.amberAccent,
              // elevation: 10,
              // shape: RoundedRectangleBorder(side: BorderSide(width: 10,color: Colors.red)),
              surfaceTintColor: Colors.black,
              systemOverlayStyle: SystemUiOverlayStyle.dark,
              toolbarTextStyle: TextStyle(fontSize: 30, color: Colors.white),
              titleTextStyle: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              // actionsIconTheme: IconThemeData(color: Colors.red, size: 20),
            ),
            extensions: const [StatusColors.light],
            cupertinoOverrideTheme: const NoDefaultCupertinoThemeData(
              brightness: Brightness.light,
              primaryColor: Colors.red,
              scaffoldBackgroundColor: Colors.red,

              ///CupertinoButton 文字颜色
              primaryContrastingColor: Colors.pink,
              textTheme: CupertinoTextThemeData(
                  primaryColor: CupertinoColors.systemGreen,
                  textStyle: TextStyle(
                      color: Colors.red,
                      fontSize: 20), //color：无效果 fontSize： CupertinoButton 文字大小
                  actionTextStyle: TextStyle(color: Colors.red, fontSize: 20),
                  tabLabelTextStyle: TextStyle(color: Colors.red, fontSize: 20),
                  navActionTextStyle:
                      TextStyle(color: Colors.red, fontSize: 20),
                  navLargeTitleTextStyle:
                      TextStyle(color: Colors.red, fontSize: 20),
                  navTitleTextStyle: TextStyle(color: Colors.red, fontSize: 20),
                  pickerTextStyle: TextStyle(color: Colors.red, fontSize: 20),
                  dateTimePickerTextStyle:
                      TextStyle(color: Colors.red, fontSize: 20)),
              barBackgroundColor: Colors.red,
            ),
            inputDecorationTheme: const InputDecorationTheme(
              labelStyle: TextStyle(color: Colors.red, fontSize: 20),
              helperStyle: TextStyle(color: Colors.red, fontSize: 20),
            ),
            brightness: Brightness.light,
            applyElevationOverlayColor: true,
            primaryColorLight: Colors.red,
            primaryColorDark: Colors.red,
            dialogBackgroundColor: Colors.purpleAccent,

            //switchTheme
            switchTheme: SwitchThemeData(
                thumbColor: MaterialStateProperty.all<Color>(Colors.black),
                trackColor: MaterialStateProperty.all<Color>(Colors.black)),

            //listTileTheme
            listTileTheme: const ListTileThemeData(
              // dense: true,
              style: ListTileStyle.list,
            ),

            ///非Cupertino dialog 主题
            dialogTheme: const DialogTheme(
                backgroundColor: Colors.teal,
                titleTextStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                contentTextStyle: TextStyle(color: Colors.white, fontSize: 15)),
            primarySwatch: Colors.pink,
            iconTheme: const IconThemeData(
              color: Colors.red,
              opacity: 0.6,
              size: 32,
            ),
            cardTheme: const CardTheme(color: Colors.white),
            floatingActionButtonTheme: const FloatingActionButtonThemeData(
                backgroundColor: AppColors.goodColor,
                foregroundColor: Colors.white),
            //elevatedButtonTheme
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ButtonStyle(
              side: MaterialStateProperty.all(
                  const BorderSide(color: Colors.yellow, width: 3)),
              fixedSize: MaterialStateProperty.all<Size>(const Size(200, 40)),
              textStyle: MaterialStateProperty.all<TextStyle>(
                  const TextStyle(fontSize: 18, color: Colors.white)), //color无效
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              mouseCursor:
                  MaterialStateProperty.all<MouseCursor>(MouseCursor.defer),
              overlayColor: MaterialStateProperty.all<Color>(
                  Colors.transparent), //点击时背景颜色

              backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
            )),

            //outlinedButtonTheme
            outlinedButtonTheme: OutlinedButtonThemeData(
                style: ButtonStyle(
              side: MaterialStateProperty.all(
                  const BorderSide(color: AppColors.goodColor, width: 1)),
              fixedSize: MaterialStateProperty.all<Size>(const Size(200, 40)),
              textStyle: MaterialStateProperty.all<TextStyle>(
                  const TextStyle(fontSize: 20, color: Colors.white)),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              mouseCursor:
                  MaterialStateProperty.all<MouseCursor>(MouseCursor.defer),
              overlayColor: MaterialStateProperty.all<Color>(
                  Colors.transparent), //点击时背景颜色

              backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
            )),

            //TextButton 主题
            textButtonTheme: TextButtonThemeData(
                style: ButtonStyle(
              fixedSize:
                  MaterialStateProperty.all<Size>(const Size(180, 40)), //按钮大小
              textStyle: MaterialStateProperty.all<TextStyle>(
                  const TextStyle(fontSize: 18, color: Colors.red)), //按钮字体大小
              foregroundColor:
                  MaterialStateProperty.all<Color>(Colors.white), //按钮文本颜色
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.black), //按钮背景
            )),
            focusColor: Colors.black,
            textTheme: const TextTheme(
              displayLarge:
                  TextStyle(color: Colors.purple, fontSize: 30), //headline1
              displayMedium:
                  TextStyle(color: Colors.red, fontSize: 29), //headline2
              displaySmall:
                  TextStyle(color: Colors.pinkAccent, fontSize: 28), //headline3
              headlineLarge: TextStyle(color: Colors.teal, fontSize: 27),
              headlineMedium:
                  TextStyle(color: Colors.tealAccent, fontSize: 26), //headline4
              headlineSmall:
                  TextStyle(color: Colors.red, fontSize: 25), //headline5
              titleSmall:
                  TextStyle(color: Colors.yellow, fontSize: 24), //subtitle2
              titleLarge:
                  TextStyle(color: Colors.black, fontSize: 23), //headline6
              titleMedium: TextStyle(
                  color: Colors.red,
                  fontSize: 22), //subtitle1  | ListTile[title] style
              bodyLarge:
                  TextStyle(color: Colors.black, fontSize: 21), //bodyText1
              bodyMedium: TextStyle(
                  color: Colors.yellow,
                  fontSize: 19), //bodyText2   | ListTile[subtitle] style 只有大小影响
              bodySmall: TextStyle(color: Colors.black, fontSize: 18), //caption
              labelLarge:
                  TextStyle(color: Colors.orange, fontSize: 17), //button
              labelMedium: TextStyle(color: Colors.purpleAccent, fontSize: 16),
              labelSmall: TextStyle(color: Colors.red, fontSize: 15), //overline
              //----------------------------TextTheme构造方法上面or下面-----------------------------------
              // headline1: const TextStyle(color: Colors.red, fontSize: 20),
              // headline2: const TextStyle(color: Colors.red, fontSize: 20),
              // headline3: const TextStyle(color: Colors.red, fontSize: 20),
              // headline4: const TextStyle(color: Colors.red, fontSize: 20),
              // headline5: const TextStyle(color: Colors.red, fontSize: 20),
              // headline6: const TextStyle(color: Colors.red, fontSize: 20),

              // subtitle1: const TextStyle(color: Colors.red, fontSize: 20),
              // subtitle2: const TextStyle(color: Colors.red, fontSize: 20),
              // bodyText1: const TextStyle(color: Colors.red, fontSize: 20),
              // bodyText2: const TextStyle(color: Colors.red, fontSize: 20),
              // button: const TextStyle(color: Colors.red, fontSize: 20),
              // caption: const TextStyle(color: Colors.red, fontSize: 20),
              // overline: const TextStyle(color: Colors.red, fontSize: 20),
            ),
            // primaryTextTheme: const TextTheme(
            //   displayLarge: TextStyle(color: Colors.red, fontSize: 20),
            //   displayMedium: TextStyle(color: Colors.red, fontSize: 20),
            //   displaySmall: TextStyle(color: Colors.red, fontSize: 20),
            //   titleSmall: TextStyle(color: Colors.red, fontSize: 20),
            //   titleLarge: TextStyle(color: Colors.red, fontSize: 20),
            //   titleMedium: TextStyle(color: Colors.red, fontSize: 20),
            //   bodyLarge: TextStyle(color: Colors.red, fontSize: 10),
            //   bodyMedium: TextStyle(color: Colors.green, fontSize: 9), //text默认颜色
            //   bodySmall: TextStyle(color: Colors.red, fontSize: 30),
            //   labelLarge: TextStyle(color: Colors.red, fontSize: 20),
            //   labelMedium: TextStyle(color: Colors.red, fontSize: 20),
            //   labelSmall: TextStyle(color: Colors.red, fontSize: 20),
            // ),

            splashColor: Colors.red,
            colorScheme: ColorScheme(
              brightness: Brightness.light,
              primary: AppColors.goodColor, //导航栏背景颜色
              onPrimary: Colors.white, //导航栏文字颜色
              secondary: Colors.red.shade100,
              onSecondary: Colors.red,
              error: Colors.red.shade400,
              onError: Colors.red.shade500,
              background: Colors.yellow.shade100,
              onBackground: Colors.red,
              surface: Colors.red,
              onSurface: Colors.pink.shade100,
            ),
            // fontFamily: 'Comic Neue',
            backgroundColor: Colors.red,
            cardColor: Colors.deepOrange,
            // colorSchemeSeed: Colors.red,

            ///背景色
            scaffoldBackgroundColor: Colors.white,
            primaryColor: AppColors.themeColor),
        darkTheme: ThemeData(
          appBarTheme: const AppBarTheme(
            // color: Colors.orange,
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.white),
            titleSpacing: 10,
            // centerTitle: false,
            // toolbarHeight: 88,
            // shadowColor: Colors.amberAccent,
            // elevation: 10,
            // shape: RoundedRectangleBorder(side: BorderSide(width: 10,color: Colors.red)),
            surfaceTintColor: Colors.black,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            toolbarTextStyle: TextStyle(fontSize: 30, color: Colors.black26),
            titleTextStyle: TextStyle(
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
            actionsIconTheme: IconThemeData(color: Colors.red, size: 30),
          ),
          splashColor: Colors.red,
          primaryColor: Colors.green,
          colorScheme: ColorScheme(
            brightness: Brightness.dark,
            primary: AppColors.emphasizeColor,
            onPrimary: Colors.red,
            secondary: Colors.red.shade100,
            onSecondary: Colors.yellow,
            error: Colors.red.shade400,
            onError: Colors.red.shade500,
            background: Colors.yellow.shade100,
            onBackground: Colors.orange.shade100,
            surface: Colors.white,
            onSurface: Colors.black,
          ),

          //listTileTheme
          listTileTheme: const ListTileThemeData(
            // dense: true,
            style: ListTileStyle.list,
          ),
//switchTheme
          switchTheme: SwitchThemeData(
              thumbColor: MaterialStateProperty.all<Color>(Colors.white),
              trackColor: MaterialStateProperty.all<Color>(Colors.white)),

          cardTheme: const CardTheme(color: Colors.white),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: AppColors.goodColor,
              foregroundColor: Colors.white),

          //elevatedButtonTheme
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
            side: MaterialStateProperty.all(
                const BorderSide(color: Colors.red, width: 3)),
            fixedSize: MaterialStateProperty.all<Size>(const Size(200, 40)),
            textStyle: MaterialStateProperty.all<TextStyle>(
                const TextStyle(fontSize: 18, color: Colors.white)), //color无效
            foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
            mouseCursor:
                MaterialStateProperty.all<MouseCursor>(MouseCursor.defer),
            overlayColor:
                MaterialStateProperty.all<Color>(Colors.transparent), //点击时背景颜色

            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          )),

          //outlinedButtonTheme
          outlinedButtonTheme: OutlinedButtonThemeData(
              style: ButtonStyle(
            side: MaterialStateProperty.all(
                const BorderSide(color: AppColors.goodColor, width: 1)),
            fixedSize: MaterialStateProperty.all<Size>(const Size(200, 40)),
            textStyle: MaterialStateProperty.all<TextStyle>(
                const TextStyle(fontSize: 20, color: Colors.white)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
            mouseCursor:
                MaterialStateProperty.all<MouseCursor>(MouseCursor.defer),
            overlayColor:
                MaterialStateProperty.all<Color>(Colors.transparent), //点击时背景颜色

            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          )),

          // textButtonTheme
          textButtonTheme: TextButtonThemeData(
              style: ButtonStyle(
            fixedSize:
                MaterialStateProperty.all<Size>(const Size(180, 40)), //按钮大小
            textStyle: MaterialStateProperty.all<TextStyle>(
                const TextStyle(fontSize: 18, color: Colors.red)), //按钮字体大小
            foregroundColor:
                MaterialStateProperty.all<Color>(Colors.black), //按钮文本颜色
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.white), //按钮背景
          )),

          ///非Cupertino dialog 主题
          dialogTheme: const DialogTheme(
              backgroundColor: Colors.white,
              titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              contentTextStyle: TextStyle(color: Colors.black, fontSize: 15)),
          focusColor: Colors.black,
          textTheme: const TextTheme(
            // displayLarge: TextStyle(color: Colors.purple, fontSize: 30),//headline1
            // displayMedium: TextStyle(color: Colors.red, fontSize: 29),//headline2
            // displaySmall: TextStyle(color: Colors.pinkAccent, fontSize: 28),//headline3
            // headlineLarge: TextStyle(color: Colors.teal, fontSize: 27),
            // headlineMedium: TextStyle(color: Colors.tealAccent, fontSize: 26),//headline4
            // headlineSmall: TextStyle(color: Colors.red, fontSize: 25),//headline5
            // titleSmall: TextStyle(color: Colors.yellow, fontSize: 24), //subtitle2
            // titleLarge: TextStyle(color: Colors.black, fontSize: 23),//headline6
            // titleMedium: TextStyle(color: Colors.cyan, fontSize: 22),//subtitle1
            // bodyLarge: TextStyle(color: Colors.black, fontSize: 21),//bodyText1
            // bodyMedium: TextStyle(color: Colors.red, fontSize: 19),//bodyText2
            // bodySmall: TextStyle(color: Colors.blue, fontSize: 18),//caption
            // labelLarge: TextStyle(color: Colors.orange, fontSize: 17),//button
            // labelMedium: TextStyle(color: Colors.purpleAccent, fontSize: 16),
            // labelSmall: TextStyle(color: Colors.red, fontSize: 15),//overline
            //----------------------------TextTheme构造方法上面or下面-----------------------------------
            headline1:
                TextStyle(color: Colors.purple, fontSize: 30), //displayLarge
            headline2:
                TextStyle(color: Colors.red, fontSize: 29), //displayMedium
            headline3: TextStyle(
                color: Colors.pinkAccent, fontSize: 28), //displaySmall
            headline4: TextStyle(
                color: Colors.tealAccent, fontSize: 26), //headlineMedium
            headline5:
                TextStyle(color: Colors.yellow, fontSize: 25), //headlineSmall
            headline6:
                TextStyle(color: Colors.white, fontSize: 23), //titleLarge

            subtitle1: TextStyle(
                color: Colors.cyan,
                fontSize: 25), //titleMedium  | ListTile[title style]
            subtitle2: TextStyle(color: Colors.red, fontSize: 24), //titleSmall
            bodyText1: TextStyle(color: Colors.white, fontSize: 21), //bodyLarge
            bodyText2: TextStyle(
                color: Colors.red,
                fontSize: 19), //bodyMedium  | ListTile[title style只有fontsize影响]
            button: TextStyle(color: Colors.orange, fontSize: 17), //labelLarge
            caption: TextStyle(color: Colors.white, fontSize: 18), //bodySmall
            overline: TextStyle(color: Colors.red, fontSize: 15), //labelSmall
          ),
          primaryTextTheme: const TextTheme(
              button: TextStyle(color: Colors.red),
              caption: TextStyle(color: Colors.red)),
          primarySwatch: Colors.blue,
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.black, //背景色
        ),
        home: const MyHomePage(title: 'Flutter Theme'),
      );
    }));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isDark = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(widget.title),
            Text(
              context.read<ThemeModel>().themeType == ThemeType.dark
                  ? '黑暗模式'
                  : '明亮模式',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        actions: [
          Switch(
              value: context.read<ThemeModel>().themeType == ThemeMode.dark
                  ? true
                  : false,
              onChanged: (value) {
                context.read<ThemeModel>().changeThemeType();
                setState(() {
                  _isDark = !_isDark;
                });
              }),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const TextThemePage())),
                child: const Text('text theme')),
            TextButton(
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const ButtouThemePage())),
                child: const Text('button theme')),
            TextButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const ListTileThemePage())),
                child: const Text('list tile theme')),
            TextButton(
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const DialogThemePage())),
                child: const Text('dialog theme')),
          ],
        ),
      ),
    );
  }
}
