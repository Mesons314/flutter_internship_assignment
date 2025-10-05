import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sportstech/utils/size_config.dart';
import 'package:sportstech/widgets/local_assets.dart';

import '../model/skill_model.dart';
import '../utils/color_palette.dart';
import 'custom_text.dart';

class SkillCard extends StatelessWidget {
  final Skills skill;
  const SkillCard({required this.skill});
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Card(
      color: AppColors.card,
      elevation: 4,
      shadowColor: AppColors.primary.withOpacity(0.15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: AppColors.primary.withOpacity(0.08)),
      ),
      child: Container(
        width: SizeConfig.size170,
        padding: EdgeInsets.all(SizeConfig.paddingXS),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: LocalAssets(
                imagePath: skill.image,
                boxFit: BoxFit.cover,
                height: SizeConfig.size80,
                width: SizeConfig.size80,
              ),
            ),
            SizedBox(height: SizeConfig.size10),
            CustomText(
              text: skill.name,
              fontWeight: FontWeight.w700,
              fontSize: 14,
              textAlign: TextAlign.center,
              color: AppColors.heading,
            )
          ],
        ),
      ),
    );
  }
}