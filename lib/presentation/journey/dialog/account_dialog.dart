import 'package:chamekhan/presentation/widgets/custom_dialog.dart';
import 'package:flutter/material.dart';

class AccountDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      icon: Icon(
        Icons.account_circle,
        size: 30,
      ),
      children: <Widget>[
        Text(
          'name family / nickname',
          style: TextStyle(fontSize: 20),
        ),
        // SizedBox(height: 20,),
        Text('Phone number: 09103593673'),
        FlatButton(
          child: Text('Log out'),
          color: Colors.red,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)),
          onPressed: () {},
        )
      ],
    );
  }
}
