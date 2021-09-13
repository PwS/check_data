part of 'custom_widgets.dart';

class CheckPhysicalForm extends StatefulWidget {
  const CheckPhysicalForm({Key? key}) : super(key: key);

  @override
  _CheckPhysicalFormState createState() => _CheckPhysicalFormState();
}

class _CheckPhysicalFormState extends State<CheckPhysicalForm> {
  @override
  Widget build(BuildContext context) {
    var _sizeScreen = Screen(MediaQuery.of(context).size);
    return Consumer<MainTaskNotifier>(
      builder: (context, checkPhysical, _) {
        return Form(
          key: checkPhysical.globalTaskCheckListKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    Text(
                      'BODY KENDARAAN',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkPhysical.checkList
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
                                        checkPhysical.idRadioBodyKendaraan,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkPhysical.radioBodyKendaraan =
                                            data.text;
                                        checkPhysical.idRadioBodyKendaraan =
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
                      'TEKANAN BAN',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkPhysical.checkList
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
                                    groupValue: checkPhysical.idRadioTekananBan,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkPhysical.radioTekananBan =
                                            data.text;
                                        checkPhysical.idRadioTekananBan =
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
                      'MUR RODA',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkPhysical.checkList
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
                                    groupValue: checkPhysical.idRadioMurRoda,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkPhysical.radioMurRoda = data.text;
                                        checkPhysical.idRadioMurRoda =
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
                      'KACA SPION',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkPhysical.checkList
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
                                    groupValue: checkPhysical.idRadioKacaSpion,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkPhysical.radioKacaSpion =
                                            data.text;
                                        checkPhysical.idRadioKacaSpion =
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
                      'TEMPAT PERLENGKAPAN',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkPhysical.checkList
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
                                        checkPhysical.idRadioTempatPerlengkapan,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkPhysical.radioTempatPerlengkapan =
                                            data.text;
                                        checkPhysical
                                                .idRadioTempatPerlengkapan =
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
                      'WIPER',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkPhysical.checkList
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
                                    groupValue: checkPhysical.idRadioWiper,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkPhysical.radioWiper = data.text;
                                        checkPhysical.idRadioWiper = data.index;
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
                      'PINTU',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkPhysical.checkList
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
                                    groupValue: checkPhysical.idRadioPintu,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkPhysical.radioPintu = data.text;
                                        checkPhysical.idRadioPintu = data.index;
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
