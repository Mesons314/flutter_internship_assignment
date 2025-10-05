import 'package:flutter/material.dart';
import 'package:sportstech/utils/skill_service.dart';
import 'package:sportstech/widgets/custom_text.dart';
import '../model/skill_model.dart';
import '../utils/color_palette.dart';
import '../utils/size_config.dart';
import '../widgets/skill_card.dart';

class SkillListsPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return skillListsPage();
  }

}
class skillListsPage extends State<SkillListsPage> {
  final SkillService skillService = SkillService();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text("Skills List"),
        backgroundColor: AppColors.primary,
        elevation: 0,
      ),
      body: FutureBuilder<List<Skills>>(
        future: skillService.loadSkills(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Center(child: CircularProgressIndicator());

          final skillData = snapshot.data!;
          final grouped = skillService.groupByLevel(skillData);

          return ListView(
            padding: EdgeInsets.all(SizeConfig.paddingS),
            children: skillService.levels.map((level) {
              final levelSkills = grouped[level]!;
              if (levelSkills.isEmpty) return SizedBox.shrink();

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: level,
                    fontSize: SizeConfig.size18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                  SizedBox(height: SizeConfig.size8),
                  SizedBox(
                    height: SizeConfig.size170,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: levelSkills.length,
                        itemBuilder: (context, index){
                          return Padding(
                            padding: EdgeInsets.only(right: SizeConfig.paddingXS),
                            child: SkillCard(skill: levelSkills[index]),
                          );
                        }
                    ),
                  ),
                  SizedBox(height: SizeConfig.size12),
                ],
              );
            }).toList(),
          );
        },
      ),
    );
  }
}