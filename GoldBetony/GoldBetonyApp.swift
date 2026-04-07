import SwiftUI

@main
struct GoldBetonyApp: App {
    init() {
        WebGate.configure(
            apiURL: AppConfig.apiURL,
            timeout: AppConfig.timeout
        )
        setupAppearance()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(.dark)
        }
    }

    private func setupAppearance() {
        let navAppearance = UINavigationBarAppearance()
        navAppearance.configureWithOpaqueBackground()
        navAppearance.backgroundColor = UIColor(GB.bg)
        navAppearance.titleTextAttributes = [.foregroundColor: UIColor(GB.text)]
        navAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor(GB.text)]
        UINavigationBar.appearance().standardAppearance = navAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navAppearance

        let tabAppearance = UITabBarAppearance()
        tabAppearance.configureWithOpaqueBackground()
        tabAppearance.backgroundColor = UIColor(GB.surface)
        UITabBar.appearance().standardAppearance = tabAppearance
        UITabBar.appearance().scrollEdgeAppearance = tabAppearance
    }
}
