import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../../../core/resources/colors_manager.dart';
import '../../../../../core/resources/values_manager.dart';

class GlassPlayButton extends StatelessWidget {
  final void Function()? onTap;

  const GlassPlayButton({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: AppValues.v8,
      bottom: AppValues.v8,
      child: MaterialButton(
        onPressed: onTap,
        padding: EdgeInsets.zero,
        minWidth: AppValues.v0,
        shape: const CircleBorder(
            side:
                BorderSide(width: AppValues.v1, color: ColorsManager.white38)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppValues.v100),
          child: BackdropFilter(
            filter:
                ImageFilter.blur(sigmaX: AppValues.v4, sigmaY: AppValues.v4),
            child: Container(
                padding: const EdgeInsets.all(AppValues.v10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(AppValues.v0),
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [ColorsManager.white60, ColorsManager.white10]),
                  borderRadius: BorderRadius.circular(AppValues.v100),
                ),
                child: const Icon(
                  Icons.play_arrow,
                  size: AppValues.v24,
                )),
          ),
        ),
      ),
    );
  }
}
