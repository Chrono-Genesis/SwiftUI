import SwiftUI

extension ShapeStyle where Self == Color {

    init(hex: String) {
        var cleanedHex = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        if cleanedHex.hasPrefix("#") {
            cleanedHex.remove(at: cleanedHex.startIndex)
        }
        
        // Convert hex string to integer
        var rgb: UInt64 = 0
        Scanner(string: cleanedHex).scanHexInt64(&rgb)
        
        // Extract red, green, blue components
        let red = Double((rgb & 0xFF0000) >> 16) / 255.0
        let green = Double((rgb & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgb & 0x0000FF) / 255.0
        
        self.init(red: red, green: green, blue: blue)
    }
    
    func toHex() -> String {
        guard let components = UIColor(self).cgColor.components else { return "" }
        let r = Int(components[0] * 255.0 +  0.5)
        let g = Int(components[1] * 255 + 0.5)
        let b = Int(components[2] * 255 + 0.5)

        return String(
            format: "#%02X%02X%02X",r, g, b)
    }


    static var isDarkMode: Bool {
        return UITraitCollection.current.userInterfaceStyle == .dark
    }
    
    static var dsLight: Color {
        return isDarkMode ? Color(hex: "#d7e8e4") : Color(hex: "#272731")
    }
    static var dsWhite: Color {
        return isDarkMode ? Color(hex: "#ffffff") : Color(hex: "#ffffff")
    }
    static var dsDark: Color {
        return isDarkMode ? Color(hex: "#000100") : Color(hex: "#e8e9b1")
    }
    static var dsPrimary: Color {
        return isDarkMode ? Color(hex: "#0d2322") : Color(hex: "#4a3549")
    }
    static var dsSecondary: Color {
        return isDarkMode ? Color(hex: "#e1853f") : Color(hex: "#f73975")
    }
    static var dsText: Color {
        return isDarkMode ? Color(hex: "#ffffff") : Color(hex: "#2B363D")
    }
    static var dsInfo: Color {
        return isDarkMode ? Color(hex: "#00b587") : Color(hex: "#abebf9")
    }
    public static var dsBackground: Color {
        Color(hex: "#F0F1F2")
    }
    public static var dsBackground900: Color {
        Color(hex: "#525C61")
    }
    static var dsSuccess: Color {
        return isDarkMode ? Color(hex: "#00a544") : Color(hex: "#1cb376")
    }
    static var dsWarning: Color {
        return isDarkMode ? Color(hex: "#eec700") : Color(hex: "#ded219")
    }
    static var dsDanger: Color {
        return isDarkMode ? Color(hex: "#f40033") : Color(hex: "#ed380b")
    }
    public static var dsError: Color {
        Color(hex: "#B80000")
    }
    public static var dsError100: Color {
        Color(hex: "#FFEBEB")
    }
    public static var dsError200: Color {
        Color(hex: "#E39D9D")
    }
    
}


struct DSColors: View {
    let color: Color
    let colorName: String
    var body: some View {
        HStack {
            Circle()
                .fill(color)
                .frame(width: 64, height: 64)
            VStack(alignment: .leading, content: {
                Text(colorName)
                Text(color.toHex())
            })
        }
    }
    
}
#Preview {
    ScrollView {
        VStack(alignment: .leading, spacing: 24, content: {
            DSColors(color: .dsLight, colorName: "dsLight")
            DSColors(color: .dsDark, colorName: "dsDark")
            DSColors(color: .dsPrimary, colorName: "dsPrimary")
            DSColors(color: .dsSecondary, colorName: "dsSecondary")
            DSColors(color: .dsInfo, colorName: "dsInfo")
            DSColors(color: .dsSuccess, colorName: "dsSuccess")
            DSColors(color: .dsWarning, colorName: "dsWarning")
            DSColors(color: .dsDanger, colorName: "dsDanger")
        })
    }
}
