import 'package:first_app/models/status_model.dart';
import 'package:first_app/view_models/Table_view_model.dart';
import 'package:first_app/view_models/drop_down_view_model.dart';
import 'package:first_app/views/creater/Drawer/drawer_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ServiceListingManagementView extends StatefulWidget {
  const ServiceListingManagementView({super.key});

  @override
  State<ServiceListingManagementView> createState() =>
      _ServiceListingManagementViewState();
}

class _ServiceListingManagementViewState
    extends State<ServiceListingManagementView> {
  List<String> images = List.generate(
    10,
    (i) => "assets/images/admin/imagelisting/${i + 1}.png",
  );
  List<String> serviceTitles = [
    'Free Evening Meals',
    'Temporary Shelter for Women',
    'Free Medical Camp',
    'Emergency Food Boxes',
    'Night-Time Shelter Facility',
    'Free Dental Consultations',
    'Monthly Ration Distribution',
    'Urgent Shelter for Flood Victims',
    'Free Eye Checkup Camp',
    'Community Kitchen Program',
  ];

  List<String> categories = [
    'Food',
    'Shelter',
    'Medical',
    'Food',
    'Shelter',
    'Medical',
    'Food',
    'Shelter',
    'Medical',
    'Food',
  ];
  //status items and color
  List<StatusItem> statusItems = [
    StatusItem(text: "Pending", color: Colors.yellow),
    StatusItem(text: "Verified", color: Colors.green),
    StatusItem(text: "Pending", color: Colors.yellow),
    StatusItem(text: "Rejected", color: Colors.red),
    StatusItem(text: "Pending", color: Colors.yellow),
    StatusItem(text: "Pending", color: Colors.yellow),
    StatusItem(text: "Verified", color: Colors.green),
    StatusItem(text: "Verified", color: Colors.green),
    StatusItem(text: "Pending", color: Colors.yellow),
    StatusItem(text: "Verified", color: Colors.green),
  ];
  List<String> providers = [
    'Al-Khidmat Foundation',
    'Safe Haven NGO',
    'Sehat Foundation',
    'Helping Hands Trust',
    'Edhi Foundation',
    'Life Care Clinic',
    'Feed Pakistan',
    'Hope Aid Pakistan',
    'Vision Aid',
    'Serve Humanity Org',
  ];

  List<String> locations = [
    'Karachi',
    'Lahore',
    'Islamabad',
    'Peshawar',
    'Rawalpindi',
    'Quetta',
    'Hyderabad',
    'Sukkur',
    'Multan',
    'Faisalabad',
  ];
  List<String> addedDates = [
    '2025-05-20',
    '2025-05-22',
    '2025-05-18',
    '2025-05-23',
    '2025-05-18',
    '2025-05-21',
    '2025-05-24',
    '2025-05-20',
    '2025-05-25',
    '2025-05-26',
  ];
  @override
  Widget build(BuildContext context) {
    //make a instance of provider
    // Provider.of<DropDownViewModel>(context);
    // Provider.of<CheckBoxViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,

        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/images/icons/Logo.png"),
            ),
            Text(
              "Amdad",
              style: GoogleFonts.marhey(
                fontWeight: FontWeight.w700,
                fontSize: 20.sp,
                color: Color(0XFF4CAF50),
              ),
            ),
          ],
        ),
        actions: [
          Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              icon: Icon(Icons.menu),
              iconSize: 40.h,
              color: Colors.black,
            ),
          ),
        ],
      ),
      endDrawer: DrawerView(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //first container
            Container(
              padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 20.w),
              decoration: BoxDecoration(color: Color(0XFFFEF9EF)),
              width: 1.sw,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Service Listings Management",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 32.sp,
                      height: 1.5.h,
                      color: Color(0XFF505050),
                    ),
                  ),
                  SizedBox(height: 10.h),

                  Text.rich(
                    TextSpan(
                      text: "Type :",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp,
                        height: 1.5,
                        letterSpacing: 1,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: "Content Moderation / Service Oversight \n\n",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            letterSpacing: 0.75,
                            height: 1,
                            color: Colors.black,
                          ),
                        ),

                        TextSpan(text: "Purpose :"),
                        TextSpan(
                          text:
                              "Admins use this panel to manage all public-facing service listings (food, shelter, medical aid, etc.) added by verified NGOs or approved help requesters.",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            letterSpacing: 0.75,
                            height: 1,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //2nd part of the screen
            Container(
              padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 20.w),
              color: Colors.white,

              width: 1.sw,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  decoration: BoxDecoration(color: Color(0XFFF6F6F6)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //first section
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.h,
                          vertical: 8.h,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0XFFF6F6F6),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.r,
                              color: Colors.black.withOpacity(0.25),
                              offset: Offset(0.r, 4.r),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 240.w,

                              // padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 0.5,
                                  color: Colors.green,
                                ),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.search),

                                  hint: Text("Search by title or ID "),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),

                            SizedBox(width: 10.w),
                            Consumer<DropDownViewModel>(
                              builder: (context, vm, child) {
                                return Container(
                                  //  width: 140.w,
                                  padding: EdgeInsets.only(
                                    left: 10.w,
                                    right: 5.w,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 0.2,
                                      color: Colors.black,
                                    ),
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                  child: DropdownButton(
                                    underline: SizedBox(),
                                    value: vm.selectedValue,
                                    items: vm.options.map((item) {
                                      return DropdownMenuItem(
                                        value: item.value,
                                        child: Text(item.value),
                                      );
                                    }).toList(),
                                    onChanged: (String? newVal) {
                                      vm.updateSelectedValue(newVal!);
                                    },
                                  ),
                                );
                              },
                            ),
                            SizedBox(width: 20.w),
                            Consumer<DropDownViewModel>(
                              builder: (context, vm, child) {
                                return Container(
                                  // width: 140.w,
                                  padding: EdgeInsets.only(
                                    left: 10.w,
                                    right: 5.w,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 0.2,
                                      color: Colors.black,
                                    ),
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                  child: DropdownButton(
                                    underline: SizedBox(),
                                    value: vm.selectedLocation,
                                    items: vm.locationOptions.map((item) {
                                      return DropdownMenuItem(
                                        value: item.value,
                                        child: Text(item.value),
                                      );
                                    }).toList(),
                                    onChanged: (String? newVal) {
                                      vm.updateSelectedLocation(newVal!);
                                    },
                                  ),
                                );
                              },
                            ),
                            SizedBox(width: 20.w),
                            Consumer<DropDownViewModel>(
                              builder: (context, vm, child) {
                                return Container(
                                  //  width: 140.w,
                                  padding: EdgeInsets.only(
                                    left: 10.w,
                                    right: 5.w,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 0.2,
                                      color: Colors.black,
                                    ),
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                  child: DropdownButton(
                                    underline: SizedBox(),
                                    value: vm.selectedStatus,
                                    items: vm.statusOptions.map((item) {
                                      return DropdownMenuItem(
                                        value: item.value,
                                        child: Text(item.value),
                                      );
                                    }).toList(),
                                    onChanged: (String? newVal) {
                                      vm.updateSelectedStatus(newVal!);
                                    },
                                  ),
                                );
                              },
                            ),
                            SizedBox(width: 20.w),
                            Consumer<DropDownViewModel>(
                              builder: (context, vm, child) {
                                return Container(
                                  //  width: 140.w,
                                  padding: EdgeInsets.only(
                                    left: 10.w,
                                    right: 5.w,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 0.2,
                                      color: Colors.black,
                                    ),
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                  child: DropdownButton(
                                    underline: SizedBox(),
                                    value: vm.selectedDateAdded,
                                    items: vm.dateAddedOptions.map((item) {
                                      return DropdownMenuItem(
                                        value: item.value,
                                        child: Text(item.value),
                                      );
                                    }).toList(),
                                    onChanged: (String? newVal) {
                                      vm.updateSelectedDateAdded(newVal!);
                                    },
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.h),
                      //2nd section
                      Row(
                        children: [
                          SizedBox(child: Text("All 56")),
                          SizedBox(width: 35.w),
                          _buildButton("Add New", Icons.add),
                          SizedBox(width: 35.w),
                          _buildButton("Export List", Icons.file_open_outlined),
                          SizedBox(width: 35.w),
                          _buildButton(
                            "Generate Listing Reports",
                            FontAwesomeIcons.listCheck,
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          //1st
                          Consumer<CheckBoxViewModel>(
                            builder: (context, vm, child) {
                              return Column(
                                children: [
                                  _buildCheckBox(
                                    value: true,
                                    onchanged: (value) {},
                                    color: Colors.green,
                                  ),
                                  ...List.generate(10, (index) {
                                    return _buildCheckBox(
                                      value: vm.check[index],
                                      onchanged: (value) {
                                        vm.toggle(index, value!);
                                      },
                                    );
                                  }),
                                ],
                              );
                            },
                          ),
                          SizedBox(width: 10.w),
                          //2nd
                          Column(
                            children: [
                              _buildTitleText(text: "Image", width: 60),

                              ...List.generate(
                                images.length,
                                (index) => _buildContainerImage(images[index]),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //3rd
                          Column(
                            children: [
                              _buildTitleText(text: "Service Tile", width: 220),
                              ...List.generate(
                                serviceTitles.length,
                                (index) => _buildTextContainer(
                                  width: 220,
                                  text: serviceTitles[index],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //4th
                          Column(
                            children: [
                              _buildTitleText(text: "Category", width: 80),
                              ...List.generate(
                                categories.length,
                                (index) => _buildTextContainer(
                                  width: 80,
                                  text: categories[index],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //5th
                          Column(
                            children: [
                              _buildTitleText(text: "Provider", width: 220),
                              ...List.generate(
                                providers.length,
                                (index) => _buildTextContainer(
                                  width: 220,
                                  text: providers[index],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //6th
                          Column(
                            children: [
                              _buildTitleText(text: "Location", width: 80),
                              ...List.generate(
                                locations.length,
                                (index) => _buildTextContainer(
                                  width: 80,
                                  text: locations[index],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //7th
                          Column(
                            children: [
                              _buildTitleText(text: "Status", width: 80),
                              ...List.generate(
                                statusItems.length,
                                (index) => _buildTextContainer(
                                  width: 80,
                                  text: statusItems[index].text,
                                  color: statusItems[index].color,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //8th
                          Column(
                            children: [
                              _buildTitleText(text: "Added Data", width: 100),
                              ...List.generate(
                                addedDates.length,
                                (index) => _buildTextContainer(
                                  width: 100,
                                  text: addedDates[index],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //9th
                          Column(
                            children: [
                              _buildTitleText(text: "Actions", width: 80),
                              ...List.generate(
                                10,
                                (index) => _buildActionWidget(
                                  width: 80,
                                  text: "Edit",
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //10th
                          Column(
                            children: [
                              _buildTitleText(text: "Actions", width: 80),
                              ...List.generate(
                                10,
                                (index) => _buildActionWidget(
                                  width: 80,
                                  text: "View",
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //11th
                          Column(
                            children: [
                              _buildTitleText(text: "Actions", width: 80),
                              ...List.generate(
                                10,
                                (index) => _buildActionWidget(
                                  width: 80,
                                  text: "Approve",
                                  color: Color(0xFF7986CB),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //12th
                          Column(
                            children: [
                              _buildTitleText(text: "Actions", width: 80),
                              ...List.generate(
                                10,
                                (index) => _buildActionWidget(
                                  width: 80,
                                  text: "Reject",
                                  color: Color(0xFFEF5350),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //13th
                          Column(
                            children: [
                              _buildTitleText(text: "Actions", width: 80),
                              ...List.generate(
                                10,
                                (index) => _buildActionWidget(
                                  width: 80,
                                  text: "Delete",
                                  color: Color(0xFFE57373),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15.h),
                      //3rd section
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            //  width: 1400.w,
                            height: 60.h,

                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0.w, 2.h),
                                  blurRadius: 3,
                                  color: Colors.black.withOpacity(0.25),
                                ),
                              ],
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                              vertical: 7.h,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Showing 1 to 10 of 50 entries",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                    height: 1.5.h,
                                    color: Color(0XFF6C757D),
                                  ),
                                ),
                                SizedBox(width: 150.w),
                                Text(
                                  "display",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                    height: 1.5.h,
                                    color: Color(0XFF6C757D),
                                  ),
                                ),
                                SizedBox(width: 20.w),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 6.w,
                                    vertical: 8.h,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 0.3,
                                      color: Colors.black.withOpacity(0.2),
                                    ),
                                  ),
                                  child: Text("20"),
                                ),
                                SizedBox(width: 20.w),
                                Container(
                                  padding: EdgeInsets.all(8.r),
                                  decoration: BoxDecoration(
                                    color: Color(0XFFF6F6F6),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(child: Icon(Icons.arrow_left)),
                                ),
                                SizedBox(width: 7.w),
                                _buildcontainer(text: "1", color: Colors.white),
                                SizedBox(width: 7.w),
                                _buildcontainer(text: "2", color: Colors.green),
                                SizedBox(width: 7.w),
                                _buildcontainer(text: "3", color: Colors.white),
                                SizedBox(width: 7.w),
                                _buildcontainer(text: "4", color: Colors.white),
                                SizedBox(width: 7.w),
                                Container(
                                  padding: EdgeInsets.all(8.r),
                                  decoration: BoxDecoration(
                                    color: Color(0XFFF6F6F6),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(child: Icon(Icons.arrow_right)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      //last
                      SizedBox(height: 30.h),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //button widget
  Widget _buildButton(String text, IconData icon) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: Color(0XFF2E7D32),
      ),
      child: Center(
        child: Row(
          children: [
            Text(
              text,
              style: GoogleFonts.inter(
                fontSize: 14.sp,
                height: 1.5,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 5.w),
            Icon(icon, color: Colors.white, size: 16.r),
          ],
        ),
      ),
    );
  }

  //widget : titletext
  Widget _buildTitleText({required String text, required double width}) {
    return Container(
      width: width.w,
      height: 40.h,
      decoration: BoxDecoration(color: Color(0XFFC8E6C9)),
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Text(
            text,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              height: 1.5.h,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  //widget : containerImage
  Widget _buildContainerImage(String imagePath) {
    return Container(
      width: 60.w,
      height: 40.h,

      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 0.2.w, color: Colors.black),
        ),
      ),

      child: CircleAvatar(child: Image.asset(imagePath)),
    );
  }

  //widget:container checkbox
  Widget _buildCheckBox({
    Color? color,
    required bool value,
    required Function(bool?) onchanged,
  }) {
    return Container(
      width: 60.w,
      height: 40.h,
      decoration: BoxDecoration(color: color),
      child: Checkbox(
        activeColor: Colors.white,
        checkColor: Colors.green,

        value: value,
        onChanged: onchanged,
      ),
    );
  }

  //normal container
  Widget _buildcontainer({required String text, required Color color}) {
    return Container(
      padding: EdgeInsets.all(8.r),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
          height: 1.5.h,
          color: Color(0XFF6C757D),
        ),
      ),
    );
  }

  //Widget : text container
  Widget _buildTextContainer({
    required double width,
    required String text,
    Color color = Colors.white,
  }) {
    return Container(
      width: width.w,
      height: 40.h,

      decoration: BoxDecoration(
        color: color,
        border: Border(
          bottom: BorderSide(width: 0.2.w, color: Colors.black),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            height: 1.5.h,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  //widget: action widget
  Widget _buildActionWidget({
    required double width,
    required String text,
    required Color color,
  }) {
    return Container(
      width: width.w,
      height: 40.h,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 0.2.w, color: Colors.black),
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 8.w,
        vertical: 8.h,
      ), // Add padding
      child: Container(
        // Remove fixed height, let it fit content
        // padding: EdgeInsets.symmetric(
        //   horizontal: 12.w,
        //   vertical: 4.h,
        // ), // Add internal padding
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20.r), // More rounded
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.poppins(
              decoration: TextDecoration.underline,
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
              color: Colors.black, // White text for better contrast
            ),
          ),
        ),
      ),
    );
  }
}
