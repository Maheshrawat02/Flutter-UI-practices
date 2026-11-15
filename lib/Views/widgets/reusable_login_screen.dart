import 'package:flutter/material.dart';

class ReusableLoginScreen extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
                      
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
                      
      children: [
    
        Icon(
          Icons.arrow_back_ios
        ),
    
        SizedBox(height: 40,),
    
        Center(
          child: Text(
            "LOGIN",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
    
        SizedBox(height: 40,),
    
        Text(
          "Email",
          style: TextStyle(
            color: Color(0xFF5B6475),
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
    
        SizedBox(height: 7,),
    
        TextFormField(
          decoration: InputDecoration(
            hint: Text(
              "Enter your email",
              style: TextStyle(
                color: Color(0xFF5B6475),
              ),
            ),
            filled: true,
            fillColor: Color(0xFFF6F3FF),
    
            prefixIcon: Transform.translate(
              offset: const Offset(0, 2),
              child: Icon(
                Icons.email,
                color: Color(0xFF6D28FF),
                size: 20,
              ),
            ),
            
            // Default / Unfocused state
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Color(0xFFE5E7EB)
              ),
            ),
    
            // Active / Focused state (when tapped)
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Color(0xFF6D28FF),
              ),
            ),
    
            // Error state (when validator returns a string)
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: const BorderSide(
                color: Colors.red,
                width: 1.5,
              ),
            ),
    
          ),
          keyboardType: TextInputType.emailAddress,
        ),
    
        SizedBox(height: 20,),
    
        Text(
          "Password",
          style: TextStyle(
            color: Color(0xFF5B6475),
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
    
        SizedBox(height: 7,),
    
        TextFormField(
          decoration: InputDecoration(
            hint: Text(
              "Enter your password",
              style: TextStyle(
                color: Color(0xFF5B6475),
              ),
            ),
            filled: true,
            fillColor: Color(0xFFF6F3FF),
    
            prefixIcon: Transform.translate(
              offset: const Offset(0, 2),
              child: Icon(
                Icons.lock,
                color: Color(0xFF6D28FF),
                size: 20,
              ),
            ),
    
            suffixIcon: Transform.translate(
              offset: const Offset(0, 2),
              child: Icon(
                Icons.visibility_off,
                color: Colors.black,
                size: 20,
              ),
            ),
            
            // Default / Unfocused state
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Color(0xFFE5E7EB)
              ),
            ),
    
            // Active / Focused state (when tapped)
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Color(0xFF6D28FF),
              ),
            ),
    
            // Error state (when validator returns a string)
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: const BorderSide(
                color: Colors.red,
                width: 1.5,
              ),
            ),
    
          ),
          keyboardType: TextInputType.text,
        ),
    
        SizedBox(height: 10,),
    
        Row(
          children: [
    
            Checkbox(
              value: false, 
              onChanged: (value) {
                
              },
            ),
    
            Expanded(
              child: Text(
                  "Remember Me",
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
            ),
    
    
            TextButton(
              onPressed: () {
                
              },
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  color: Color(0xFF6D28FF),
                  fontSize: 13,
                  fontWeight: FontWeight.bold
                ),
              ),
            ), 
          ],
        ),
    
        SizedBox(height: 40,),
    
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF6D28FF),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
              )
            ),
            onPressed: () {
              
            },
            child: Text(
              "Login",
              style: TextStyle(
                fontSize: 18
              ),  
            )
          ),
        ),
    
        SizedBox(height: 20,),
    
    
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13
                ),
              ),
    
              TextButton(
    
                onPressed: () {
                  
                },
    
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Color(0xFF6D28FF),
                    fontSize: 13,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          )
        )
    
    
      ],
    );
  }
}