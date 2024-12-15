import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var phoneNumber = ""
    @State private var isRegistered = false
    @State private var isLoggedIn = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                if !isRegistered {
                    // Registration View
                    VStack {
                        Text("Register")
                            .font(.largeTitle)
                            .padding()
                        
                        TextField("Enter Username", text: $username)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        
                        SecureField("Enter Password", text: $password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        
                        Button(action: {
                            isRegistered = true
                        }) {
                            Text("Register")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .padding()
                    }
                } else if !isLoggedIn {
                    // Login View
                    VStack {
                        Text("Login")
                            .font(.largeTitle)
                            .padding()
                        
                        TextField("Username", text: $username)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        
                        SecureField("Password", text: $password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        
                        Button(action: {
                            isLoggedIn = true
                        }) {
                            Text("Log In")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .padding()
                    }
                } else {
                    // Main App View after Login
                    VStack {
                        Text("Welcome, \(username)!")
                            .font(.title)
                            .padding()
                        
                        List {
                            NavigationLink(destination: AppointmentView()) {
                                Text("Make an Appointment")
                            }
                            
                            NavigationLink(destination: ContactNumberView(phoneNumber: $phoneNumber)) {
                                Text("Enter Contact Number")
                            }
                            
                            NavigationLink(destination: DocumentsView()) {
                                Text("View My Documents")
                            }
                            
                            NavigationLink(destination: VisasView()) {
                                Text("View My Visas")
                            }
                            
                            NavigationLink(destination: VisaCentersView()) {
                                Text("Visa Center Locations and Schedules")
                            }
                            
                            NavigationLink(destination: ServicesView()) {
                                Text("List of Services")
                            }
                            
                            NavigationLink(destination: VisaCheckerView()) {
                                Text("Visa Requirements Checker")
                            }
                        }
                        .listStyle(InsetGroupedListStyle())
                    }
                }
            }
            .navigationTitle("Visa App")
            .padding()
        }
    }
}

// Appointment View
struct AppointmentView: View {
    var body: some View {
        Text("Make an Appointment for Your Visa")
            .font(.largeTitle)
            .padding()
    }
}

// Contact Number View
struct ContactNumberView: View {
    @Binding var phoneNumber: String
    
    var body: some View {
        VStack {
            Text("Enter Your Contact Number")
                .font(.title)
                .padding()
            
            TextField("Phone Number", text: $phoneNumber)
                .keyboardType(.phonePad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
        }
        .padding()
    }
}

// Documents View
struct DocumentsView: View {
    var body: some View {
        Text("View Your Documents")
            .font(.largeTitle)
            .padding()
    }
}

// Visas View
struct VisasView: View {
    var body: some View {
        Text("View Your Visas")
            .font(.largeTitle)
            .padding()
    }
}

// Visa Centers View
struct VisaCentersView: View {
    var body: some View {
        VStack {
            Text("Visa Center Locations and Schedules")
                .font(.title)
                .padding()
            
            NavigationLink(destination: MapView()) {
                Text("View Map of Visa Centers")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
            
            NavigationLink(destination: ScheduleView()) {
                Text("View Visa Center Schedules")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
}

// Map View
struct MapView: View {
    var body: some View {
        Text("Map Showing Visa Center Locations")
            .font(.largeTitle)
            .padding()
    }
}

// Schedule View
struct ScheduleView: View {
    var body: some View {
        Text("Visa Center Work Schedules")
            .font(.largeTitle)
            .padding()
    }
}

// Services View
struct ServicesView: View {
    var body: some View {
        Text("List of Services")
            .font(.largeTitle)
            .padding()
    }
}

// Visa Checker View
struct VisaCheckerView: View {
    @State private var userCountry = ""
    @State private var destinationCountry = ""
    
    var body: some View {
        VStack {
            Text("Visa Requirements Checker")
                .font(.title)
                .padding()
            
            TextField("Enter Your Country", text: $userCountry)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextField("Enter Destination Country", text: $destinationCountry)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {
                // Logic to get visa requirements can be added here
            }) {
                Text("Get Required Documents")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

