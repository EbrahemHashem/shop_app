import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/features/login/presentation/view_model/login_cubit/login_cubit.dart';
import 'package:shop_app/features/login/presentation/views/widgets/custom_text_form_field.dart';
import 'package:shop_app/features/register/presentation/views/register.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(listener: (context, state) {
      if (state is LoginSuccess) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Success")));
      } else if (state is LoginFailure) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.errMessage)));
      }
    }, builder: (context, state) {
      return Scaffold(
        body: SafeArea(child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  SizedBox(height: constraints.maxHeight * 0.1),
                  Image.asset(
                    "assets/images/shop_cart.png",
                    height: 100,
                  ),
                  SizedBox(height: constraints.maxHeight * 0.1),
                  Text(
                    "Sign In",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: constraints.maxHeight * 0.05),
                  Form(
                    key: context.read<LoginCubit>().signInFormKey,
                    child: Column(
                      children: [
                        // email
                        CustomTextFormField(
                          controller: context.read<LoginCubit>().signInEmail,
                          hintText: 'Email',
                          keyboardType: TextInputType.emailAddress,
                        ),

                        Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            // password
                            child: CustomTextFormField(
                              obscureText: true,
                              controller: context.read<LoginCubit>().signInPassword,
                              hintText: 'Password',
                              keyboardType: TextInputType.text,
                            )),
                        state is LoginLoading
                            ? const CircularProgressIndicator()
                            : ElevatedButton(
                                onPressed: () {
                                  // navigate to home view
                                  context.read<LoginCubit>().signIn();
                                },
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: const Color(0xFF00BF6D),
                                  foregroundColor: Colors.white,
                                  minimumSize: const Size(double.infinity, 48),
                                  shape: const StadiumBorder(),
                                ),
                                child: const Text("Sign in"),
                              ),
                        const SizedBox(height: 16.0),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.64),
                                ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Register()),
                            );
                          },
                          child: Text.rich(
                            const TextSpan(
                              text: "Don’t have an account? ",
                              children: [
                                TextSpan(
                                  text: "Sign Up",
                                  style: TextStyle(color: Color(0xFF00BF6D)),
                                ),
                              ],
                            ),
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.64),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        )),
      );
    });
  }
}
