import 'package:flutter/material.dart';

class StorageForClasses extends StatelessWidget {
  List<String> courseBank = [];
  final String? userName;
  int index;

  // need more variables

  StorageForClasses(this.userName, this.index);

  String getUsercourseInfo(String lCourse) {
    for (int i = 0; i < courseBank.length; i++) {
      if (lCourse == courseBank[i]) {
        return courseBank[i];
      }
    }
    // Return an empty string if no matching course found
    return 'No course found';
  }

  void addingCourses(String aCourse) {
    print('Please enter the course');
    courseBank.add(aCourse);
    this.index++;
  }

  int getNumofClasses() {
    return this.index;
  }

  void getRidofCourse(String target) {
    for (int i = 0; i < this.index; i++) {
      if (target == courseBank[i]) {
        courseBank.removeAt(i);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // Implement build method if needed
    throw UnimplementedError();
  }
}
