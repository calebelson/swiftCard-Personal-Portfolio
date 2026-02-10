import ElementaryUI

// Root view component - main application layout
// Contains sidebar and main content area
@View
struct ContentView {
    var body: some View {
        main() {
            SidebarView()
            MainView()
        }
    }
}
