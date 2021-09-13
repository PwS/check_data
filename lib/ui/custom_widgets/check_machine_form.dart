part of 'custom_widgets.dart';

class CheckMachineForm extends StatefulWidget {
  const CheckMachineForm({Key? key}) : super(key: key);

  @override
  _CheckMachineFormState createState() => _CheckMachineFormState();
}

class _CheckMachineFormState extends State<CheckMachineForm> {
  @override
  Widget build(BuildContext context) {
    var _sizeScreen = Screen(MediaQuery.of(context).size);
    return Consumer<MainTaskNotifier>(
      builder: (context, checkMachine, _) {
        return Form(
          key: checkMachine.globalTaskCheckListKey,
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
                      children: checkMachine.checkList
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
                                    groupValue: checkMachine.idRadioOliMesin,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkMachine.radioOliMesin = data.text;
                                        checkMachine.idRadioOliMesin =
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
                      'OLI POWER STEERING',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkMachine.checkList
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
                                        checkMachine.idRadioOliPowerSteering,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkMachine.radioOliPowerSteering =
                                            data.text;
                                        checkMachine.idRadioOliPowerSteering =
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
                      children: checkMachine.checkList
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
                                    groupValue: checkMachine.idRadioAirRadiator,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkMachine.radioAirRadioator =
                                            data.text;
                                        checkMachine.idRadioAirRadiator =
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
                      'MINYAK REM',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkMachine.checkList
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
                                    groupValue: checkMachine.idRadioMinyakRem,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkMachine.radioMinyakRem = data.text;
                                        checkMachine.idRadioMinyakRem =
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
                      'KOPLING',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkMachine.checkList
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
                                    groupValue: checkMachine.idRadioKopling,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkMachine.radioKopling = data.text;
                                        checkMachine.idRadioKopling =
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
                      'ACCU',
                      style: robotow400sz12ccwhite,
                    ),
                    Spacer(),
                    Row(
                      children: checkMachine.checkList
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
                                    groupValue: checkMachine.idRadioAccu,
                                    value: data.index,
                                    onChanged: (val) {
                                      setState(() {
                                        checkMachine.radioAccu = data.text;
                                        checkMachine.idRadioAccu = data.index;
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
                        controller: checkMachine.controllerBBM,
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
            ],
          ),
        );
      },
    );
  }
}
