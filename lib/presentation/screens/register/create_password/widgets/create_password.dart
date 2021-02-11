import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pickome/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:pickome/presentation/routes/router.gr.dart';
import 'package:pickome/presentation/screens/register/add_phone_or_email/add_phone_or_email_screen.dart';
import 'package:pickome/presentation/widgets/basicWidgets/text_field/password_field.dart';
import 'package:pickome/presentation/widgets/basicWidgets/Button/Button.dart';

class CreatePassword extends StatelessWidget {
  const CreatePassword({
    @required this.title,
    this.hintText,
    this.messages = '',
  });

  final String title;
  final String hintText;
  final String messages;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(36.0),
      child: BlocBuilder<SignInFormBloc, SignInFormState>(
        builder: (context, state) {
          return Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PasswordField(
                  onChanged: (value) => {
                    context.read<SignInFormBloc>().add(
                          SignInFormEvent.passwordChanged(value),
                        ),
                  },
                  validator: (_) =>
                      context.read<SignInFormBloc>().state.password.value.fold(
                          (f) => f.maybeMap(
                                shortPassword: (_) => "Short Password",
                                orElse: () => null,
                              ),
                          (_) => null),
                ),
                const SizedBox(height: 15.0),
                Button(
                  onPressed: () {
                    ExtendedNavigator.of(context).push(
                      Routes.addPhoneOrEmailScreen,
                      arguments: AddPhoneOrEmailScreenArguments(
                        signInFormBloc: context.read<SignInFormBloc>(),
                      ),
                    );
                  },
                  text: 'Next',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
