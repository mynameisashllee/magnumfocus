import SwiftUI

struct LibraryView: View {
    
    var name = "nutellaeo"
    @State var showView = false
    
    var body: some View {
        NavigationView {
            VStack { 
                Text("Ongoing Lessons")
                    .foregroundColor(.teal)
                    .font(.title)
                VStack {
                    HStack { 
                        Spacer()
                        ProgressBar(color: .teal, buttonText: "Start Course")
                            .frame(width: 200.0, height: 200.0)
                        Spacer()
                        Button("Lesson Description: \n\nHow to Procrastinate: a video demonstration lesson on the value of time and the many ways to waste it. \n", action:{
                            print(">:(")
                        })
                        .foregroundColor(.teal)
                        .padding()
                        
                        .overlay(
                            RoundedRectangle(cornerRadius: 10.0)
                                .stroke(Color.teal, lineWidth: 2.0)
                            
                        )
                        Spacer()
                    }
                    Spacer()
                    
                    HStack {
                        Spacer()
                        ProgressBar(color: .teal, buttonText: "Start Course")
                            .frame(width: 200.0, height: 200.0)
                        Spacer()
                        Button("Lesson Description: \n\n How to bake the most delicious treat on this planet. This is a quick lesson on how you should not burn down your kitchen.\n", action:{
                            print(">:(")
                        })
                        .foregroundColor(.teal)
                        .padding (10)
                        
                        .overlay(
                            RoundedRectangle(cornerRadius: 10.0)
                                .stroke(Color.teal, lineWidth: 2.0)
                            
                        ) 
                        Spacer()
                        
                        
                    }
                }
            }
            
            .navigationTitle("hi, \(name)")
            
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        print("yasss")
                        withAnimation{showView.toggle()}
                        
                        
                    }) {
                        Label("Send", systemImage: "gear")
                    }
                    .sheet(isPresented: $showView) {
                        SheetView()
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("Slay")
                    }) {
                        Label("Refresh", systemImage: "list.dash" )
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

struct ProgressThing: View {
    var color: Color
    var buttonText: String
    @State var progressValue: Float = 0.0
    
    func incrementProgress() {
        withAnimation { 
            self.progressValue += 0.1
            if (progressValue > 1.05) {
                progressValue = 0
            }
        }
        
    }
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    ZStack {
                        Circle()
                            .stroke(lineWidth: 10.0)
                            .opacity(0.3)
                            .foregroundColor(color)
                        Circle()
                            .trim(from: 0.0, to: CGFloat(progressValue))
                            .stroke(style: StrokeStyle(lineWidth: 10.0, lineCap: .round, lineJoin: .round))
                            .foregroundColor(color)
                        Text("\(progressValue * 100, specifier: "%.0f")%")
                    }
                    Spacer(minLength: 20)
                    Button(action: {
                        self.incrementProgress()
                    }) {
                        HStack {
                            Image(systemName: "plus.rectangle.fill")
                            Text("\(buttonText)")
                        }
                        .padding(15.0)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15.0)
                                .stroke(lineWidth: 2.0)
                        )
                    }
                    
                }
            }
        }
    }
}

//
