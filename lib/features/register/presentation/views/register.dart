import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  Register({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: LayoutBuilder(builder: (context, constraints) {
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
                key: _formKey,
                child: Column(
                  children: [
                    // full name
                    TextFormField(
                      style: const TextStyle(color: Colors.amber),
                      decoration: const InputDecoration(
                        hintStyle: TextStyle(color: Colors.amber),
                        hintText: 'Full name',
                        filled: true,
                        fillColor: Color(0xFFF5FCF9),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.0 * 1.5, vertical: 16.0),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                      onSaved: (name) {
                        // Save it
                      },
                    ),
                    const SizedBox(height: 16.0),
                    // email
                    TextFormField(
                      style: const TextStyle(color: Colors.amber),
                      decoration: const InputDecoration(
                        hintStyle: TextStyle(color: Colors.amber),
                        hintText: 'Email',
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
                      // password
                      child: TextFormField(
                        style: const TextStyle(color: Colors.amber),
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
                        obscureText: true,
                        onSaved: (passaword) {
                          // Save it
                        },
                      ),
                    ),
                    // sign up button
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save(); //navigate to login
                          }
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
                      onPressed: () {},
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
    }));
  }
}
