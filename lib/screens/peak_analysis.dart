import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';


class PeakAnalysis extends StatefulWidget {
  const PeakAnalysis({Key? key}) : super(key: key);
  static String id = 'peak_analysis';

  @override
  _PeakAnalysisState createState() => _PeakAnalysisState();
}

class _PeakAnalysisState extends State<PeakAnalysis> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("InSight , What's the peak time ??"),
            backgroundColor: Colors.blueGrey[900],
          ),
          backgroundColor: const Color(0xFF212121),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 30.0, left: 8, right: 10),
                child: Container(
                  child: SizedBox(
                    height: 400,
                    width: 400,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Text(
                            'Peak_Time Analysis',
                            style: TextStyle(
                              fontFamily: 'SpaceMono',
                              fontWeight: FontWeight.w600,
                              fontSize: 26,
                              color: Colors.white
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: SizedBox(
                            height: 5,
                            width: 100,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.grey[800],
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 40.0, bottom: 20, left: 10, right: 10),
                                  child: Container(
                                      child: SfSparkLineChart(
                                        color: Color(0x92232317),
                                        width: 2,
                                        trackball: SparkChartTrackball(
                                            activationMode: SparkChartActivationMode.tap),
                                        marker: SparkChartMarker(
                                            displayMode: SparkChartMarkerDisplayMode.all),
                                        labelDisplayMode: SparkChartLabelDisplayMode.all,
                                        data: <double>[
                                          1, 5, -6, 0, 1, -2, 7, -7, -4, -10, 13, -6, 7, 5, 11, 5, 3
                                        ],
                                      )
                                  ),
                                )
                            ),
                            Text(
                              'normal price : 1rs/kw',
                              style: TextStyle(
                                  color: Colors.grey[900],
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'SpaceMono'
                              ),
                            )
                          ],
                        ),

                      ],
                    )
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xC4E8E799),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12, right: 12, bottom: 12),
                child: Expanded(
                  child: ListTile(
                    tileColor: Color(0xC4E8E799),
                    title: Text(
                      'dynamic pricing ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'SpaceMono'
                      ),
                    ),
                    subtitle: Text(
                      '1.2/kw',
                      style: TextStyle(
                        fontSize: 16
                      ),
                    ),
                    trailing: Icon(
                      Icons.attach_money_rounded,
                      color: Color(0x92232317),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12, right: 12, bottom: 12),
                child: Expanded(
                  child: ListTile(
                    tileColor: Color(0xC4E8E799),
                    title: Text(
                      'timing for price ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'SpaceMono'
                      ),
                    ),
                    subtitle: Text(
                      '1356.74 rs',
                      style: TextStyle(
                          fontSize: 16
                      ),
                    ),
                    trailing: Icon(
                      Icons.note_alt,
                      color: Color(0x92232317),
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
