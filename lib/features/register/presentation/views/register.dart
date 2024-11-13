import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/features/login/presentation/views/login.dart';
import 'package:shop_app/features/login/presentation/views/widgets/custom_text_form_field.dart';
import 'package:shop_app/features/register/presentation/view_model/register_cubit/register_cubit.dart';

class Register extends StatelessWidget {
  const Register({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(listener: (context, state) {
      if (state is RegisterSuccess) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Success")));
      } else if (state is RegisterFailure) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.errMessage)));
      }
    }, builder: (context, state) {
      return Scaffold(
        body: SafeArea(child: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  SizedBox(height: constraints.maxHeight * 0.08),
                  Image.asset(
                    "assets/images/shop_cart.png",
                    height: 100,
                  ),
                  SizedBox(height: constraints.maxHeight * 0.08),
                  Text(
                    "Sign Up",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: constraints.maxHeight * 0.05),
                  Form(
                    key: context.read<RegisterCubit>().signUpFormKey,
                    child: Column(
                      children: [
                        // full name.
                        CustomTextFormField(
                          controller: context.read<RegisterCubit>().signUpName,
                          hintText: 'Full name',
                          keyboardType: TextInputType.text,
                        ),
                        const SizedBox(height: 16.0),
                        // phone
                        CustomTextFormField(
                          controller: context.read<RegisterCubit>().signUpPhone,
                          hintText: 'Phone',
                          keyboardType: TextInputType.phone,
                        ),
                        const SizedBox(height: 16.0),
                        // email
                        CustomTextFormField(
                          controller: context.read<RegisterCubit>().signUpEmail,
                          hintText: 'Email',
                          keyboardType: TextInputType.emailAddress,
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            // password
                            child: CustomTextFormField(
                              controller: context.read<RegisterCubit>().signUpPassword,
                              hintText: 'Password',
                              keyboardType: TextInputType.text,
                              obscureText: true,
                            )),
                        // sign up button
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: state is RegisterLoading
                              ? const CircularProgressIndicator()
                              : ElevatedButton(
                                  onPressed: () {
                                    context.read<RegisterCubit>().signUp();
                                  },
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: const Color(0xFF00BF6D),
                                    foregroundColor: Colors.white,
                                    minimumSize: const Size(double.infinity, 48),
                                    shape: const StadiumBorder(),
                                  ),
                                  child: const Text("Sign Up"),
                                ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Login()),
                            );
                          },
                          child: Text.rich(
                            const TextSpan(
                              text: "Already have an account? ",
                              children: [
                                TextSpan(
                                  text: "Sign in",
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
              ));
        })),
      );
    });
  }
}
