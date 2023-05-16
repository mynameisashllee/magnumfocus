import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem{
                    Label("Home",systemImage: "house")
                }
            LibraryView()
                .tabItem{
                    Label("Library",systemImage: "book")
                }
            MainCalendarView()
                .tabItem{
                    Label("Calendar",systemImage: "calendar")
                }
            ResourceView()
                .tabItem{
                    Label("Resources",systemImage: "heart.circle")
                }
        }
    }
}


