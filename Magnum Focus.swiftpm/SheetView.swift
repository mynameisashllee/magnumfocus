import SwiftUI

struct SheetView: View {
    
    @Environment(\.dismiss) var dismiss
    
    
    @State var textFieldValue1 = ""
    @State var textFieldValue2 = ""
    @State var textFieldValue3 = ""
    @State var textFieldValue4 = ""
    @State var iAmAButton = "Edit"
    @State private var showingAlert = false
    @Environment(\.editMode) private var editMode
    @State private var disableTextField = true
    var body: some View {
        VStack {
            NavigationView { 
                VStack(spacing: 8) {
                    
                    Group {
                        HStack{
                            Spacer()
                            Text("Username: ")
                                .multilineTextAlignment(.center)
                                .frame(width: 100)
                                .padding(20)
                            Spacer()
                            TextField("nutellaeo", text: $textFieldValue1)
                                .textFieldStyle(.roundedBorder)
                                .padding()
                                .disabled(disableTextField)
                            Spacer()
                        }.frame(height: 44.0)
                        HStack{
                            Spacer()
                            Text("Age: ")
                                .multilineTextAlignment(.center)
                                .frame(width: 100)
                                .padding(20)
                            Spacer()
                            
                            TextField("200BC", text: $textFieldValue2)
                                .textFieldStyle(.roundedBorder)
                                .cornerRadius(7)
                                .padding()
                                .disabled(disableTextField)
                            
                            Spacer()
                            
                        }
                        .frame(height: 44.0)
                        HStack{
                            Spacer()
                            Text("Level: ")
                                .multilineTextAlignment(.center)
                                .frame(width: 100)
                                .padding(20)
                            Spacer()
                            TextField("999", text: $textFieldValue3)
                                .textFieldStyle(.roundedBorder)
                                .cornerRadius(7)
                                .padding()
                                .disabled(disableTextField)
                            Spacer()
                            
                        }.frame(height: 44.0)
                        HStack{
                            Spacer()
                            Text("Password: ")
                                .multilineTextAlignment(.center)
                                .frame(width: 100)
                                .padding(20)
                            Spacer()
                            TextField("incorrect", text: $textFieldValue4)
                                .textFieldStyle(.roundedBorder)
                                .cornerRadius(7)
                                .padding()
                                .disabled(disableTextField)
                            Spacer()
                            
                        }
                        .frame(height: 44.0)
                    }
                    
                    Button(iAmAButton, action: {
                        print("h")
                        if disableTextField == true{
                            self.disableTextField = false
                            self.iAmAButton = "Save"
                        }else if disableTextField == false{
                            self.disableTextField = true
                            self.iAmAButton = "Edit Details"
                            //change user variables
                        }
                        
                        
                    })
                    
                    Button("Log out", action: {
                        print("Log out")
                    })
                    
                    Button("Delete account"){
                        print("Delete account")
                        showingAlert = true
                    }
                    .alert("WAIT HANG ON",isPresented: $showingAlert){
                        Button("naur",role:.destructive){}
                        Button("okokok", role: .cancel) {}
                    }
                    
                    Spacer()
                }
                
                .navigationTitle("settings")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            print("queeeen")
                            dismiss()
                        }) {
                            Label("Refresh", systemImage: "chevron.left" )
                        }
                    }
                    
                }
            }
        }
        
    }
}
