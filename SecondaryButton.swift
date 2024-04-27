import SwiftUI

struct SecondaryButton: View {
    var title: String
    var action: () -> Void

    var body: some View {
        Button(action: action, label: {
            Text(title)
                .foregroundStyle(.dsWhite)
                .font(.dsBody())
                .frame(maxWidth: .infinity, minHeight: 50)
        })
        .background(
            RoundedRectangle(cornerRadius: 4)
            .fill(Color.dsSecondary))
        .contentShape(RoundedRectangle(cornerRadius: 4))
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    SecondaryButton(title: "Create account", action: {})
        .padding()
}
