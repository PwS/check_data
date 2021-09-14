part of 'main_menu_page.dart';

class TaskCheckListVehicle extends StatefulWidget {
  final String pageTittle;
  final String subTittle;

  const TaskCheckListVehicle(
      {Key? key, required this.pageTittle, required this.subTittle})
      : super(key: key);

  @override
  _TaskCheckListVehicleState createState() => _TaskCheckListVehicleState();
}

class _TaskCheckListVehicleState extends State<TaskCheckListVehicle> {
  @override
  Widget build(BuildContext context) {
    var _sizeScreen = Screen(MediaQuery.of(context).size);
    return Scaffold(body: Consumer<MainTaskNotifier>(
      builder: (context, mainTask, _) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: kPrimaryColor,
            body: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: _sizeScreen.hp(4), horizontal: _sizeScreen.wp(10)),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    Container(
                      color: Color(0xffC4C4C4),
                      height: _sizeScreen.hp(8),
                      width: _sizeScreen.wp(60),
                      alignment: Alignment.center,
                      child: Text(
                        '${widget.subTittle}',
                        style: robotow400sz12.copyWith(color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: _sizeScreen.hp(2),
                    ),
                    Container(
                      color: Color(0xffC4C4C4),
                      height: _sizeScreen.hp(8),
                      width: _sizeScreen.wp(60),
                      alignment: Alignment.center,
                      child: Text(
                        'Keterangan \n B = Baik \n TB = Tidak Baik',
                        style: robotow400sz12.copyWith(color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: _sizeScreen.hp(5),
                    ),

                    ///TASKCHECKLIST
                    (widget.pageTittle == Config.commandoCar ||
                            widget.pageTittle == Config.ambulance01)
                        ? Container(
                            decoration: BoxDecoration(color: kPrimaryColor),
                            height: _sizeScreen.hp(72),
                            child: widget.subTittle.toUpperCase() ==
                                    Config.checkMachine.toUpperCase()
                                ? CheckMachineForm()
                                : widget.subTittle.toUpperCase() ==
                                        Config.checkPhysical.toUpperCase()
                                    ? CheckPhysicalForm()
                                    : widget.subTittle.toUpperCase() ==
                                            Config.checkMechanic.toUpperCase()
                                        ? CheckMechanicForm()
                                        : CheckElectricForm(),
                          )
                        : Container(
                            decoration: BoxDecoration(color: kPrimaryColor),
                            height: widget.subTittle.toUpperCase() ==
                                    Config.dryChemicalPowderPart.toUpperCase()
                                ? _sizeScreen.hp(40)
                                : _sizeScreen.hp(75),
                            child: widget.subTittle.toUpperCase() ==
                                    Config.enginePart.toUpperCase()
                                ? CheckEnginePart()
                                : widget.subTittle.toUpperCase() ==
                                        Config.pumpPart.toUpperCase()
                                    ? CheckPumpPart()
                                    : widget.subTittle.toUpperCase() ==
                                            Config.dryChemicalPowderPart
                                                .toUpperCase()
                                        ? CheckDryChemicalPowderPart()
                                        : CheckEquipmentPart(),
                          ),
                    SizedBox(
                      height: _sizeScreen.hp(5),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: _sizeScreen.wp(2)),
                      child: Row(
                        children: [
                          ElevatedButton(
                              onPressed: () => mainTask.submitFromTaskCheckList(
                                  context, widget.pageTittle, widget.subTittle),
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    EdgeInsets.all(0.0)),
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xFE3AE25F)),
                              ),
                              child: Container(
                                constraints: const BoxConstraints(
                                    minWidth: 100.0, minHeight: 50.0),
                                alignment: Alignment.center,
                                child: Text(
                                  'SUBMIT',
                                  style: robotow400sz12.copyWith(
                                      color: Colors.black),
                                ),
                              )),
                          Spacer(),
                          ElevatedButton(
                              onPressed: () => Navigator.pop(context),
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    EdgeInsets.all(0.0)),
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xFE3AE25F)),
                              ),
                              child: Container(
                                constraints: const BoxConstraints(
                                    minWidth: 100.0, minHeight: 50.0),
                                alignment: Alignment.center,
                                child: Text(
                                  'BACK',
                                  style: robotow400sz12.copyWith(
                                      color: Colors.black),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    ));
  }
}
