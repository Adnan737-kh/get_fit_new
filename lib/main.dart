import 'package:flutter/material.dart';
import 'package:get_fit_new/screens/privacyPolicyScreen.dart';
import 'screens/choice_screen.dart';
import 'screens/Credits.dart';
import 'screens/HowToUse.dart';
import 'screens/Disclaimer.dart';
import 'package:get_fit_new/screens/InfoScreen.dart';
import 'package:get_fit_new/with_equipment/withequipment_screen.dart';
import 'package:get_fit_new/without_equipment/without_equipment_screen.dart';
import 'package:get_fit_new/with_equipment/exercises/body_navigation_screen.dart';
import 'package:get_fit_new/with_equipment/exercises/chest_list.dart';
import 'package:get_fit_new/with_equipment/exercises/arms_list.dart';
import 'package:get_fit_new/with_equipment/exercises/stomach_list.dart';
import 'package:get_fit_new/with_equipment/exercises/hipsandthighs_list.dart';
import 'with_equipment/meal/meal_plan.dart';
import 'with_equipment/workout_plan/workout_plan.dart';
import 'with_equipment/workout_plan/slimdown_plan.dart';
import 'with_equipment/workout_plan/flatbelly_plan.dart';
import 'with_equipment/workout_plan/fullbody_plan.dart';
import 'with_equipment/exercises/exercise.dart';
import 'without_equipment/thirty_days_plans/thirtydays_slimdown.dart';
import 'without_equipment/thirty_days_plans/thirtydays_flatbelly.dart';
import 'without_equipment/thirty_days_plans/thirtydays_fullbody.dart';
import 'without_equipment/thirtydays_mealplan/thirtydays_mealplan.dart';
import 'without_equipment/thirtydays_mealplan/thirtydays_individual_meal_plan.dart';
import 'without_equipment/we_exercises/we_fullbody_exercises.dart';
import 'without_equipment/we_exercises/we_flatbelly_exercises.dart';
import 'without_equipment/we_exercises/we_slimdown_exercises.dart';
import 'without_equipment/we_exercises/we_dayoff.dart';
import 'without_equipment/we_exercises/we_exercise_info.dart';
import 'with_equipment/workout_plan/plans_exercise.dart';
import 'with_equipment/workout_plan/exercise_info.dart';
import 'package:flutter/services.dart';

void main() {

  runApp(GetFit());
}

class GetFit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //   MediaQuery.of(context).orientation;
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Get Fit',
      initialRoute:PrivacypolicyScreen.id,
      routes: {
        PrivacypolicyScreen.id: (context) => PrivacypolicyScreen(),
        ChoiceScreen.id: (context) => ChoiceScreen(),
        WithEquipmentScreen.id: (context) => WithEquipmentScreen(),
        WithoutEquipmentScreen.id: (context) => WithoutEquipmentScreen(),
        BodyNavigation.id: (context) => BodyNavigation(),
        ChestListScreen.id: (context) => ChestListScreen(),
        StomachListScreen.id: (context) => StomachListScreen(),
        ArmsListScreen.id: (context) => ArmsListScreen(),
        HipsAndThighsListScreen.id: (context) => HipsAndThighsListScreen(),
        MealPlanScreen.id: (context) => MealPlanScreen(),
        WorkoutPlanScreen.id: (context) => WorkoutPlanScreen(),
        SlimDownPlan.id: (context) => SlimDownPlan(),
        FlatBellyPlan.id: (context) => FlatBellyPlan(),
        FullBodyPlan.id: (context) => FullBodyPlan(),
        ExerciseScreen.id: (context) => ExerciseScreen(imageSource:
        'images/hammer_curls.png',
          contentSource: '',
          exerciseName: 'Hammer Curls',
          showAd: true,),
        ThirtyDaysSlimDown.id: (context) => ThirtyDaysSlimDown(),
        ThirtyDaysFlatBelly.id: (context) => ThirtyDaysFlatBelly(),
        ThirtyDaysFullBody.id: (context) => ThirtyDaysFullBody(),
        ThirtyDaysMealPlan.id: (context) => ThirtyDaysMealPlan(),
        ThirtyDaysIndiMealPlan.id: (context) => ThirtyDaysIndiMealPlan(
        imageSource: 'images/hammer_curls.png',
          mealDescription: '',
        ),
        WeExerciseScreen.id: (context) => WeExerciseScreen(
          content: '',
          day: '',
          durationTimer: 0,
          flutterKicksDuration: 0,
          gifSource: '',
          highKneesRunningDuration: 0,
          jumpingJacksDuration: 0,
          lungesDuration: 0,
          mountainClimberDuration: 0,
          squatsDuration: 0,
        ),
        WeDayOffScreen.id: (context) => WeDayOffScreen(),
        PlansExerciseScreen.id: (context) => PlansExerciseScreen(content: '',showAd: true,exerciseName: '',durationTimer: 0,gifSource: ''),
        ExerciseInfo.id: (context) => ExerciseInfo(content: '',imageSource: ''),
        WeFlatBellyExerciseScreen.id: (context) => WeFlatBellyExerciseScreen(
          day: 'Day 3',
          gifSource: 'images/lunges.gif',
          content: '',
          bicycleCrunchDuration: 30,
          plankDuration: 15,
          flutterKicksDuration: 30,
          crunchesDuration: 30,
          legRaiseDuration: 30,
          sidePlankDuration: 15, durationTimer: 0,
        ),
        WeSlimDownExerciseScreen.id: (context) => WeSlimDownExerciseScreen(
          durationTimer: 370,
          day: 'Day 6',
          gifSource: 'images/lunges.gif',
          content: '',
          squatsDuration: 60,
          lungesDuration: 60,
          plankDuration: 20,
          donkeyKickBacksDuration: 60,
          pushUpsDuration: 20,
          gluteBridgeDuration: 60,
        ),
        WeExerciseInfoScreen.id: (context) => WeExerciseInfoScreen(
          content: 'kFlutterKicks',
          durationTimer: 0,
          exerciseName: 'Flutter Kicks',
          gifSource: 'images/flutterkicks_op.gif',
          showAd: false,
        ),
        InfoScreen.id: (context) => InfoScreen(),
        CreditsScreen.id: (context) => CreditsScreen(),
        DisclaimerScreen.id: (context) => DisclaimerScreen(),
        HowToUseScreen.id: (context) => HowToUseScreen(),
      },
    );
  }
}
