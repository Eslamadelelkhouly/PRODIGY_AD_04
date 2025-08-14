import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerGrid extends StatelessWidget {
  const ContainerGrid({
    super.key,
    this.onTap,
    required this.kind,
  });
  final void Function()? onTap;
  final String kind;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 50.w,
        height: 50.h,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.red, width: 3),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            '$kind',
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
