import 'package:appoinx/core/widgets/app_checkbox_wrapper.dart';
import 'package:appoinx/core/widgets/app_text_field_wrapper.dart';
import 'package:flutter/material.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          AppTextFieldWrapper(
            label: "Email",
            child: TextFormField(
              decoration: const InputDecoration(hintText: "Enter email"),
            ),
          ),
          const SizedBox(height: 16),
          // TODO: Add syffix icon button to control visibility of password
          AppTextFieldWrapper(
            label: "Password",
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "********",
              ),
            ),
          ),
          const SizedBox(height: 16),
          AppTextFieldWrapper(
            label: "Confirm Password",
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "********",
              ),
            ),
          ),
          const SizedBox(height: 16),
          AppCheckboxWrapper(
            label: "Remember Password",
            child: Checkbox(value: true, onChanged: (value) {}),
          ),
          const SizedBox(height: 28),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Sign Up"),
          ),
        ],
      ),
    );
  }
}
