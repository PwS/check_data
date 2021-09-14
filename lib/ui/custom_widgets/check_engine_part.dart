part of 'custom_widgets.dart';

class CheckEnginePart extends StatefulWidget {
  const CheckEnginePart({Key? key}) : super(key: key);

  @override
  _CheckEnginePartState createState() => _CheckEnginePartState();
}

class _CheckEnginePartState extends State<CheckEnginePart> {
  @override
  Widget build(BuildContext context) {
    var _sizeScreen = Screen(MediaQuery.of(context).size);
    return Consumer<MainTaskNotifier>(
      builder: (context, checkEngine, _) {
        return Form(
          key: checkEngine.globalTaskCheckListKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    Text(
                      'OLI MESIN',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkEngine.checkList
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
                                    groupValue: checkEngine.idRadioOliMesin,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkEngine.radioOliMesin = data.text;
                                        checkEngine.idRadioOliMesin =
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
                      'OLI TRANSMISI',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkEngine.checkList
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
                                    groupValue: checkEngine.idOliTransmisi,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkEngine.radioOliTransmisi =
                                            data.text;
                                        checkEngine.idOliTransmisi = data.index;
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
                      'OLI POWER STEERING',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkEngine.checkList
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
                                        checkEngine.idRadioOliPowerSteering,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkEngine.radioOliPowerSteering =
                                            data.text;
                                        checkEngine.idRadioOliPowerSteering =
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
                      'BBM%',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    SizedBox(
                      width: _sizeScreen.wp(50),
                      child: TextFormField(
                        controller: checkEngine.controllerBBM,
                        keyboardType: TextInputType.number,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) =>
                            Provider.of<Validation>(context, listen: false)
                                .stringValidation(value!),
                        style: nunitoSansw400sz12,
                        decoration: InputDecoration(
                          fillColor: Colors.black,
                          filled: true,
                          hintText: 'BBM In Percentage (%)',
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
                      'TEKANAN UDARA',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkEngine.checkList
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
                                    groupValue: checkEngine.idTekananUdara,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkEngine.radioTekananUdara =
                                            data.text;
                                        checkEngine.idTekananUdara = data.index;
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
                      children: checkEngine.checkList
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
                                    groupValue: checkEngine.idRadioTekananBan,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkEngine.radioTekananBan = data.text;
                                        checkEngine.idRadioTekananBan =
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
                      'AIR RADIATOR',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkEngine.checkList
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
                                    groupValue: checkEngine.idRadioAirRadiator,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkEngine.radioAirRadiator =
                                            data.text;
                                        checkEngine.idRadioAirRadiator =
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
