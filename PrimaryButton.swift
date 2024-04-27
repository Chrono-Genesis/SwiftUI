import SwiftUI

struct PrimaryButton: View {
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
            .fill(Color.dsPrimary))
        .contentShape(RoundedRectangle(cornerRadius: 4))
        .buttonStyle(PlainButtonStyle())
    }
}



#Preview {
    PrimaryButton(title: "Sign in", action: {})
        .padding()
        .previewLayout(.sizeThatFits)
}
