import 'package:flutter/material.dart';
import 'package:practice_mr/Views/widgets/reusable_login_screen.dart';

class LoginScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            
            final width = constraints.maxWidth;

            if (width < 600) {
              
              // Mobile Layout
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 25,
                    left: 25,
                    right: 25,
                  ),
                  child: Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 400
                      ),
                                      
                      child: ReusableLoginScreen(),
                    ),
                  ),
                ),
              );

            } else if (width < 900) {

              // Tablet Layout
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 30
                  ),
                  child: Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 500,
                      ),
                    
                      child: ReusableLoginScreen(),
                    ),
                  ),
                ),
              );

            } else {

              // Desktop Layout
              return Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 1000,
                      ),
                    
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              height: 600,
                              decoration: BoxDecoration(
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.circular(20)
                              ),
                            
                              child: Center(
                                child: Icon(
                                  Icons.lock_person,
                                  size: 150,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                  
                          SizedBox(width: 60,),
                  
                          Expanded(
                            child: ReusableLoginScreen()
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }


          },
        ),
      ),

    );
  }
}

