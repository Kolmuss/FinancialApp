import 'package:carousel_slider/carousel_slider.dart';
import 'package:financial_app/helper/color_helper.dart';
import 'package:financial_app/routes.dart';
import 'package:financial_app/widgets/layout/my_app_bar.dart';
import 'package:financial_app/widgets/progressBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  double balance = 171559.80;
  TabController? _tabController;
  int activeIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(vsync: this, length: 4);
    _tabController!.addListener(() {
      if (_tabController!.indexIsChanging &&
          activeIndex != _tabController!.index) {
        setState(() {
          activeIndex = _tabController!.index;
        });
      } else if (_tabController!.previousIndex != _tabController!.index &&
          _tabController!.index != activeIndex) {
        setState(() {
          activeIndex = _tabController!.index;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
          bgColor: Color(0xFFF8777D),
          back: true,
           onBack: () {
            Routes.router.navigate(Routes.settings);
           },
          backIcon: Icon(Icons.settings),
          centerTitle: true,
          title: 'Accounts',
          actions: [
            SizedBox(
              height: double.infinity,
              width: 40,
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: double.infinity,
              width: 40,
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xFFF8777D)),
              child: TabBar(
                controller: _tabController,
                indicatorColor: Colors.white,
                tabs: [
                  ...['DAILY', 'WEEKLY', 'MONTHLY', 'YEARLY']
                      .asMap()
                      .entries
                      .map((e) => Tab(
                            child: Text(
                              e.value,
                              style: TextStyle(
                                  fontSize: 13,
                                  color: e.key == activeIndex
                                      ? Colors.white
                                      : Colors.white.withOpacity(0.7)),
                            ),
                          )),
                ],
              ),
            ),
            Expanded(
                child: Column(
              children: [
                MainScreenInfoBlock(
                  items: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'BALANCE',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white.withOpacity(0.5)),
                          ),
                          const SizedBox(height: 4,),
                          Text(
                            '\$${balance}',
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          ),
                          const SizedBox(height: 4,),
                          Text(
                            '+4.28%',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(child:
                              LayoutBuilder(builder: (context, constraints) {
                            return SizedBox(
                              height: constraints.minWidth,
                              child: Center(
                                child: CircularPercentIndicator(
                                    radius: constraints.constrainWidth() / 3.5,
                                    lineWidth: 5.0,
                                    percent: 0.75,
                                    center: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("75",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 40,
                                            )),
                                        Text(
                                          '%',
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white
                                                  .withOpacity(0.5)),
                                        ),
                                      ],
                                    ),
                                    backgroundColor:
                                        Colors.white.withOpacity(0.15),
                                    progressColor: Colors.white,
                                    rotateLinearGradient: true,
                                    circularStrokeCap: CircularStrokeCap.round),
                              ),
                            );
                          })),
                          Expanded(
                              child: Column(
                            children: [
                              Text('INCOMES', style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontSize: 12
                              ),)
                            ],
                          ))
                        ],
                      ),
                    )
                  ],
                  decoration: BoxDecoration(color: Color(0xFFF8777D)),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Icon(Icons.directions_car),
                      Icon(Icons.directions_transit),
                      Icon(Icons.directions_bike),
                      Icon(Icons.directions_bike),
                    ],
                  ),
                ),
              ],
            ))
          ],
        ));
  }
}

class MainScreenInfoBlock extends StatefulWidget {
  final double height;
  final BoxDecoration? decoration;
  final List<Widget> items;

  const MainScreenInfoBlock(
      {Key? key, this.height = 166, required this.items, this.decoration})
      : super(key: key);

  @override
  _MainScreenInfoBlockState createState() => _MainScreenInfoBlockState();
}

class _MainScreenInfoBlockState extends State<MainScreenInfoBlock> {
  var _current = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: double.infinity,
      decoration: widget.decoration,
      child: Column(
        children: [
          CarouselSlider(
            items: widget.items,
            options: CarouselOptions(
              height: widget.height - 40,
              disableCenter: true,
              pageSnapping: true,
              viewportFraction: 1,
              enableInfiniteScroll: false,
              initialPage: _current,
              onPageChanged: (index, mode) {
                setState(() {
                  _current = index;
                });
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.items.asMap().entries.map((it) {
                return Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                    child: Container(
                      color: it.key == _current
                          ? Colors.white
                          : Colors.white.withOpacity(0.3),
                      height: 10,
                      width: 10,
                    ),
                  ),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
