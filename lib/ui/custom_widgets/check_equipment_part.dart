part of 'custom_widgets.dart';

class CheckEquipmentPart extends StatefulWidget {
  const CheckEquipmentPart({Key? key}) : super(key: key);

  @override
  _CheckEquipmentPartState createState() => _CheckEquipmentPartState();
}

class _CheckEquipmentPartState extends State<CheckEquipmentPart> {
  @override
  Widget build(BuildContext context) {
    var _sizeScreen = Screen(MediaQuery.of(context).size);
    return Consumer<MainTaskNotifier>(
      builder: (context, checkEquipment, _) {
        return Form(
          key: checkEquipment.globalTaskCheckListKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    Text(
                      'BAJU PELINDUNG',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkEquipment.checkList
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
                                        checkEquipment.idRadioBajuPelindung,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkEquipment.radioBajuPelindung =
                                            data.text;
                                        checkEquipment.idRadioBajuPelindung =
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
                      'BA SET',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkEquipment.checkList
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
                                    groupValue: checkEquipment.idRadioBaSet,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkEquipment.radioBaSet = data.text;
                                        checkEquipment.idRadioBaSet =
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
                      'KUNCI COUPLING',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkEquipment.checkList
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
                                        checkEquipment.idRadioKunciCoupling,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkEquipment.radioKunciCoupling =
                                            data.text;
                                        checkEquipment.idRadioKunciCoupling =
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
                      'HELMET',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkEquipment.checkList
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
                                    groupValue: checkEquipment.idRadioHelmet,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkEquipment.radioHelmet = data.text;
                                        checkEquipment.idRadioHelmet =
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
                      'SEPATU',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkEquipment.checkList
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
                                    groupValue: checkEquipment.idRadioSepatu,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkEquipment.radioSepatu = data.text;
                                        checkEquipment.idRadioSepatu =
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
                      'PENGGANJAL BAN',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkEquipment.checkList
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
                                        checkEquipment.idRadioPengganjalBan,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkEquipment.radioPengganjalBan =
                                            data.text;
                                        checkEquipment.idRadioPengganjalBan =
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
                      'TANDU LIPAT',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkEquipment.checkList
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
                                        checkEquipment.idRadioTanduLipat,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkEquipment.radioTanduLipat =
                                            data.text;
                                        checkEquipment.idRadioTanduLipat =
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
