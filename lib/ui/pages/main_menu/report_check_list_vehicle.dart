part of 'main_menu_page.dart';

class ReportCheckListVehicle extends StatefulWidget {
  final String pageTittle;

  const ReportCheckListVehicle({Key? key, required this.pageTittle})
      : super(key: key);

  @override
  _ReportCheckListVehicleState createState() => _ReportCheckListVehicleState();
}

class _ReportCheckListVehicleState extends State<ReportCheckListVehicle> {
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
                  'CHECK LIST KENDARAAN ${widget.pageTittle}',
                  style: robotow400sz12.copyWith(
                      fontSize: 16, color: Colors.white),
                ),
              ),
              SizedBox(
                height: _sizeScreen.hp(5),
              ),

              ///CHECK LAPORAN
              ElevatedButton(
                  onPressed: () => debugPrint('Goto CHECK MESIN'),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(0.0)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFE2D1DED)),
                  ),
                  child: Container(
                    constraints:
                        const BoxConstraints(minWidth: 100.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Text(
                      'CHECK MESIN',
                      style: robotow400sz12.copyWith(color: Colors.white),
                    ),
                  )),

              ///TODO GENERATE LIST RESULT
            ],
          ),
        ),
      ),
    );
  }
}
