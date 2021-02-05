import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pickome/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:pickome/presentation/screens/sign_in/widgets/Logo.dart';
import 'package:pickome/presentation/widgets/basicWidgets/Button/Button.dart';
import 'package:pickome/presentation/widgets/basicWidgets/Button/text_button.dart';
import 'package:pickome/presentation/widgets/basicWidgets/divide_with_text.dart';
import 'package:pickome/presentation/widgets/basicWidgets/text_field/input_field.dart';
import 'package:pickome/presentation/widgets/basicWidgets/text_field/password_field.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
            () => {},
            (either) => either.fold(
                (failure) => {
                      // display error message
                      failure.map(
                          cancelledByUser: (_) => 'Cancelled',
                          serverError: (_) => 'Server Error',
                          emailAlreadyInUse: (_) => 'Email Already In Use',
                          invalidEmailAndPasswordCombination: (_) =>
                              'Invalid Email and Password Combination')
                    },
                (_) => {
                      // navigate to home page
                    }));
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(36.0),
          child: Form(
              // autovalidate: state.showErrorMessages,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: ListView(
                children: [
                  Logo(),
                  const SizedBox(height: 40.0),
                  InputField(
                    onChanged: (value) => {
                      context
                          .read<SignInFormBloc>()
                          .add(SignInFormEvent.emailChanged(value)),
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
                    prefixIcon: const Icon(Icons.mail_outline_rounded),
                    hintText: 'Email',
                    inputType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 15.0),
                  PasswordField(
                    onChanged: (value) => {
                      context
                          .read<SignInFormBloc>()
                          .add(SignInFormEvent.passwordChanged(value)),
                    },
                    validator: (_) => context
                        .read<SignInFormBloc>()
                        .state
                        .password
                        .value
                        .fold(
                            (f) => f.maybeMap(
                                  shortPassword: (_) => "Short Password",
                                  orElse: () => null,
                                ),
                            (_) => null),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomTextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/forgotPassword');
                          },
                          text: 'Forgot Password?')
                    ],
                  ),
                  const SizedBox(height: 15.0),
                  Button(
                      onPressed: () {
                        context.read<SignInFormBloc>().add(const SignInFormEvent
                            .signInWithEmailAndPasswordPressed());
                      },
                      text: 'Sign In'),
                  const SizedBox(height: 15.0),
                  const DividerWithText(
                    text: 'OR',
                    dividerColor: Colors.white,
                    fontColor: Colors.white70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?",
                          style: TextStyle(color: Colors.white70)
                          // style: TextStyle(color: Colors.black45)
                          ),
                      CustomTextButton(
                          onPressed: () {
                            context.read<SignInFormBloc>().add(
                                const SignInFormEvent
                                    .registerWithEmailAndPasswordPressed());
                            // Navigator.pushNamed(context, '/register');
                          },
                          text: 'Sign Up'),
                    ],
                  ),
                ],
              )),
        );
      },
    );
  }
}
