part of 'custom_widgets.dart';

class CheckMechanicForm extends StatefulWidget {
  const CheckMechanicForm({Key? key}) : super(key: key);

  @override
  _CheckMechanicFormState createState() => _CheckMechanicFormState();
}

class _CheckMechanicFormState extends State<CheckMechanicForm> {
  @override
  Widget build(BuildContext context) {
    var _sizeScreen = Screen(MediaQuery.of(context).size);
    return Consumer<MainTaskNotifier>(
      builder: (context, checkMechanic, _) {
        return Form(
          key: checkMechanic.globalTaskCheckListKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    Text(
                      'KEBOCORAN OLI',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkMechanic.checkList
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
                                        checkMechanic.idRadioKebocoranOli,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkMechanic.radioKebocoranOli =
                                            data.text;
                                        checkMechanic.idRadioKebocoranOli =
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
                      'HANDLE PERSENELING',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkMechanic.checkList
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
                                        checkMechanic.idRadioHandlePerseneling,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkMechanic.radioHandlePerseneling =
                                            data.text;
                                        checkMechanic.idRadioHandlePerseneling =
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
                      'REM TANGAN',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkMechanic.checkList
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
                                    groupValue: checkMechanic.idRadioRemTangan,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkMechanic.radioRemTangan =
                                            data.text;
                                        checkMechanic.idRadioRemTangan =
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
                      'PEDAL GAS',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkMechanic.checkList
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
                                    groupValue: checkMechanic.idRadioPedalGas,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkMechanic.radioPedalGas = data.text;
                                        checkMechanic.idRadioPedalGas =
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
                      'PEDAL KOPLING',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkMechanic.checkList
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
                                        checkMechanic.idRadioPedalKopling,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkMechanic.radioPedalKopling =
                                            data.text;
                                        checkMechanic.idRadioPedalKopling =
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
                      'PEMANASAN MESIN',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkMechanic.checkList
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
                                        checkMechanic.idRadioPemanasanMesin,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkMechanic.radioPemanasanMesin =
                                            data.text;
                                        checkMechanic.idRadioPemanasanMesin =
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
            ],
          ),
        );
      },
    );
  }
}
