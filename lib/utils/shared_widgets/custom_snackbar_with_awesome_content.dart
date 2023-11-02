import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

SnackBar buildCustomSnackBar(
    {required String title,
    required ContentType contentType,
    required Color color}) {
  return SnackBar(
    elevation: 0,
    width: double.infinity,
    behavior: SnackBarBehavior.floating,
    duration: const Duration(seconds: 3),
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      color: color,
      titleFontSize: 16.sp,
      messageFontSize: 12,
      title: title,
      message: "",
      contentType: contentType,
    ),
  );
}
