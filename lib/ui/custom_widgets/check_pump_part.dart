part of 'custom_widgets.dart';

class CheckPumpPart extends StatefulWidget {
  const CheckPumpPart({Key? key}) : super(key: key);

  @override
  _CheckPumpPartState createState() => _CheckPumpPartState();
}

class _CheckPumpPartState extends State<CheckPumpPart> {
  @override
  Widget build(BuildContext context) {
    var _sizeScreen = Screen(MediaQuery.of(context).size);
    return Consumer<MainTaskNotifier>(
      builder: (context, checkPump, _) {
        return Form(
          key: checkPump.globalTaskCheckListKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    Text(
                      'MAIN VALVE',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkPump.checkList
                          .map((data) => Container(
                              height: _sizeScreen.hp(10),
                              width: _sizeScreen.wp(18),
                              child: Row(
                                children: [
                                  Text(
                                    "${data.text}",
                                    style: robotow400sz12ccwhite,
                                  ),
                                  Radio(
                                    groupValue: checkPump.idRadioMainValve,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkPump.radioMainValve = data.text;
                                        checkPump.idRadioMainValve = data.index;
                                      });
                                    },
                                  ),
                                ],
                              )))
                          .toList(),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      'ROOF TURRET',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkPump.checkList
                          .map((data) => Container(
                              height: _sizeScreen.hp(10),
                              width: _sizeScreen.wp(18),
                              child: Row(
                                children: [
                                  Text(
                                    "${data.text}",
                                    style: robotow400sz12ccwhite,
                                  ),
                                  Radio(
                                    groupValue: checkPump.idRadioRoofTurret,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkPump.radioRoofTurret = data.text;
                                        checkPump.idRadioRoofTurret =
                                            data.index;
                                      });
                                    },
                                  ),
                                ],
                              )))
                          .toList(),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      'BUMPER TURRET',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkPump.checkList
                          .map((data) => Container(
                              height: _sizeScreen.hp(10),
                              width: _sizeScreen.wp(18),
                              child: Row(
                                children: [
                                  Text(
                                    "${data.text}",
                                    style: robotow400sz12ccwhite,
                                  ),
                                  Radio(
                                    groupValue: checkPump.idRadioBumperTurret,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkPump.radioBumperTurret = data.text;
                                        checkPump.idRadioBumperTurret =
                                            data.index;
                                      });
                                    },
                                  ),
                                ],
                              )))
                          .toList(),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      'AIR TANGKI (%)',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    SizedBox(
                      width: _sizeScreen.wp(50),
                      child: TextFormField(
                        controller: checkPump.controllerAirTangki,
                        keyboardType: TextInputType.number,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) =>
                            Provider.of<Validation>(context, listen: false)
                                .stringValidation(value!),
                        style: nunitoSansw400sz12,
                        decoration: InputDecoration(
                          fillColor: Colors.black,
                          filled: true,
                          hintText: 'In Percentage (%)',
                          hintStyle: nunitoSansw400sz14,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(color: Colors.red)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: _sizeScreen.hp(1),
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      'FOAM (%)',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    SizedBox(
                      width: _sizeScreen.wp(50),
                      child: TextFormField(
                        controller: checkPump.controllerFoam,
                        keyboardType: TextInputType.number,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) =>
                            Provider.of<Validation>(context, listen: false)
                                .stringValidation(value!),
                        style: nunitoSansw400sz12,
                        decoration: InputDecoration(
                          fillColor: Colors.black,
                          filled: true,
                          hintText: 'In Percentage (%)',
                          hintStyle: nunitoSansw400sz14,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(color: Colors.red)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      'HOUSE REEL KANAN KIRI',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkPump.checkList
                          .map((data) => Container(
                              height: _sizeScreen.hp(10),
                              width: _sizeScreen.wp(18),
                              child: Row(
                                children: [
                                  Text(
                                    "${data.text}",
                                    style: robotow400sz12ccwhite,
                                  ),
                                  Radio(
                                    groupValue:
                                        checkPump.idRadioHouseReelKananKiri,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkPump.radioHouseReelKananKiri =
                                            data.text;
                                        checkPump.idRadioHouseReelKananKiri =
                                            data.index;
                                      });
                                    },
                                  ),
                                ],
                              )))
                          .toList(),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      'NOZZLE FOAM (%)',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    SizedBox(
                      width: _sizeScreen.wp(50),
                      child: TextFormField(
                        controller: checkPump.controllerNozzleFoam,
                        keyboardType: TextInputType.number,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) =>
                            Provider.of<Validation>(context, listen: false)
                                .stringValidation(value!),
                        style: nunitoSansw400sz12,
                        decoration: InputDecoration(
                          fillColor: Colors.black,
                          filled: true,
                          hintText: 'In Percentage (%)',
                          hintStyle: nunitoSansw400sz14,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(color: Colors.red)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
