import 'package:codelab/controller/nav_controller.dart';
import 'package:codelab/utility/custom_appbar.dart';
import 'package:codelab/utility/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyPage extends StatelessWidget{

  NavController navController = Get.find<NavController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "My Page", appBar: AppBar() ),
      drawer: CustomDrawer(),
      body: Text("myppppppppppppppppppppppppppppppppppppppppppppppppppppppppp")
    );
  }
}