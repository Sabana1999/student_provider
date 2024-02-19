import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';
import 'package:student_provider/helper/studnt.dart';
import 'package:student_provider/model/db.dart';
import 'package:student_provider/screens/add.dart';
import 'package:student_provider/screens/list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String studentCountText = '';

  @override
  void initState() {
    getStudents();
    super.initState();
  }
  


  @override
  Widget build(BuildContext context) {
    
    return Consumer<StudentProvider>(
      builder: (context, value, child) {
        return  Scaffold(
  
        appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(35))),
        elevation: 8,
        shadowColor: Color.fromARGB(255, 0, 0, 0),
        backgroundColor: Colors.teal,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.home),
          color: Colors.white,
        ),
        title: Text('STUDENT REGISTER',
            style: GoogleFonts.orbitron(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.white)),
        centerTitle: true,
      ),

    
        body:  SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(110.0),
            child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,

              children: [
    
                const SizedBox(height: 10,),
                //option 1
                InkWell(overlayColor: const MaterialStatePropertyAll(Colors.amber),
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => AddPage(isEdit: false),)),
                  child: Container(
                    height: 150,
                    
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.teal,      
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.add,color: Colors.white,),
        Text(
          "Add",
          style: GoogleFonts.orbitron(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w600,
            letterSpacing: 2,
          ),
        ),
      ],
    ),
  ],
)
                  ),
                ),
        
                const SizedBox(height: 40,),
        
                //option 2
                InkWell(overlayColor: const MaterialStatePropertyAll(Colors.amber),
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => StudentList(),)),
                  child: Container(
                    height: 150,
                    
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.account_circle,color: Colors.white,),
        Text(
          "Details",
          style: GoogleFonts.orbitron(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w600,
            letterSpacing: 2,
          ),
        ),
      ],
    ),
  ],
)

                  ),
                )
    
    
             
              ],
            ),
          ),
        ),
      );
      }
    );
  }
}