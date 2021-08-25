import 'package:check_data/utils/theme/theme.dart';
import 'package:check_data/utils/utils.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _sizeScreen = Screen(MediaQuery.of(context).size);
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: _sizeScreen.wp(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: _sizeScreen.hp(10),
            ),
            Text(
              'Sign Up',
              style: reemKufiw400sz12,
            ),
            SizedBox(
              height: _sizeScreen.hp(5),
            ),
            Container(
              child: Text('Nama'),
            ),
            Container(
              child: Text('NIK'),
            ),
            Container(
              child: Text('Jenis Kelamin'),
            ),
            Container(
              child: Text('No HP'),
            ),
            Container(
              child: Text('Alamat'),
            ),
            SizedBox(
              height: _sizeScreen.hp(10),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40))),
                padding:
                    MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(0.0)),
                backgroundColor: MaterialStateProperty.all(Color(0xFE2614F3)),
              ),
              child: Container(
                  constraints:
                      const BoxConstraints(minWidth: 100.0, minHeight: 50.0),
                  // min sizes for Material buttons
                  alignment: Alignment.center,
                  child: Text('Register', style: robotow400sz12)),
            ),
          ],
        ),
      )),
    );
  }
}
