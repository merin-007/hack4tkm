import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class Admin_Haveing_User_Data extends StatefulWidget {
  const Admin_Haveing_User_Data({Key? key}) : super(key: key);
  static String id = 'admin_having_user_data';

  @override
  _Admin_Haveing_User_DataState createState() => _Admin_Haveing_User_DataState();
}

class _Admin_Haveing_User_DataState extends State<Admin_Haveing_User_Data> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFF212121),
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
                              'Admin Supervision',
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
                          Expanded(
                            child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 20.0, bottom: 20, left: 10, right: 10),
                                  child: Container(
                                      child: SfSparkLineChart(
                                        //color: Color(0x92232317),
                                        color: Colors.white,
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
                          ),
                          Expanded(
                            child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 20.0, bottom: 20, left: 10, right: 10),
                                  child: Container(
                                      child: SfSparkLineChart(
                                        //color: Color(0x92232317),
                                        color: Colors.white,
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
                          ),
                          Expanded(
                            child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 20.0, bottom: 20, left: 10, right: 10),
                                  child: Container(
                                      child: SfSparkLineChart(
                                        //color: Color(0x92232317),
                                        color: Colors.white,
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
                      'Usage : HouseHolds',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'SpaceMono'
                      ),
                    ),
                    subtitle: Text(
                      '2.2/kwh',
                      style: TextStyle(
                          fontSize: 16
                      ),
                    ),
                    trailing: Icon(
                      Icons.auto_graph,
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
                      'Usage : Hospitals',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'SpaceMono'
                      ),
                    ),
                    subtitle: Text(
                      '12.2MW',
                      style: TextStyle(
                          fontSize: 16
                      ),
                    ),
                    trailing: Icon(
                      Icons.auto_graph,
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
                      'Usage : Shops/Industies',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'SpaceMono'
                      ),
                    ),
                    subtitle: Text(
                      '18.4MW',
                      style: TextStyle(
                          fontSize: 16
                      ),
                    ),
                    trailing: Icon(
                      Icons.auto_graph,
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
