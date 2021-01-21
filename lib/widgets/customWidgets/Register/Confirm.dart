import 'package:flutter/material.dart';
import 'package:my_house/widgets/basicWidgets/Button/Button.dart';
import 'package:my_house/widgets/basicWidgets/Button/TextButton.dart';
import 'package:my_house/widgets/constants/DefaultStyleValues.dart';
import 'package:my_house/widgets/constants/ThemeColor.dart';

class Confirm extends StatefulWidget {

  Confirm({
    @required this.email,
    this.password
  });

  final String email;
  final String password;

  @override
  _ConfirmState createState() => _ConfirmState();
}

class _ConfirmState extends State<Confirm> {

  @override
  Widget build(BuildContext context) {

    TextEditingController inputController = TextEditingController();

    final signUpButton = Button(
      onPressed: () {},
      text: 'Complete Sign Up',
    );

    final cancelButton = Button(
      onPressed: () {
        Navigator.of(context).pushNamedAndRemoveUntil('/login', (Route<dynamic> route) => false);
      },
      text: 'Cancel',
      backgroundColor: Colors.transparent,
      fontColor: ThemeColor.BurnSienna,
    );

    final navigateToTerms = CustomTextButton(
        onPressed: () {},
        text: 'Terms'
    );

    final navigateToDataPolicy = CustomTextButton(
        onPressed: () {},
        text: 'Data Policy'
    );

    return Scaffold(
        appBar: AppBar(
          // title: Text(widget.title,
          //   style: TextStyle(
          //       color: Colors.black
          //   ),
          // ),
          leading: BackButton(
              color: Colors.black
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(36.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Text('Welcome to Pickome',
                style: TextStyle(
                  fontSize: DefaultStyleValues.defaultTitleSize,
                ),
              ),
              Text('${widget.email}',
                style: TextStyle(
                  fontSize: DefaultStyleValues.defaultTitleSize,
                ),
              ),
              // Text('${widget.password}'),
              SizedBox(height: 25.0),
              signUpButton,
              SizedBox(height: 10.0),
              cancelButton,
              Spacer(),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  navigateToTerms,
                  Text('and'),
                  navigateToDataPolicy
                ],
              )
            ],
          ),
        )
    );
  }
}
