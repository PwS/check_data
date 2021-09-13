import 'dart:async';
import 'dart:io';

import 'package:check_data/state_management/hive_notifier.dart';
import 'package:check_data/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Logger logger = Logger();

  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/login');
    });
    super.initState();
    _makePathDir();
  }

  void _makePathDir() async {
    Directory _dirLoc = await getApplicationDocumentsDirectory();
    Config.pathDir = "${_dirLoc.path}/CheckVehicleDataARFF";
    print("Result Create Path Dir : ${Config.pathDir}");

    var dir = Directory(Config.pathDir);
    bool dirExists = await dir.exists();
    print('Check Directory $dirExists');
    if (!dirExists) {
      dir.create(
          recursive: true); //pass recursive as true if directory is recursive
    }

    ///Starting Offline Database
    Provider.of<HiveNotifier>(context, listen: false).initHive();

    ///OpenAllBox
    await Provider.of<HiveNotifier>(context, listen: false).openBox(context);
  }

  @override
  Widget build(BuildContext context) {
    var _sizeScreen = Screen(MediaQuery.of(context).size);
    return Container(
      child: Center(
        child: Text('Splash Area'),
      ),
    );
  }
}
