import 'package:book_net/configs/text_configs.dart';
import 'package:book_net/views/base_widgets/stful_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomModalBottomSheet extends StatelessWidget {
  const CustomModalBottomSheet({super.key, required this.widgets});
  final List<Widget> widgets;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(16.r),
          ),
        ),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0,
        centerTitle: false,
        toolbarHeight: 80.h,
        automaticallyImplyLeading: false,
        title: Text(
          'Select actions',
          style: TextConfigs.bold24,
        ),
      ),
      body: StatefulWrapper(
        onInit: () => widgets.add(
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              'Cancel',
              style: TextConfigs.medium16,
            ),
          ),
        ),
        child: Column(
          children: widgets,
        ),
      ),
    );
  }
}

// InkWell items(Widget icon, String title, Function() onTap) => InkWell(
//       onTap: onTap,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           icon,
//           Text(title),
//         ],
//       ),
//     );

// List<Widget> buildWidget(Map<String, InkWell> widgets) =>
//     widgets.entries.map((e) => const SizedBox()).toList();

// add

// appBar: AppBar(
//           backgroundColor: AppColors.whiteColor,
//           bottomOpacity: 0.0,
//           elevation: 0,
//           centerTitle: false,
//           toolbarHeight: 72.h,
//           automaticallyImplyLeading: false,
//           title: Text(
//             'Select actions',
//             style: TextConfigs.bold24,
//           ),
//         ),