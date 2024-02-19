
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:student_provider/model/stdmod.dart';

class StudentProvider extends ChangeNotifier{

  File? profileImage;
  DateTime? dateOfBirth;
  String? gender;
  String? domain;

  List<StudentModel> _studentList = [];
  List<StudentModel> get studentLists => _studentList;
  
  int count = 0;


//to add image
  getImage(File image){
    profileImage = image;
    notifyListeners();
  }

//to add dob
  getDOB(DateTime dob){
    dateOfBirth = dob;
    notifyListeners();
  }

//to add gender
  getGender(String g){
    gender = g;
    notifyListeners();
  }

//to add domain
  getDomain(String d){
    domain = d;
    notifyListeners();
  }

  searchStudent(List<StudentModel> newList){
    _studentList = newList;
    notifyListeners();
  }



}