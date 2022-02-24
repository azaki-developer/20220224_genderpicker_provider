import 'package:flutter/material.dart';
import 'package:genderpicker/provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GenderProvider>(
      create: (context) => GenderProvider(),
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<GenderProvider>(
                builder: (context, genderProvider, _) => Text(
                  'Choose Your Gender',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: genderProvider.color,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(
                    child: Consumer<GenderProvider>(
                      builder: (context, genderProvider, _) => GestureDetector(
                        onTap: () {
                          genderProvider.isMale = true;
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: genderProvider.maleColor,
                            ),
                            borderRadius: BorderRadius.circular(
                              12,
                            ),
                          ),
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icon_male.png',
                                height: 100,
                                color: genderProvider.maleColor,
                              ),
                              Text(
                                'Male',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: genderProvider.maleColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Consumer<GenderProvider>(
                      builder: (context, genderProvider, _) => GestureDetector(
                        onTap: () {
                          genderProvider.isMale = false;
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: genderProvider.femaleColor,
                            ),
                            borderRadius: BorderRadius.circular(
                              12,
                            ),
                          ),
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icon_female.png',
                                height: 100,
                                color: genderProvider.femaleColor,
                              ),
                              Text(
                                'Female',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: genderProvider.femaleColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
