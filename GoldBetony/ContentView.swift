import SwiftUI

struct ContentView: View {
    @StateObject private var store = SportsStore.shared

    var body: some View {
        WebGateRouter {
            FacadeTabView()
                .environmentObject(store)
                .task { await store.loadIfNeeded() }
        } webContent: { url in
            WebGateView(url: url)
                .ignoresSafeArea()
        }
    }
}
