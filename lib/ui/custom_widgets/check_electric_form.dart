part of 'custom_widgets.dart';

class CheckElectricForm extends StatefulWidget {
  const CheckElectricForm({Key? key}) : super(key: key);

  @override
  _CheckElectricFormState createState() => _CheckElectricFormState();
}

class _CheckElectricFormState extends State<CheckElectricForm> {
  @override
  Widget build(BuildContext context) {
    var _sizeScreen = Screen(MediaQuery.of(context).size);
    return Consumer<MainTaskNotifier>(
      builder: (context, checkElectric, _) {
        return Form(
          key: checkElectric.globalTaskCheckListKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    Text(
                      'SIRINE',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkElectric.checkList
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
                                    groupValue: checkElectric.idRadioSirine,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkElectric.radioSirine = data.text;
                                        checkElectric.idRadioSirine =
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
                      'PENGERAS SUARA',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkElectric.checkList
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
                                        checkElectric.idRadioPengerasSuara,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkElectric.radioPengerasSuara =
                                            data.text;
                                        checkElectric.idRadioPengerasSuara =
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
                      'KLAKSON',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkElectric.checkList
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
                                    groupValue: checkElectric.idRadioKlakson,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkElectric.radioKlakson = data.text;
                                        checkElectric.idRadioKlakson =
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
                      'LAMPU DASHBOARD',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkElectric.checkList
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
                                        checkElectric.idRadioLampuDashboard,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkElectric.radioLampuDashBoard =
                                            data.text;
                                        checkElectric.idRadioLampuDashboard =
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
                      'LAMPU KABIN',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkElectric.checkList
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
                                    groupValue: checkElectric.idRadioLampuKabin,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkElectric.radioLampuKabin =
                                            data.text;
                                        checkElectric.idRadioLampuKabin =
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
                      'LAMPU SEIN',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkElectric.checkList
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
                                    groupValue: checkElectric.idRadioLampuSein,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkElectric.radioLampuSein =
                                            data.text;
                                        checkElectric.idRadioLampuSein =
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
                      'LAMPU REM',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkElectric.checkList
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
                                    groupValue: checkElectric.idRadioLampuRem,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkElectric.radioLampuRem = data.text;
                                        checkElectric.idRadioLampuRem =
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
