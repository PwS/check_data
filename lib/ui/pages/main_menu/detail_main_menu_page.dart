part of 'main_menu_page.dart';

class DetailMainMenuPage extends StatefulWidget {
  final String pageTittle;

  const DetailMainMenuPage({Key? key, required this.pageTittle})
      : super(key: key);

  @override
  _DetailMainMenuPageState createState() => _DetailMainMenuPageState();
}

class _DetailMainMenuPageState extends State<DetailMainMenuPage> {
  @override
  Widget build(BuildContext context) {
    var _sizeScreen = Screen(MediaQuery.of(context).size);
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: EdgeInsets.symmetric(
              vertical: _sizeScreen.hp(20), horizontal: _sizeScreen.wp(4)),
          child: Column(
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
              (widget.pageTittle == Config.commandoCar ||
                      widget.pageTittle == Config.ambulance01)
                  ? Expanded(
                      child: Column(
                      children: [
                        ///CHECK MESIN
                        ElevatedButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TaskCheckListVehicle(
                                        pageTittle: widget.pageTittle,
                                        subTittle: 'Check Mesin'))),
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(0.0)),
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFE2D1DED)),
                            ),
                            child: Container(
                              constraints: const BoxConstraints(
                                  minWidth: 100.0, minHeight: 50.0),
                              alignment: Alignment.center,
                              child: Text(
                                'CHECK MESIN',
                                style: robotow400sz12.copyWith(
                                    color: Colors.white),
                              ),
                            )),
                        SizedBox(
                          height: _sizeScreen.hp(2.5),
                        ),

                        ///CHECK FISIK
                        ElevatedButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TaskCheckListVehicle(
                                        pageTittle: widget.pageTittle,
                                        subTittle: Config.checkPhysical))),
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(0.0)),
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFE2D1DED)),
                            ),
                            child: Container(
                              constraints: const BoxConstraints(
                                  minWidth: 100.0, minHeight: 50.0),
                              alignment: Alignment.center,
                              child: Text(
                                'CHECK FISIK',
                                style: robotow400sz12.copyWith(
                                    color: Colors.white),
                              ),
                            )),
                        SizedBox(
                          height: _sizeScreen.hp(2.5),
                        ),

                        ///CHECK MEKANIK
                        ElevatedButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TaskCheckListVehicle(
                                        pageTittle: widget.pageTittle,
                                        subTittle: Config.checkMechanic))),
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(0.0)),
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFE2D1DED)),
                            ),
                            child: Container(
                              constraints: const BoxConstraints(
                                  minWidth: 100.0, minHeight: 50.0),
                              alignment: Alignment.center,
                              child: Text(
                                'CHECK MEKANIK',
                                style: robotow400sz12.copyWith(
                                    color: Colors.white),
                              ),
                            )),
                        SizedBox(
                          height: _sizeScreen.hp(2.5),
                        ),

                        ///CHECK ELEKTRIK
                        ElevatedButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TaskCheckListVehicle(
                                        pageTittle: widget.pageTittle,
                                        subTittle: Config.checkElectric))),
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(0.0)),
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFE2D1DED)),
                            ),
                            child: Container(
                              constraints: const BoxConstraints(
                                  minWidth: 100.0, minHeight: 50.0),
                              alignment: Alignment.center,
                              child: Text(
                                'CHECK ELEKTRIK',
                                style: robotow400sz12.copyWith(
                                    color: Colors.white),
                              ),
                            ))
                      ],
                    ))
                  : Expanded(
                      child: Column(
                      children: [
                        ///BAGIAN ENGINE
                        ElevatedButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TaskCheckListVehicle(
                                        pageTittle: widget.pageTittle,
                                        subTittle: Config.enginePart))),
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(0.0)),
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFE2D1DED)),
                            ),
                            child: Container(
                              constraints: const BoxConstraints(
                                  minWidth: 100.0, minHeight: 50.0),
                              alignment: Alignment.center,
                              child: Text(
                                'BAGIAN ENGINE',
                                style: robotow400sz12.copyWith(
                                    color: Colors.white),
                              ),
                            )),
                        SizedBox(
                          height: _sizeScreen.hp(2.5),
                        ),

                        ///BAGIAN POMPA
                        ElevatedButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TaskCheckListVehicle(
                                        pageTittle: widget.pageTittle,
                                        subTittle: Config.pumpPart))),
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(0.0)),
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFE2D1DED)),
                            ),
                            child: Container(
                              constraints: const BoxConstraints(
                                  minWidth: 100.0, minHeight: 50.0),
                              alignment: Alignment.center,
                              child: Text(
                                'BAGIAN POMPA',
                                style: robotow400sz12.copyWith(
                                    color: Colors.white),
                              ),
                            )),
                        SizedBox(
                          height: _sizeScreen.hp(2.5),
                        ),

                        ///BAGIAN DRY CHEMICAL POWDER
                        ElevatedButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TaskCheckListVehicle(
                                        pageTittle: widget.pageTittle,
                                        subTittle:
                                            Config.dryChemicalPowderPart))),
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(0.0)),
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFE2D1DED)),
                            ),
                            child: Container(
                              constraints: const BoxConstraints(
                                  minWidth: 100.0, minHeight: 50.0),
                              alignment: Alignment.center,
                              child: Text(
                                'BAGIAN DRY CHEMICAL POWDER',
                                style: robotow400sz12.copyWith(
                                    color: Colors.white),
                              ),
                            )),
                        SizedBox(
                          height: _sizeScreen.hp(2.5),
                        ),

                        ///BAGIAN PERALATAN
                        ElevatedButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TaskCheckListVehicle(
                                        pageTittle: widget.pageTittle,
                                        subTittle: Config.equipmentPart))),
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(0.0)),
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFE2D1DED)),
                            ),
                            child: Container(
                              constraints: const BoxConstraints(
                                  minWidth: 100.0, minHeight: 50.0),
                              alignment: Alignment.center,
                              child: Text(
                                'BAGIAN PERALATAN',
                                style: robotow400sz12.copyWith(
                                    color: Colors.white),
                              ),
                            ))
                      ],
                    ))
            ],
          ),
        ),
      ),
    );
  }
}
