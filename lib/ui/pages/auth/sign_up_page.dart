import 'package:check_data/state_management/sign_up_notifier.dart';
import 'package:check_data/utils/theme/theme.dart';
import 'package:check_data/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _sizeScreen = Screen(MediaQuery.of(context).size);
    return Scaffold(body: Consumer<SignUpNotifier>(
      builder: (context, signUp, _) {
        return Scaffold(
          backgroundColor: kPrimaryColor,
          body: SafeArea(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: _sizeScreen.wp(10)),
            child: ListView(
              children: [
                SizedBox(
                  height: _sizeScreen.hp(10),
                ),
                Text(
                  'Sign Up',
                  style: reemKufiw400sz14.copyWith(fontSize: 20),
                ),
                SizedBox(
                  height: _sizeScreen.hp(5),
                ),
                Form(
                  key: signUp.globalSignUpKey,
                  child: Column(
                    children: [
                      ///NAMA
                      Container(
                        width: _sizeScreen.wp(80),
                        child: Row(
                          children: [
                            Text(
                              'Nama',
                              style: rosarivow400sz14,
                            ),
                            Spacer(),
                            SizedBox(
                              width: _sizeScreen.wp(50),
                              child: TextFormField(
                                controller: signUp.controllerUserName,
                                keyboardType: TextInputType.name,
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
                                  hintText: 'Ketik UserName',
                                  hintStyle: nunitoSansw400sz14,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide:
                                          BorderSide(color: Colors.red)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: _sizeScreen.hp(2),
                      ),

                      ///NIK
                      Container(
                        width: _sizeScreen.wp(80),
                        child: Row(
                          children: [
                            Text(
                              'NIK',
                              style: rosarivow400sz14,
                            ),
                            Spacer(),
                            SizedBox(
                              width: _sizeScreen.wp(50),
                              child: TextFormField(
                                controller: signUp.controllerNIK,
                                keyboardType: TextInputType.name,
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
                                  hintText: 'Ketik NIK',
                                  hintStyle: nunitoSansw400sz14,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide:
                                          BorderSide(color: Colors.red)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: _sizeScreen.hp(2),
                      ),

                      ///JENIS KELAMIN
                      Container(
                        width: _sizeScreen.wp(80),
                        child: Row(
                          children: [
                            Text(
                              'Jenis Kelamin',
                              style: rosarivow400sz14,
                            ),
                            Spacer(),
                            SizedBox(
                              width: _sizeScreen.wp(50),
                              child: TextFormField(
                                controller: signUp.controllerGender,
                                keyboardType: TextInputType.name,
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
                                  hintText: 'Ketikan Jenis Kelamin',
                                  hintStyle: nunitoSansw400sz14,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide:
                                          BorderSide(color: Colors.red)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: _sizeScreen.hp(2),
                      ),

                      ///NO HP
                      Container(
                        width: _sizeScreen.wp(80),
                        child: Row(
                          children: [
                            Text(
                              'No Hp',
                              style: rosarivow400sz14,
                            ),
                            Spacer(),
                            SizedBox(
                              width: _sizeScreen.wp(50),
                              child: TextFormField(
                                controller: signUp.controllerPhoneNumber,
                                keyboardType: TextInputType.phone,
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
                                  hintText: 'Ketik No Hp',
                                  hintStyle: nunitoSansw400sz14,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide:
                                          BorderSide(color: Colors.red)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: _sizeScreen.hp(2),
                      ),

                      ///ALAMAT
                      Container(
                        width: _sizeScreen.wp(80),
                        child: Row(
                          children: [
                            Text(
                              'Alamat',
                              style: rosarivow400sz14,
                            ),
                            Spacer(),
                            SizedBox(
                              width: _sizeScreen.wp(50),
                              child: TextFormField(
                                controller: signUp.controllerUserAddress,
                                keyboardType: TextInputType.streetAddress,
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
                                  hintText: 'Ketik Alamat',
                                  hintStyle: nunitoSansw400sz14,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide:
                                          BorderSide(color: Colors.red)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: _sizeScreen.hp(5),
                ),
                ElevatedButton(
                  onPressed: () => signUp.signUpUser(context),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40))),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(0.0)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFE2614F3)),
                  ),
                  child: Container(
                      constraints: const BoxConstraints(
                          minWidth: 100.0, minHeight: 50.0),
                      // min sizes for Material buttons
                      alignment: Alignment.center,
                      child: Text('Register',
                          style: robotow400sz12.copyWith(color: Colors.white))),
                ),
              ],
            ),
          )),
        );
      },
    ));
  }
}
