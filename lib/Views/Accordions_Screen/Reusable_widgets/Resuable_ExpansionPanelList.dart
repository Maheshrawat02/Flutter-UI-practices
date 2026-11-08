import 'package:flutter/material.dart';


class ReusableExpansionPanelItem {
  final Widget Function(BuildContext, bool) headerBuilder;
  final Widget body;

  final bool initiallyExpanded;
  final bool canTapOnHeader;
  final Color? backgroundColor;

  const ReusableExpansionPanelItem({
    required this.headerBuilder,
    required this.body,
    this.initiallyExpanded = false,
    this.canTapOnHeader = true,
    this.backgroundColor
  });
}



class ReusableExpansionpanellist extends StatefulWidget {

  final List<ReusableExpansionPanelItem> panels;

  final bool allowMultipleExpanded;
  final Duration animationDuration;
  // final void Function (int index, bool isExpanded)? onExpansionChanged;
  final double? panelSpacing;

  const ReusableExpansionpanellist({
    super.key,
    required this.panels,

    this.allowMultipleExpanded = true,
    this.animationDuration = const Duration(milliseconds: 200),
    // this.onExpansionChanged,
    this.panelSpacing,
  });


  @override
  State<ReusableExpansionpanellist> createState() => _ResuableExpansionpanellistState();
}

class _ResuableExpansionpanellistState extends State<ReusableExpansionpanellist> {

  late List<bool> expandedList; // late means I decleare expandedList now, I will initialize later

  // this initState is a flutter lifecycle method
  @override
  void initState() {
    super.initState();

    // we search initiallyExpanded using map storied in panel where map is in Iterable so we can convert it into list form
    // using toList and stored in expandedList
    expandedList = widget.panels.map((panel) => 
      panel.initiallyExpanded).toList();
  }


  // why use ??
  // currently, your parent screen provides two panels, (securityPanel, accountPanel). this is not a problem here 
  // later, your parent screen changes and now 3 panels, then problem accurs
  // problem is that old boolean list contains [false, false] and when 3 panels occurs, this creates a mismatch
  @override
  void didUpdateWidget(covariant ReusableExpansionpanellist oldWidget) {
    super.didUpdateWidget(oldWidget);

    if(oldWidget.panels.length != widget.panels.length) {
      expandedList = widget.panels.map((panel) =>
      panel.initiallyExpanded).toList();
    }
  }



  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: List.generate(
        widget.panels.length,
        (index) {
          
          final panel = widget.panels[index];

          return Padding(
            padding: EdgeInsets.only(
              bottom: index == widget.panels.length - 1 
                ? 0 : (widget.panelSpacing ?? 0),
            ),

            child: ExpansionPanelList(
              animationDuration: widget.animationDuration,

              // // only one and multiple panels expanded

              // expansionCallback: (panelIndex, isExpanded) {
              //   setState(() {

              //     if (widget.allowMultipleExpanded) {

              //       expandedList[index] = !expandedList[index];

              //     } else {
              //       final shouldExpanded = !expandedList[index];

              // // close all panels first
              //       for (int i = 0; i<expandedList.length; i++) {
              //         expandedList[i] = false;
              //       }

              // // Open or close the clicked panel
              //       expandedList[index] = shouldExpanded;
              //     }
              //   });

              // },


              // multiple panels expanded
              expansionCallback: (panelIndex, isExpanded) {
                setState(() {
                  
                  if (widget.allowMultipleExpanded) {

                    expandedList[index] = !expandedList[index];
                  }
                });
              },

              children: [
                ExpansionPanel(
                  headerBuilder: panel.headerBuilder, 
                  body: panel.body,
                  backgroundColor: panel.backgroundColor,
                  canTapOnHeader: panel.canTapOnHeader,
                  isExpanded: expandedList[index]
                ),
              ],


            ),
        );
      }),
    );
  }
}





// Practice myself


// import 'package:flutter/material.dart';


// class ReusableExpansionPanelItem {
//   final Widget Function(BuildContext, bool) headerBuilder;
//   final Widget body;

//   final Color? backgroundColor;
//   final bool initiallyExpanded;
//   final bool canTapOnHeader;

//   const ReusableExpansionPanelItem ({
//     required this.headerBuilder,
//     required this.body,
//     this.backgroundColor,
//     this.initiallyExpanded = false,
//     this.canTapOnHeader = true,
//   });
// }



// class ResuableExpansionpanellist extends StatefulWidget {
//   final List<ReusableExpansionPanelItem> panels;

//   final Duration animationDuration;
//   final bool allowMultipleExpanded;

//   const ResuableExpansionpanellist({
//     super.key,
//     required this.panels,
//     this.animationDuration = const Duration(milliseconds: 200),
//     this.allowMultipleExpanded = true,

//   });


//   @override
//   State<ResuableExpansionpanellist> createState() => _ResuableExpansionpanellistState();
// }

// class _ResuableExpansionpanellistState extends State<ResuableExpansionpanellist> {

//   late List<bool> expandedList;

//   @override
//   void initState() {
//     super.initState();

//     expandedList = widget.panels.map((panel) =>
//     panel.initiallyExpanded).toList();
//   }

//   @override
//   void didUpdateWidget(covariant ResuableExpansionpanellist oldWidget) {
//     super.didUpdateWidget(oldWidget);

//     if (widget.panels.length != oldWidget.panels.length) {
//       expandedList = widget.panels.map((panel) =>
//       panel.initiallyExpanded).toList();
//     }
//   }


//   @override
//   Widget build(BuildContext context) {
//     return ExpansionPanelList(
//       animationDuration: widget.animationDuration,
//       expansionCallback: (panelIndex, isExpanded) {
//         setState(() {

//           if (widget.allowMultipleExpanded) {
//             expandedList[panelIndex] = isExpanded;
//           } else {
//             for (int i = 0; i < expandedList.length; i++) {
//               expandedList[i] = false;
//             }

//             expandedList[panelIndex] = !isExpanded;
//           }
//         });
//       },

//       children: List.generate(
//         widget.panels.length, 
//         ((index) {
          
//           final panel = widget.panels[index];

//           return ExpansionPanel(
//             headerBuilder: panel.headerBuilder,
//             body: panel.body,
//             canTapOnHeader: panel.canTapOnHeader,
//             isExpanded: expandedList[index],
//             backgroundColor: panel.backgroundColor,
            
//           );

//         })),
//     );
//   }
// }
