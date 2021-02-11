import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pickome/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:pickome/presentation/routes/router.gr.dart';
import 'package:pickome/presentation/screens/register/confirm/widgets/terms_and_data_policy.dart';
import 'package:pickome/presentation/widgets/basicWidgets/Button/Button.dart';
import 'package:pickome/presentation/widgets/constants/DefaultStyleValues.dart';
import 'package:pickome/presentation/widgets/constants/ThemeColor.dart';

class Confirm extends StatelessWidget {
  const Confirm();

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: DefaultStyleValues.defaultTitleSize,
      color: Colors.white70,
    );

    return Padding(
      padding: const EdgeInsets.all(36.0),
      child: BlocBuilder<SignInFormBloc, SignInFormState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const Text('Welcome to Pickome', style: textStyle),
              Text(
                  context
                      .read<SignInFormBloc>()
                      .state
                      .username
                      .value
                      .fold((_) => null, (val) => val),
                  style: textStyle),
              const SizedBox(height: 25.0),
              Button(
                onPressed: () {
                  // authenticate user
                },
                text: 'Complete Sign Up',
              ),
              const SizedBox(height: 10.0),
              Button(
                onPressed: () {
                  ExtendedNavigator.of(context).replace(Routes.signInScreen);
                },
                text: 'Cancel',
                backgroundColor: Colors.transparent,
                fontColor: ThemeColor.BurnSienna,
              ),
              const Spacer(),
              const Divider(),
              TermsAndDataPolicy(),
            ],
          );
        },
      ),
    );
  }
}
