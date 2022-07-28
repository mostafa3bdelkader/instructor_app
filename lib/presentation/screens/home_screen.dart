import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, bool boxISScrolled) => [
          SliverAppBar(
            expandedHeight: 0.5.sh,
            floating: true,
            pinned: true,
            stretch: true,
            centerTitle: true,
            forceElevated: boxISScrolled,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/photo-1534438327276-14e5300c3a48.jpg',
                fit: BoxFit.cover,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(190.h),
              child: Container(
                color: Colors.white,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        'THE CHALLENGE',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w800),
                      ),
                    ),
                    const Text(
                      'Josh Kramer',
                      style: TextStyle(fontSize: 16),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          padding: const EdgeInsets.all(12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          )),
                      child: const Text('START PRACTICING'),
                    ),
                    TabBar(
                      controller: tabController,
                      indicatorColor: Colors.black,
                      unselectedLabelColor: Colors.blueGrey.shade200,
                      labelColor: Colors.black,
                      isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.label,
                      tabs: const [
                        Tab(
                          text: "OVERVIEW",
                        ),
                        Tab(
                          text: "CLASSES",
                        ),
                        Tab(
                          text: "COMMUNITY",
                        ),
                      ],

                      // add it here
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
        body: TabBarView(
          controller: tabController,
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        'ABOUT THE SERIES',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Text(
                      'A gymnasium, also known as a gym, is a covered location for athletics. The word is derived from the ancient Greek term "gymnasium".[1] They are commonly found in athletic and fitness centres, and as activity and learning spaces in educational institutions. "Gym" is also slang for "fitness centre", which is often an area for indoor recreation. A "gym" may include or describe adjacent open air areas as well. In Western countries, "gyms" (or pl: gymnasia") often describe places with indoor or outdoor courts for basketball, hockey, tennis, boxing or wrestling, and with equipment and machines used for physical development training, or to do exercises. In many European countries, Gymnasium (and variations of the word) also can describe a secondary school that prepares students for higher education at a university, with or without the presence of athletic courts, fields, or equipment. ',
                      style: TextStyle(height: 1.5, fontSize: 18),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Icon(Icons.person),
                          radius: 50,
                        ),
                        title: Text('Instructor'),
                        subtitle: Text('josh karmer'),
                      ),
                    ),
                    Text(
                      'josh is an international yogo teacher',
                      style: TextStyle(height: 1.5, fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  ExcerciseWidget(),
                  ExcerciseWidget(),
                  ExcerciseWidget(),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  PostWidget(),
                  PostWidget(),
                  PostWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  const PostWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text('DOM HARRELSON'),
            subtitle: Text('3 hours ago'),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'DAY 17 : lower body strength',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )),
              Text('Be the first to like this')
            ],
          )
        ],
      ),
    );
  }
}

class ExcerciseWidget extends StatelessWidget {
  const ExcerciseWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.1.sw, vertical: 20.h),
      child: Column(
        children: [
          Image.asset(
              'assets/images/5-Reasons-Why-Exercise-is-Important-edits.jpg'),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Day1:Upper Body Strength',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
          ),
          Text('Test your Strength and determination'),
        ],
      ),
    );
  }
}
