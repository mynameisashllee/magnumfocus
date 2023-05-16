//Magnum Focus

import SwiftUI

struct HomeView: View {
    
    var name = "nutellaeo"
    @State var showView1 = false
    @State var showView2 = false
    
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Spacer()
                    ProgressBar(color: .red, buttonText: "Course 1")
                        .frame(width: 200.0, height: 200.0)
                    Spacer()
                    ProgressBar(color: .yellow, buttonText: "Course 2", progressValue: 0.2)
                        .frame(width: 200.0, height: 200.0)
                    Spacer()
                }
                
                .padding()
                Button("Daily recommended\n\nYou scored 78% in Algebra lessons yesterday!\nThat is a 8% improvement from your M2\npaper, where you scored 70%. Good job!\n\nNext lesson:", action:{
                    print(">:(")
                })
                .foregroundColor(.teal)
                .padding (10)
                
                .overlay(
                    RoundedRectangle(cornerRadius: 10.0)
                        .stroke(Color.teal, lineWidth: 2.0)
                    
                )
                Button("  M2 Graphs and more graphs and suffering     ", action:{
                    print(">:(")
                })
                .foregroundColor(.teal)
                .padding (10)
                
                .overlay(
                    RoundedRectangle(cornerRadius: 10.0)
                        .stroke(Color.teal, lineWidth: 2.0)
                    
                )
            }
            .navigationTitle("hi, \(name)")
            
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        print("yasss")
                        withAnimation{showView1.toggle()}
                        
                        
                    }) {
                        Label("Send", systemImage: "gear")
                    }
                    .sheet(isPresented: $showView1) {
                        SheetView()
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("Slay")
                        withAnimation{showView2.toggle()}
                    }) {
                        Label("Refresh", systemImage: "list.dash" )
                    }
                    .sheet(isPresented:$showView2){
                        MenuView()
                    }
                }
                
            }
        }
    }
}




//MUCH PAIN VERY PAIN
/*
import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                ProgressBar(color: .red, buttonText: "Magnum")
                    .frame(width: 200.0, height: 200.0)
                Spacer()
                ProgressBar(color: .yellow, buttonText: "Focus")
                    .frame(width: 200.0, height: 200.0)
                Spacer()
            }
            
            .padding()
            Button("hugfiushguifhg", action:{
                print(">:(")
            })
            .foregroundColor(.teal)
            .padding (10)
            
            .overlay(
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(Color.teal, lineWidth: 2.0)
                    
            )
        }
    }
}
 */





 
 
