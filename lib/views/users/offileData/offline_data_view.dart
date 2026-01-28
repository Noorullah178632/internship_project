import 'package:first_app/utils/appcolors.dart';
import 'package:first_app/views/users/offileData/widgets/offlineWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OfflineDataView extends StatefulWidget {
  const OfflineDataView({super.key});

  @override
  State<OfflineDataView> createState() => _OfflineDataViewState();
}

class _OfflineDataViewState extends State<OfflineDataView> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Appcolors.primarColor,
        title: Center(
          child: Text(
            "Offline Data",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              height: 1.6,
              letterSpacing: 1,
              color: Appcolors.whiteColor,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 15),
          child: Column(
            children: [
              Text(
                "Please select the location and number of services you would like to download on your phone for offline visibility.",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  height: 1.7,
                  letterSpacing: 1,
                  color: Color(0XFF717171),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              //fist text field
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text(
                    "",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      height: 1.8,
                      letterSpacing: 1,
                      color: Color(0XFF000000),
                    ),
                  ),
                  hint: Text("Amout"),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.1,
                      color: Color(0XFFAEAEAE),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              //2nd textfield
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.arrow_drop_down,
                    size: 24,
                    color: Color(0XFF717171),
                  ),
                  label: Text(
                    "select country",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      height: 1.8,
                      letterSpacing: 0.75,
                      color: Color(0XFF717171),
                    ),
                  ),

                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.1,
                      color: Color(0XFFAEAEAE),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              //third textfield
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.arrow_drop_down,
                    size: 24,
                    color: Color(0XFF717171),
                  ),
                  label: Text(
                    "Select province",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      height: 1.8,
                      letterSpacing: 0.75,
                      color: Color(0XFF717171),
                    ),
                  ),

                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.1,
                      color: Color(0XFFAEAEAE),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              //4th textfield
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.arrow_drop_down,
                    size: 24,
                    color: Color(0XFF717171),
                  ),
                  label: Text(
                    "Select city of the province (optional)",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      height: 1.8,
                      letterSpacing: 0.75,
                      color: Color(0XFF717171),
                    ),
                  ),

                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.1,
                      color: Color(0XFFAEAEAE),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Offlinewidget().buildSnackBar(context);
                },
                child: Container(
                  width: screenWidth * 0.8,
                  height: screenHeight * 0.06,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 1,
                      color: Color(0XFF4CAF50).withOpacity(0.4),
                    ),
                    color: Colors.green,
                  ),
                  child: Center(
                    child: Text(
                      "Save",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        height: 1.5,
                        letterSpacing: 1,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
