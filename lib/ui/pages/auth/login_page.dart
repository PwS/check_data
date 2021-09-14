import 'package:check_data/state_management/idm_notifier.dart';
import 'package:check_data/ui/pages/auth/sign_up_page.dart';
import 'package:check_data/utils/theme/theme.dart';
import 'package:check_data/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _sizeScreen = Screen(MediaQuery.of(context).size);
    return Scaffold(body: Consumer<IDMNotifier>(
      builder: (context, idm, _) {
        return Scaffold(
          backgroundColor: kPrimaryColor,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: _sizeScreen.wp(10)),
              child: Column(
                children: [
                  SizedBox(
                    height: _sizeScreen.hp(8),
                  ),
                  Text(
                    'APLIKASI CHEKLIST DATA KENDARAAN ARFF',
                    textAlign: TextAlign.center,
                    style: rosarivow400sz14.copyWith(height: 2),
                  ),
                  SizedBox(
                    height: _sizeScreen.hp(7),
                  ),
                  Form(
                    key: Provider.of<IDMNotifier>(context, listen: false)
                        .globalLoginKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        ///NIK
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "UserName",
                                style: nunitoSansw700sz12,
                              ),
                              SizedBox(
                                height: _sizeScreen.hp(1),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: TextFormField(
                                  enabled: idm.widgetEnable,
                                  controller: idm.controllerUserName,
                                  keyboardType: TextInputType.emailAddress,
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
                                    hintText: 'Ketik User Name',
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
                        SizedBox(height: _sizeScreen.hp(3)),

                        ///Password
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Kata Sandi',
                                style: nunitoSansw700sz12,
                              ),
                              SizedBox(
                                height: _sizeScreen.hp(1),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: TextFormField(
                                  enabled: idm.widgetEnable,
                                  enableSuggestions: false,
                                  controller: idm.controllerPassword,
                                  style: nunitoSansw400sz14,
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: idm.secureText,
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: (value) => Provider.of<Validation>(
                                          context,
                                          listen: false)
                                      .stringValidation(value!),
                                  decoration: InputDecoration(
                                    fillColor: Colors.black,
                                    filled: true,
                                    hintText: 'Tulis kata sandi',
                                    hintStyle: nunitoSansw400sz14,
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    errorBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        borderSide:
                                            BorderSide(color: Colors.red)),
                                    suffixIcon: IconButton(
                                        padding: EdgeInsets.only(
                                            right: _sizeScreen.wp(1.5)),
                                        icon: Icon(
                                          idm.secureText
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                          color: Color(0xFE0A66C2),
                                        ),
                                        onPressed: idm.showHidePass),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: _sizeScreen.hp(3)),

                        ///Button Login
                        idm.loginProcess
                            ? Center(child: CircularProgressIndicator())
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () =>
                                        idm.authenticationUser(context),
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40))),
                                      padding:
                                          MaterialStateProperty.all<EdgeInsets>(
                                              EdgeInsets.all(0.0)),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color(0xFE3AE25F)),
                                    ),
                                    child: Container(
                                        constraints: const BoxConstraints(
                                            minWidth: 100.0, minHeight: 50.0),
                                        // min sizes for Material buttons
                                        alignment: Alignment.center,
                                        child: Text('Login',
                                            style: robotow400sz12)),
                                  ),
                                  SizedBox(
                                    width: _sizeScreen.wp(20),
                                  ),
                                  ElevatedButton(
                                    onPressed: () => Get.to(() => SignUpPage()),
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40))),
                                      padding:
                                          MaterialStateProperty.all<EdgeInsets>(
                                              EdgeInsets.all(0.0)),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color(0xFE2614F3)),
                                    ),
                                    child: Container(
                                        constraints: const BoxConstraints(
                                            minWidth: 100.0, minHeight: 50.0),
                                        // min sizes for Material buttons
                                        alignment: Alignment.center,
                                        child: Text('Register',
                                            style: robotow400sz12)),
                                  ),
                                ],
                              ),
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
