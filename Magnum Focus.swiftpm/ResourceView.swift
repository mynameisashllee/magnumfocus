//resources 

import SwiftUI

struct ResourceView: View {
    
    struct ButtonLink: Hashable {
        var title: String
        var link: URL
        
        
    }
    
    var buttons: [ButtonLink] = [
        ButtonLink(title: "About ADHD", link: URL(string: "https://www.apple.com")!),
        ButtonLink(title: "Symptoms", link: URL(string: "https://www.apple.com")!),
        ButtonLink(title: "Getting a Proper Diagnosis", link: URL(string: "https://www.apple.com")!),
        ButtonLink(title: "External Websites", link: URL(string: "https://www.apple.com")!),
        ButtonLink(title: "More Information", link: URL(string: "https://www.apple.com")!)
        
    ]
    var body: some View {
        NavigationView{
            VStack {
                Spacer()
                Text("I think I may have ADHD")
                    .font(.title)
                Spacer()
                Text("What do I do?")
                    .font(.title2)
                Spacer(minLength: 50)
                
                VStack(spacing: 24) {
                    ForEach(buttons, id: \.self) { button in
                        Link(button.title, destination: button.link)
                            .foregroundColor(.teal)
                        
                    }
                    Spacer()
                }
            }
            .navigationTitle("resources")
        }
    }
}
