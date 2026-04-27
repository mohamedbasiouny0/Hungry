import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:test2/core/constant/app_colors.dart';
import 'package:test2/core/constant/assets.dart';
import 'package:test2/core/routes/routing_helper.dart';
import 'package:test2/features/authentication/presentation/views/widgets/custom_elevated_button.dart';
import 'package:test2/features/authentication/presentation/views/widgets/custom_text_form_field.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final GlobalKey<FormState> formKey = GlobalKey();
  String? passwordHolder = '';
  bool visablePassword = false;
  bool visableConfirmPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            margin: .symmetric(horizontal: 16.w),
            padding: .symmetric(horizontal: 16.w),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              // ignore: prefer_const_constructors
              borderRadius: .all(.circular(20.r)),
            ),
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: .min,
                  children: [
                    50.verticalSpace,
                    SvgPicture.asset(
                      Assets.imagesHungryLogo,
                      width: 258.w,
                      height: 40.h,
                    ),
                    50.verticalSpace,
                    CustomTextFormField(
                      hintText: 'Name',
                      validator: (value) => nameValidation(value),
                      visiable: false,
                    ),
                    16.verticalSpace,
                    CustomTextFormField(
                      hintText: 'Email Address',
                      validator: (value) => emailValidation(value),
                      visiable: false,
                    ),
                    16.verticalSpace,
                    CustomTextFormField(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          visablePassword = !visablePassword;
                          setState(() {});
                        },
                        child: Icon(
                          visablePassword
                              ? CupertinoIcons.eye_slash
                              : CupertinoIcons.eye,
                        ),
                      ),
                      hintText: 'Password',
                      validator: (value) {
                        return passwordValidation(value);
                      },
                      visiable: visablePassword,
                    ),
                    16.verticalSpace,
                    CustomTextFormField(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          visableConfirmPassword = !visableConfirmPassword;
                          setState(() {});
                        },
                        child: Icon(
                          visableConfirmPassword
                              ? CupertinoIcons.eye_slash
                              : CupertinoIcons.eye,
                        ),
                      ),
                      hintText: 'Confirm Password',
                      validator: (value) {
                        return confirmPasswordValidation(value);
                      },
                      visiable: visableConfirmPassword,
                    ),
                    50.verticalSpace,
                    Row(
                      children: [
                        Expanded(
                          child: CustomElevatedButton(
                            text: 'Sign Up',
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                context.go(RoutingHelper.root);
                              }
                            },
                            backgroundColor: Colors.white,
                            foregroundColor: AppColors.primaryColor,
                            side: BorderSide(color: Colors.white, width: 3.w),
                          ),
                        ),
                        16.horizontalSpace,
                        Expanded(
                          child: CustomElevatedButton(
                            text: 'Login',
                            onPressed: () {
                              context.pop();
                            },
                            side: BorderSide(color: Colors.white, width: 3.w),
                          ),
                        ),
                      ],
                    ),
                    50.verticalSpace,
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  String? nameValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Name is required';
    }
    return null;
  }

  String? passwordValidation(String? value) {
    passwordHolder = value;
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 8) {
      return 'At least 8 characters';
    }
    return null;
  }

  String? confirmPasswordValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (passwordHolder != value) {
      return 'passwword miss matching';
    }
    return null;
  }

  String? emailValidation(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Email is required';
    }
    final emailRegex = RegExp(r'^[\w\.-]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value.trim())) {
      return 'Enter a valid email';
    }
    return null;
  }
}
