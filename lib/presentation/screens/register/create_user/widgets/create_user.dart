import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pickome/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:pickome/presentation/widgets/basicWidgets/text_field/input_field.dart';
import 'package:pickome/presentation/widgets/basicWidgets/button/button.dart';

class CreateUser extends StatelessWidget {
  const CreateUser({
    @required this.onPressed,
    @required this.title,
    this.hintText,
    this.messages = '',
  });

  final Function onPressed;
  final String title;
  final String hintText;
  final String messages;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(36.0),
      child: Form(
        // autovalidate: state.showErrorMessages,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: ListView(
          children: [
            // crossAxisAlignment: CrossAxisAlignment.start,
            // children: [
            BlocBuilder<SignInFormBloc, SignInFormState>(
              builder: (context, state) {
                return InputField(
                  // inputType: TextInputType.text,
                  hintText: hintText,
                  onChanged: (value) => {
                    context.read<SignInFormBloc>().add(
                          SignInFormEvent.emailChanged(value),
                        ),
                  },
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
                  // prefixIcon: Icon(Icons.mail_outline_rounded),
                );
              },
            ),
            const SizedBox(height: 15.0),
            Button(
              onPressed: () => onPressed(),
              text: 'Next',
            ),
          ],
        ),
      ),
    );
  }
}
