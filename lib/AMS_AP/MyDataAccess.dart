import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hnd36firsttesting/AMS_AP/Customer.dart';



class MyDataAccess{
 static List<Employee> collection=List.empty(growable: true);

 List<Employee> getData(){
    return collection;
  }

  int saveData(Employee em){
      collection.add(em);
      return collection.length;
  }
    bool searchData(String searchname){
    bool ans=false;
    for(int i=0;i<collection.length;i++) {
    Employee em = collection[i];
      if(em.name==searchname){
        ans=true;
        return ans;
      }
    }
    return ans;

    }

 int hcount(){
    int count=0;
    for(int i=0;i<collection.length;i++){
      Employee emp=collection[i];
     if(emp.department=='HR'){
       count++;
     }
    }
    return count;
}

int acount(){
    int count=0;
    for (int i=0;i<collection.length;i++){
       Employee emp=collection[i];
       if(emp.department=='Academic'){
         count++;
       }
    }
    return count;
}

 int fcount(){
   int count=0;
   for (int i=0;i<collection.length;i++){
     Employee emp=collection[i];
     if(emp.department=='Finance'){
       count++;
     }
   }
   return count;
 }

 int mcount(){
   int count=0;
   for (int i=0;i<collection.length;i++){
     Employee emp=collection[i];
     if(emp.department=='Marketing'){
       count++;
     }
   }
   return count;
 }

 int totalSalary(String leave, String late, String name, String syear){
   int ans = 0;
   for(int i = 0; i < collection.length; i++){
     Employee emp = collection[i];
     if(emp.name == name){
       int salary = int.parse(emp.salary);

       if(leave == 'notleave'){
         salary += 10000;
       }
       if(late == 'notlate'){
         salary += 20000;
       }
       ans = salary + (int.parse(syear) * 50000);
     }
   }
   return ans;
 }

}