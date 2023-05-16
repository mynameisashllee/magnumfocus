import SwiftUI

struct MenuView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State var iAmAButton = "Edit"
    @Environment(\.editMode) private var editMode
    
    var body: some View {
        VStack {
            NavigationView { 
                VStack{
                    List {
                        Section {
                            Text("M2 Algebra:\n\nYour grade: 30%\nYou can do it!")
                        }
                        
                        Section {
                            Text("M1 Algebra:\n\nYour grade: 101%\nWell done!")
                        }
                        
                        Text("M3 Algebra:\n\nYour grade: -40%\nBruh")
                    }
                    
                }
                
                .navigationTitle("classes")
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

