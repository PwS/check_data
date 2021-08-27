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
                    height: _sizeScreen.hp(5),
                  ),

                  ///TASKCHECKLIST
                  Container(
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
                              Radio(
                                groupValue: null,
                                value: null,
                                onChanged: (Null? value) {},
                              )
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
                              Radio(
                                groupValue: null,
                                value: null,
                                onChanged: (Null? value) {},
                              )
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
                              Radio(
                                groupValue: null,
                                value: null,
                                onChanged: (Null? value) {},
                              )
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
                              Radio(
                                groupValue: null,
                                value: null,
                                onChanged: (Null? value) {},
                              )
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
                              Radio(
                                groupValue: null,
                                value: null,
                                onChanged: (Null? value) {},
                              )
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
                              Radio(
                                groupValue: null,
                                value: null,
                                onChanged: (Null? value) {},
                              )
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
                                  controller: mainTask.controllerBBM,
                                  keyboardType: TextInputType.number,
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: (value) => Provider.of<Validation>(
                                          context,
                                          listen: false)
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
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        borderSide:
                                            BorderSide(color: Colors.red)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: _sizeScreen.hp(10),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: _sizeScreen.wp(2)),
                    child: Row(
                      children: [
                        ElevatedButton(
                            onPressed: () => debugPrint('SUBMIT'),
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(0.0)),
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFE3AE25F)),
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
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFE3AE25F)),
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
        );
      },
    ));
  }
}
