import SwiftUI
struct ProgressBar: View {
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

//AAAAAAAAA

