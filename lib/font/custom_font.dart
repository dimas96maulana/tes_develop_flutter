import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFont{
  static TextStyle poppins10Regular({required Color color}) => GoogleFonts.poppins(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    color: color
  );

  static TextStyle poppins10Medium({required Color color}) => GoogleFonts.poppins(
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
    color: color
  );

  static TextStyle poppins10SemiBold({required Color color}) => GoogleFonts.poppins(
    fontSize: 10.sp,
    fontWeight: FontWeight.w600,
    color: color
  );

  static TextStyle poppins10Bold({required Color color}) => GoogleFonts.poppins(
    fontSize: 10.sp,
    fontWeight: FontWeight.bold,
    color: color
  ); 

  static TextStyle poppins12Regular({required Color color}) => GoogleFonts.poppins(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: color
  );

  static TextStyle poppins12Medium({required Color color}) => GoogleFonts.poppins(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: color
  );

  static TextStyle poppins12SemiBold({required Color color}) => GoogleFonts.poppins(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    color: color
  );

  static TextStyle poppins12Bold({required Color color}) => GoogleFonts.poppins(
    fontSize: 12.sp,
    fontWeight: FontWeight.bold,
    color: color
  ); 

  static TextStyle poppins14Regular({required Color color}) => GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: color
  );

  static TextStyle poppins14Medium({required Color color}) => GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: color
  );

  static TextStyle poppins14SemiBold({required Color color}) => GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: color
  );

  static TextStyle poppins14Bold({required Color color}) => GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
    color: color
  ); 
}