import 'package:check_data/models/check_machine_model.dart';
import 'package:check_data/state_management/hive_notifier.dart';
import 'package:check_data/state_management/main_task_notifier.dart';
import 'package:check_data/ui/custom_widgets/custom_widgets.dart';
import 'package:check_data/ui/pages/auth/login_page.dart';
import 'package:check_data/ui/pages/main_menu/detail_report.dart';
import 'package:check_data/utils/theme/theme.dart';
import 'package:check_data/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';

part 'detail_main_menu_page.dart';

part 'task_check_list_vehicle.dart';

part 'report_check_list_vehicle.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _sizeScreen = Screen(MediaQuery.of(context).size);
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: EdgeInsets.symmetric(
              vertical: _sizeScreen.hp(4), horizontal: _sizeScreen.wp(4)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  'CHECK LIST KENDARAAN',
                  style: robotow400sz12.copyWith(
                      fontSize: 20, color: Colors.white),
                ),
              ),
              SizedBox(
                height: _sizeScreen.hp(5),
              ),
              ElevatedButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailMainMenuPage(
                              pageTittle: Config.commandoCar))),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(0.0)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFEC4C4C4)),
                  ),
                  child: Container(
                    constraints:
                        const BoxConstraints(minWidth: 100.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Text(
                      'COMANDO CAR',
                      style: robotow400sz12,
                    ),
                  )),
              SizedBox(
                height: _sizeScreen.hp(2.5),
              ),
              ElevatedButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailMainMenuPage(
                              pageTittle: Config.oshkoshF1))),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(0.0)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFEC4C4C4)),
                  ),
                  child: Container(
                    constraints:
                        const BoxConstraints(minWidth: 100.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Text(
                      'OSHKOSH F1',
                      style: robotow400sz12,
                    ),
                  )),
              SizedBox(
                height: _sizeScreen.hp(2.5),
              ),
              ElevatedButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailMainMenuPage(
                              pageTittle: Config.ambulance01))),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(0.0)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFEC4C4C4)),
                  ),
                  child: Container(
                    constraints:
                        const BoxConstraints(minWidth: 100.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Text(
                      'AMBULANCE 01',
                      style: robotow400sz12,
                    ),
                  )),
              SizedBox(
                height: _sizeScreen.hp(2.5),
              ),
              ElevatedButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ReportCheckListVehicle(pageTittle: 'LAPORAN'))),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(0.0)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFEC4C4C4)),
                  ),
                  child: Container(
                    constraints:
                        const BoxConstraints(minWidth: 100.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Text(
                      'LAPORAN',
                      style: robotow400sz12,
                    ),
                  )),
              SizedBox(
                height: _sizeScreen.hp(2.5),
              ),
              ElevatedButton(
                  onPressed: () {
                    Provider.of<HiveNotifier>(context, listen: false)
                        .closeBox(context);
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(0.0)),
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                  child: Container(
                    constraints:
                        const BoxConstraints(minWidth: 100.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Text(
                      'LOGOUT',
                      style: robotow400sz12.copyWith(color: Colors.white),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
