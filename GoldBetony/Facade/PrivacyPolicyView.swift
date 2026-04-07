import SwiftUI

struct PrivacyPolicyView: View {
    private let url = URL(string: "https://savealon.quest/policy")!

    var body: some View {
        WebGateView(url: url)
            .background(GB.bg.ignoresSafeArea())
            .navigationTitle("Privacy Policy")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarColorScheme(.dark, for: .navigationBar)
    }
}
