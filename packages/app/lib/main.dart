import 'package:animated_digit/animated_digit.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(),
        body: const WeeklyUsageChart(),
      ),
    );
  }
}

class WeeklyUsageChart extends StatelessWidget {
  const WeeklyUsageChart({super.key});

  @override
  Widget build(BuildContext context) {
    // Dữ liệu mẫu
    final List<UsageData> weeklyData = [
      UsageData('T2', 2.5 * 3600),
      UsageData('T3', 3.0 * 3600),
      UsageData('T4', 1.8 * 3600),
      UsageData('T5', 2.7 * 3600),
      UsageData('T6', 3.5 * 3600),
      UsageData('T7', 2.0 * 3600),
      UsageData('CN', 1.5 * 3600),
    ];

    // Tính giá trị trung bình
    double averageValue =
        weeklyData.map((data) => data.hours).reduce((a, b) => a + b) /
            weeklyData.length;

    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Align(
              alignment: Alignment.centerLeft,
              child: Text("Thời gian sử dụng trung bình hàng ngày")),
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                AnimatedDigitWidget(
                    value: weeklyData.fold<int>(0, (previousValue, element) {
                      return (previousValue + element.hours / 3600).round();
                    }),
                    separateLength: 1,
                    autoSize: false,
                    textStyle:
                        const TextStyle(color: Colors.blue, fontSize: 20),
                    suffix: " g"),
              ],
            ),

            //  Text(
            //   "7h 27ph",
            //   style: TextStyle(
            //     fontSize: 20,
            //     color: Colors.blue,
            //   ),
            // )
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            child: SfCartesianChart(
              legend: const Legend(isVisible: false),
              primaryXAxis: CategoryAxis(),
              primaryYAxis: NumericAxis(
                interval: 2 * 3600,
                axisLabelFormatter: (value) {
                  return ChartAxisLabel(
                      "${((int.tryParse(value.text) ?? 0) / 3600).round()}h",
                      const TextStyle());
                },
              ),
              plotAreaBorderWidth: 0,
              series: <ChartSeries>[
                ColumnSeries<UsageData, String>(
                  width: 0.5,
                  dataSource: weeklyData,
                  xValueMapper: (UsageData usage, _) => usage.day,
                  yValueMapper: (UsageData usage, _) => usage.hours,
                  pointColorMapper: (UsageData usage, _) => usage.day == 'T5'
                      ? Colors.red.withOpacity(0.7)
                      : Colors.grey,
                  dataLabelSettings: const DataLabelSettings(isVisible: false),
                ),
                // Đường kẻ trung bình
                SplineSeries<UsageData, String>(
                  dataSource: [
                    UsageData('T2', averageValue),
                    UsageData('CN', averageValue),
                  ],
                  xValueMapper: (UsageData usage, _) => usage.day,
                  yValueMapper: (UsageData usage, _) => usage.hours,
                  color: Colors.blue,
                  dashArray: const <double>[3, 6],
                ),
              ],
              annotations: <CartesianChartAnnotation>[
                // Chữ "Trung bình"
                CartesianChartAnnotation(
                  widget: const Text(
                    'Trung bình',
                    style: TextStyle(color: Colors.blue),
                  ),
                  coordinateUnit: CoordinateUnit.point,
                  region: AnnotationRegion.plotArea,
                  horizontalAlignment: ChartAlignment.near,
                  verticalAlignment:
                      ChartAlignment.far, // Dùng far thay vì center
                  x: 'T2', // Chọn một giá trị x bất kỳ trên trục x
                  y: averageValue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UsageData {
  final String day;
  final double hours;

  UsageData(this.day, this.hours);
}
