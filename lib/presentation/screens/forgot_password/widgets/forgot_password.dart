import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pickome/application/auth/sign_in_form/sign_in_form_bloc.dart';

import 'package:pickome/presentation/screens/forgot_password/widgets/forgot_password_icon.dart';
import 'package:pickome/presentation/screens/forgot_password/widgets/forgot_password_message.dart';

import 'package:pickome/presentation/widgets/basicWidgets/Button/Button.dart';
import 'package:pickome/presentation/widgets/basicWidgets/text_field/input_field.dart';
import 'package:pickome/presentation/widgets/basicWidgets/pop_up_alert.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(listener: (_, state) {
      if (state.forgotPasswordRequestSent) {
        showDialog(context: context, builder: (context) => PopUpAlert());
      }
    }, builder: (context, _) {
      return Padding(
        padding: const EdgeInsets.all(36.0),
        child: Form(
          // autovalidate: state.showErrorMessages,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: ListView(
            children: [
              const ForgotPasswordIcon(
                iconData: Icons.lock_outline_rounded,
              ),
              const ForgotPasswordMessage(
                  message:
                      "Enter your email and we'll send you the link to get back into your account."),
              const SizedBox(height: 15.0),
              InputField(
                inputType: TextInputType.emailAddress,
                hintText: 'Email',
                validator: (_) => context
                    .read<SignInFormBloc>()
                    .state
                    .emailAddress
                    .value
                    .fold(
                        (f) => f.maybeMap(
                              invalidEmail: (_) => "Invalid Email",
                              orElse: () => null,
                            ),
                        (_) => null),
                onChanged: (value) => {
                  context
                      .read<SignInFormBloc>()
                      .add(SignInFormEvent.emailChanged(value)),
                },
                // prefixIcon: Icon(Icons.mail_outline_rounded),
              ),
              const SizedBox(height: 15.0),
              Button(
                onPressed: () {
                  context
                      .read<SignInFormBloc>()
                      .add(const SignInFormEvent.forgotPasswordPressed());
                },
                text: 'Send Recovery Link',
              ),
            ],
          ),
        ),
      );
    });
  }
}
