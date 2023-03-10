import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ps_welness_new_ui/constants/constants/constants.dart';
import 'package:ps_welness_new_ui/constants/my_theme.dart';
import 'package:ps_welness_new_ui/controllers/9_doctor_controllers/patient_list_controller.dart';
// import 'package:ps_welness/constants/constants/constants.dart';
// import 'package:ps_welness/constants/my_theme.dart';

class PatientList extends StatelessWidget {
  PatientList({Key? key}) : super(key: key);
  PatientListController _patientListController = Get.put(PatientListController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyTheme.ThemeColors,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Patient List'),
        backgroundColor: MyTheme.ThemeColors,
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Obx(
          ()=> (_patientListController.isLoading.value)
    ?Center(child: CircularProgressIndicator(),)
          :_patientListController.patientList?.response == null
    ?Center(child:
            Text('No List'),)

            : SizedBox(
                height: size.height,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: _patientListController.patientList?.response?.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.03,
                            vertical: size.height * 0.0005),
                        child: Container(
                          height: size.height * 0.25,
                          margin: EdgeInsets.symmetric(vertical: 30 / 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    lightPrimary,
                                    darkPrimary,
                                  ]),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(-2, -2),
                                  spreadRadius: 1,
                                  blurRadius: 4,
                                  color: darkShadow,
                                ),
                                BoxShadow(
                                  offset: Offset(2, 2),
                                  spreadRadius: 1,
                                  blurRadius: 4,
                                  color: lightShadow,
                                ),
                              ],
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1626624340240-aadc087844fa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Ymx1ciUyMGltYWdlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60'),
                                  fit: BoxFit.cover)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Patient Name:',
                                      style: GoogleFonts.poppins(
                                        color: MyTheme.text1,
                                        fontWeight: FontWeight.w600,
                                        fontSize: size.width * 0.035,
                                      ),
                                    ),
                                    Text(
                                      'Patient Mobile :',
                                      style: GoogleFonts.poppins(
                                        color: MyTheme.text1,
                                        fontWeight: FontWeight.w600,
                                        fontSize: size.width * 0.035,
                                      ),
                                    ),
                                    Text(
                                      'Patient Email:',
                                      style: GoogleFonts.poppins(
                                        color: MyTheme.text1,
                                        fontWeight: FontWeight.w600,
                                        fontSize: size.width * 0.035,
                                      ),
                                    ),

                                    Text(
                                      'Patient Reg No:',
                                      style: GoogleFonts.poppins(
                                        color: MyTheme.text1,
                                        fontWeight: FontWeight.w600,
                                        fontSize: size.width * 0.035,
                                      ),
                                    ),


                                    Text(
                                      'Patient City:',
                                      style: GoogleFonts.poppins(
                                        color: MyTheme.text1,
                                        fontWeight: FontWeight.w600,
                                        fontSize: size.width * 0.035,
                                      ),
                                    ),


                                    Text(
                                      'Patient State :',
                                      style: GoogleFonts.poppins(
                                        color: MyTheme.text1,
                                        fontWeight: FontWeight.w600,
                                        fontSize: size.width * 0.035,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                  _patientListController.patientList!.response![index].patientName.toString()
                                      ,
                                      //'Kavi Raj',
                                      style: GoogleFonts.raleway(
                                          color: Colors.grey.shade800,
                                          fontWeight: FontWeight.w700,
                                          fontSize: size.width * 0.035),
                                    ),
                                    Text(
                                      '8977889999',
                                      style: GoogleFonts.raleway(
                                          color: Colors.grey.shade800,
                                          fontWeight: FontWeight.w700,
                                          fontSize: size.width * 0.035),
                                    ),
                                    Text(
                                      'vineet@gmail.com',
                                      style: GoogleFonts.raleway(
                                          color: Colors.grey.shade800,
                                          fontWeight: FontWeight.w700,
                                          fontSize: size.width * 0.035),
                                    ),
                                    Text(
                                      _patientListController.patientList!.response![index].patientRegNo.toString()
                                      ,
                                      style: GoogleFonts.raleway(
                                          color: Colors.grey.shade800,
                                          fontWeight: FontWeight.w700,
                                          fontSize: size.width * 0.035),
                                    ),
                                    Text(
                                      'Noida',
                                      style: GoogleFonts.raleway(
                                          color: Colors.grey.shade800,
                                          fontWeight: FontWeight.w700,
                                          fontSize: size.width * 0.035),
                                    ),
                                    Text(
                                      'UP',
                                      style: GoogleFonts.raleway(
                                          color: Colors.grey.shade800,
                                          fontWeight: FontWeight.w700,
                                          fontSize: size.width * 0.035),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    })),
          ),
          // Positioned(
          //   top: 50,
          //   child: Container(
          //     height: size.height * 0.10,
          //     width: size.width * 0.19,
          //     decoration: BoxDecoration(
          //       color: Colors.green,
          //       shape: BoxShape.circle,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
