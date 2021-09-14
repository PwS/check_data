part of 'custom_widgets.dart';

class CheckDryChemicalPowderPart extends StatefulWidget {
  const CheckDryChemicalPowderPart({Key? key}) : super(key: key);

  @override
  _CheckDryChemicalPowderPartState createState() =>
      _CheckDryChemicalPowderPartState();
}

class _CheckDryChemicalPowderPartState
    extends State<CheckDryChemicalPowderPart> {
  @override
  Widget build(BuildContext context) {
    var _sizeScreen = Screen(MediaQuery.of(context).size);
    return Consumer<MainTaskNotifier>(
      builder: (context, checkDryChemicalPowder, _) {
        return Form(
          key: checkDryChemicalPowder.globalTaskCheckListKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    Text(
                      'DRY CHEMICAL POWDER',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkDryChemicalPowder.checkList
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
                                    groupValue: checkDryChemicalPowder
                                        .idRadioDryChemicalPowder,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkDryChemicalPowder
                                            .radioDryChemicalPowder = data.text;
                                        checkDryChemicalPowder
                                                .idRadioDryChemicalPowder =
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
                      'HOUSE REEL DCP',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkDryChemicalPowder.checkList
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
                                    groupValue: checkDryChemicalPowder
                                        .idRadioHouseReelDcp,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkDryChemicalPowder
                                            .radioHouseReelDcp = data.text;
                                        checkDryChemicalPowder
                                            .idRadioHouseReelDcp = data.index;
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
                      'NITROGEN GAS',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkDryChemicalPowder.checkList
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
                                    groupValue: checkDryChemicalPowder
                                        .idRadioNitrogenGas,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkDryChemicalPowder
                                            .radioNitrogenGas = data.text;
                                        checkDryChemicalPowder
                                            .idRadioNitrogenGas = data.index;
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
                      'VALVE',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkDryChemicalPowder.checkList
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
                                        checkDryChemicalPowder.idRadioValve,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkDryChemicalPowder.radioValve =
                                            data.text;
                                        checkDryChemicalPowder.idRadioValve =
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
