import 'package:flutter/material.dart';
import 'package:practice_mr/Views/Accordions_Screen/Reusable_widgets/Resuable_ExpansionPanelList.dart';

class Accordions extends StatefulWidget {
  const new({super.key});

  @override
  State<Accordions> createState() => _AccordionsState();
}

class _AccordionsState extends State<Accordions> {

  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Accordions Practice Screen"),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12
        ),
        child: ListView(
          children: [
            
            Card(
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(
                  color: Colors.white,
                  width: 0
                )
              ),
                    
              // for ExpansionTile 
              child: ExpansionTile(
                leading: const Icon(Icons.shopping_bag_outlined),
                title: const Text('Product Information'),
                subtitle: const Text('View product details'),
              
                children: const [
                  ListTile(
                    title: Text('Product Name'),
                    subtitle: Text('Running Shoes'),
                  ),
                  ListTile(
                    title: Text('Brand'),
                    subtitle: Text('Nike'),
                  ),
                  ListTile(
                    title: Text('Price'),
                    subtitle: Text('Rs. 2500'),
                  ),
                  ListTile(
                    title: Text('Material'),
                    subtitle: Text('Breathable Mesh'),
                  ),
                ],
              ),
            ),
              
            SizedBox(height: 5),
        
        
            // For ExpansionPanelList
            ReusableExpansionpanellist(
              panelSpacing: 20,
              
              panels: [
                
                // security panel
                ReusableExpansionPanelItem(
                  headerBuilder: (context, isExpanded) {
                    return const ListTile(
                      title: Text("Security Settings"),
                      subtitle: Text("View security details"),
                      leading: Icon(Icons.security),
                    );
                  }, 
              
                  body: Column(
                    children: [
                      ListTile(
                        title: Text("Contact Info"),
                        trailing: Icon(Icons.contacts_outlined),
                      ),
              
                       ListTile(
                        title: Text("Change Password"),
                        trailing: Icon(Icons.password_outlined),
                      ),
              
                       ListTile(
                        title: Text("Two-Factor Authentication"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
              
                    ],
                  )
                ),
              
                
              
                // Notification panel
                ReusableExpansionPanelItem(
                  headerBuilder: (context, isExpanded) {
                    return const ListTile(
                      title: Text("Notification Settings"),
                      subtitle: Text("View notification details"),
                      leading: Icon(Icons.notifications),
                    );
                  }, 
              
                  body: Column(
                    children: [
                      ListTile(
                        title: Text("Notification history"),
                        subtitle: Text("Show recent and snoozed notifications"),
                      ),
              
                       ListTile(
                        title: Text("App notification"),
                        subtitle: Text("Control notification from individual apps"),
                      ),
              
                       ListTile(
                        title: Text("Notifications on lock screen"),
                        subtitle: Text("Don't show any notifications"),
                      ),
              
                    ],
                  )
                ),
              
              
                // Account panel -----> nested header
                ReusableExpansionPanelItem(
                  headerBuilder: (context, inExpanded) {
                    return const ListTile(
                      title: Text("Account Settings"),
                      leading: Icon(Icons.settings_outlined),
                    );
                  }, 
                  body: Column(
                    children: [
              
                      ReusableExpansionpanellist(
              
                        panels: [
              
                          // Persional Info Panel
                          ReusableExpansionPanelItem(
                            headerBuilder: (context, isExpanded) {
                              return const ListTile(
                                title: Text("Persional Information"),
                                subtitle: Text("View yours full details"),
                              );
                            },
                            body: Column(
                              children: [
                                ListTile(
                                  title: Text("Name: M.Rawat"),
                                ),
                                
                                ListTile(
                                  title: Text("Email: mrawat@gmail.com"),
                                ),
              
                                ListTile(
                                  title: Text("Phone: 9800000000"),
                                ),
              
                              ],
                            ),
                          ),
              
                          
              
              
                          // Network and internet panel
                          ReusableExpansionPanelItem(
                            headerBuilder: (context, isExpanded) {
                              return const ListTile(
                                title: Text("Network and Internet"),
                              );
                            },
                            body: Column(
                              children: [
                                ListTile(
                                  title: Text("Internet"),
                                  subtitle: Text("Networks available"),
                                  leading: Icon(Icons.wifi_off),
                                ),
              
                                ListTile(
                                  title: Text("SIMs"),
                                  subtitle: Text("Namaste"),
                                  leading: Icon(Icons.sim_card),
                                ),
              
                                ListTile(
                                  title: Text("Hotspot and tethering"),
                                  subtitle: Text("Off"),
                                  leading: Icon(Icons.wifi_tethering),
                                ),
              
                                ListTile(
                                  title: Text("Data Saver"),
                                  subtitle: Text("Off"),
                                  leading: Icon(Icons.data_saver_off),
                                ),
                                
                              ],
                            ),
                          ),
              
                        ], 
              
                      ),
                    ],
                  ),
                ),
              ],
            ),
              
              
        
          ],
        ),
      ),
    );
  }
}
