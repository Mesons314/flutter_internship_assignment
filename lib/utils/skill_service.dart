import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:sportstech/model/skill_model.dart';

class SkillService{

  Future<List<Skills>> loadSkills() async{
    final String jsonString = await rootBundle.loadString('assets/skills.json');
    final List<dynamic> jsonList = json.decode(jsonString);
    return jsonList.map((e)=> Skills.fromJson(e)).toList();
  }

  final List<String> levels = ['Basic', 'Intermediate', 'Advanced'];
  Map<String, List<Skills>> groupByLevel(List<Skills> skills){
    return {
      for(var level in levels)
        level: skills.where((s)=>s.level==level).toList()
    };
  }
}