import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:test2/core/constant/app_colors.dart';
import 'package:test2/core/constant/app_styles.dart';
import 'package:test2/core/constant/assets.dart';
import 'package:test2/core/routes/routing_helper.dart';
import 'package:test2/features/authentication/presentation/views/widgets/custom_elevated_button.dart';
import 'package:test2/features/authentication/presentation/views/widgets/custom_text_form_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> formKey = GlobalKey();
  bool visable = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: .symmetric(horizontal: 16.r),
          padding: .symmetric(horizontal: 16.r),
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
                  5.verticalSpace,
                  Text(
                    'Take it easy, take it combo',
                    style: AppStyles.robtoSemiBold14.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  50.verticalSpace,
                  CustomTextFormField(
                    hintText: 'Enter Your Email',
                    validator: (value) => emailValidation(value),
                    visiable: false,
                  ),
                  16.verticalSpace,
                  CustomTextFormField(
                    suffixIcon: GestureDetector(
                      onTap: () {
                        visable = !visable;
                        setState(() {});
                      },
                      child: Icon(
                        visable ? CupertinoIcons.eye_slash : CupertinoIcons.eye,
                      ),
                    ),
                    hintText: 'Enter Your Password',
                    validator: (value) {
                      return passwordValidation(value);
                    },
                    visiable: visable,
                  ),
                  50.verticalSpace,
                  Row(
                    children: [
                      Expanded(
                        child: CustomElevatedButton(
                          text: 'Login',
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              context.go(RoutingHelper.root);
                            }
                          },
                          backgroundColor: Colors.white,
                          foregroundColor: AppColors.primaryColor,
                          side: const BorderSide(color: Colors.white, width: 3),
                        ),
                      ),
                      16.horizontalSpace,
                      Expanded(
                        child: CustomElevatedButton(
                          text: 'SignUp',
                          onPressed: () {
                            context.push(RoutingHelper.signUp);
                          },
                          side: const BorderSide(color: Colors.white, width: 3),
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
    );
  }

  String? passwordValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
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
