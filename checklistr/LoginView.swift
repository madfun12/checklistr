//
//  LoginView.swift
//  checklistr
//
//  Created by Madison Funderburk on 3/2/24.
//

import SwiftUI
import FirebaseAuth

struct LoginView: View {
    @Binding var isAuthenticated: Bool
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var errorMessage: String = ""
    @State private var isAccountCreationActive = false
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                Button("Login") {
                    login()
                }
                .padding()
                Text(errorMessage)
                    .foregroundColor(.red)
                
                // Button to navigate to account creation view
                NavigationLink(
                    destination: CreateAccountView(isAuthenticated: $isAuthenticated))
                {
                    Text("Create an account")
                }
                    .padding()
                Spacer()
            }
                .padding()
                
        }.navigationTitle("Login") // Set navigation title
    }
    
    func login() {
            // Implement authentication logic here
            // Example using Firebase Authentication:
            Auth.auth().signIn(withEmail: email, password: password) { (authResult, error) in
                if let error = error {
                    // Authentication failed, handle error
                    errorMessage = error.localizedDescription
                    print(error)
                } else {
                    // Authentication successful, navigate to next screen or perform desired action
                    print("Logged in")
                    isAuthenticated = true
                }
            }
        }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(isAuthenticated: .constant(false))
            .previewDevice(PreviewDevice(rawValue: "iPhone 14"))
    }
}
