import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  Login({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: LayoutBuilder(
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
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      style: const TextStyle(color: Colors.amber),
                      decoration: const InputDecoration(
                        hintStyle: TextStyle(color: Colors.amber),
                        hintText: 'email',
                        filled: true,
                        fillColor: Color(0xFFF5FCF9),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.0 * 1.5, vertical: 16.0),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      onSaved: (email) {
                        // Save it
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.amber),
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintStyle: TextStyle(color: Colors.amber),
                          hintText: 'Password',
                          filled: true,
                          fillColor: Color(0xFFF5FCF9),
                          contentPadding: EdgeInsets.symmetric(horizontal: 16.0 * 1.5, vertical: 16.0),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                        ),
                        onSaved: (passaword) {
                          // Save it
                        },
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          // Navigate to the main screen
                        }
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
                      onPressed: () {},
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
    ));
  }
}
