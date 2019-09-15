import 'package:flutter/material.dart';

import 'profile_image.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            elevation: 3,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Spacer(flex: 1,),
                      ProfileImage(context: context),
                      Spacer(flex: 1,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Aaron Junod",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 21.0,
                              fontWeight: FontWeight.w300
                            )
                          ),
                          Text("Technology executive with extensive Fintech and SaaS experience",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w300
                            )
                          ),
                          FlatButton(
                            onPressed: (){},
                            child: Text("aaron@junod.dev",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w300
                              )
                            ),
                          )
                        ],
                      ),
                      Spacer(flex: 20,),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                    ],
                  )
                ],
              ),
            ),
          );
  }
}
