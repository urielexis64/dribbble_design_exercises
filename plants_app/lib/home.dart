import 'package:flutter/material.dart';
import 'package:plants_app/widgets/app_bar.dart';

class HomePage extends StatelessWidget {
  final Color darkGreen = new Color(0xFF294E21);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: SafeArea(
          child: Column(
            children: [
              CustomAppBar(
                title: 'Top Picks',
                date: 'Tuesday, Aug 3',
                color: darkGreen,
                icon: Icons.apps,
              ),
              /* SizedBox(
                height: 16,
              ),
              CustomAppBar(
                  title: 'Nosotros',
                  date: 'infinity, NaN',
                  color: Colors.deepPurple,
                  icon: Icons.favorite), */
              SizedBox(
                height: 16,
              ),
              Container(
                height: 56,
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.15),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 6,
                                      color: Colors.black.withOpacity(.08))
                                ]),
                            child: Center(
                                child: Text('Top',
                                    style: TextStyle(
                                        color: darkGreen,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16))))),
                    Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                                child: Text('Outdoor',
                                    style: TextStyle(
                                        color: darkGreen,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16))))),
                    Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                                child: Text('Indoor',
                                    style: TextStyle(
                                        color: darkGreen,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16))))),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                        height: size.height * .6,
                        decoration: BoxDecoration(
                          color: Color(0xFF0b3b2d),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Stack(children: [
                          Column(
                            children: [
                              Text(
                                'Fiddle Leaf',
                                style: TextStyle(
                                    fontFamily: 'Mango',
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 36),
                              ),
                              SizedBox(height: 30,),
                              Text('Living Room', style: ,)

                            ],
                          )
                        ],),),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
