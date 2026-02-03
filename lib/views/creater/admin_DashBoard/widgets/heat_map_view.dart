import 'package:first_app/view_models/heat_map_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HeatMapView extends StatefulWidget {
  const HeatMapView({super.key});

  @override
  State<HeatMapView> createState() => _HeatMapViewState();
}

class _HeatMapViewState extends State<HeatMapView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HeatMapViewModel>().fetchheatMapData();
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Consumer<HeatMapViewModel>(
      builder: (context, heatMapVM, child) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          width: 1.sw,

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Heatmap for Logins/Submissions",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 24.sp,
                  height: 1.4,
                  letterSpacing: 1,
                  color: Color(0XFF505050),
                ),
              ),
              SizedBox(height: 20.h),

              //HeatMap Grid
              // _buildHeatmap(heatMapVM),
              _buildHeatmapGrid(heatMapVM),
              SizedBox(height: 20.h),

              //Legend
              _buildLegend(),
            ],
          ),
        );
      },
    );
  }

  //
  Widget _buildHeatmapGrid(HeatMapViewModel viewModel) {
    List<String> months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];

    List<String> days = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Month labels
        Row(
          children: [
            SizedBox(width: 30.w),
            ...months.map(
              (month) => Expanded(
                child: Text(
                  month,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),

        // Grid with day labels
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Day labels
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: days
                  .map(
                    (day) => Container(
                      width: 30.w,
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(right: 8),
                      child: Text(
                        day,
                        style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                      ),
                    ),
                  )
                  .toList(),
            ),

            // Heatmap cells
            Expanded(
              child: SizedBox(
                height: 200.h,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 16,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                  ),
                  itemCount: 365, // 7 rows × 16 cols
                  itemBuilder: (context, index) {
                    int row = index % 7;
                    int col = index ~/ 7;

                    DateTime date = DateTime(
                      2025,
                      1,
                      1,
                    ).add(Duration(days: col * 7 + row));

                    var data = viewModel.getDataforDate(date);
                    double intensity = data == null
                        ? 0.0
                        : viewModel.getTotalIntensity(data);

                    return _buildHeatMapCell(intensity, data);
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  //for cell widget
  Widget _buildHeatMapCell(double intensity, dynamic data) {
    Color baseColor = Color(0xFF4CAF50);
    Color cellColor = intensity == 0
        ? Colors.grey.shade200
        : baseColor.withOpacity(0.2 + (intensity * 0.8));
    return Container(
      decoration: BoxDecoration(
        color: cellColor,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
  //build widget for legend

  Widget _buildLegend() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '2025 Monday first',
          style: TextStyle(
            fontSize: 12.sp,
            color: Color(0XFF597393),
            height: 2,
            fontWeight: FontWeight.w600,
          ),
        ),

        Spacer(),
        Text(
          'Less',
          style: TextStyle(
            fontSize: 12.sp,
            color: Colors.grey,
            fontWeight: FontWeight.w300,
          ),
        ),
        ...List.generate(4, (index) {
          double opacity = 0.2 + (index * 0.2);
          return Container(
            width: 12,
            height: 12,
            margin: EdgeInsets.only(right: 4),
            decoration: BoxDecoration(
              color: Color(0xFF4CAF50).withOpacity(opacity),
              borderRadius: BorderRadius.circular(2),
            ),
          );
        }),

        Text(
          'More',
          style: TextStyle(
            fontSize: 12.sp,
            color: Colors.grey,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
