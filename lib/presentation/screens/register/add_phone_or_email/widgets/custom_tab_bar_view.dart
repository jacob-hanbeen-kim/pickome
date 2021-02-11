import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pickome/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:pickome/presentation/routes/router.gr.dart';
import 'package:pickome/presentation/widgets/basicWidgets/text_field/phone_number_field.dart';
import 'package:pickome/presentation/widgets/basicWidgets/text_field/input_field.dart';
import 'package:pickome/presentation/widgets/basicWidgets/Button/Button.dart';

class CustomTabBarView extends StatelessWidget {
  const CustomTabBarView();

  @override
  Widget build(BuildContext context) {
    final nextButton = Button(
      onPressed: () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(builder: (context) => ConfirmPage(username: username, password: password))
        // );
        ExtendedNavigator.of(context).push(
          Routes.confirmScreen,
          arguments: ConfirmScreenArguments(
            signInFormBloc: context.read<SignInFormBloc>(),
          ),
        );
      },
      text: 'Next',
    );

    return BlocBuilder<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return TabBarView(children: [
          Padding(
            padding: const EdgeInsets.all(36.0),
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  PhoneWidget(),
                  const SizedBox(height: 15.0),
                  nextButton,
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(36.0),
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InputField(
                    inputType: TextInputType.emailAddress,
                    hintText: 'Email',
                    prefixIcon: const Icon(Icons.mail_outline_rounded),
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
                  ),
                  const SizedBox(height: 15.0),
                  nextButton
                ],
              ),
            ),
          )
        ]);
      },
    );
  }
}
