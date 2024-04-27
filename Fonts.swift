import SwiftUI

extension Font {
    static var fontName: String {
        return "TrebuchetMS"
    }
    
    //MARK: Design System Fonts
    static func dsLargeTitle(_ weight: Font.Weight = .regular) -> Font {
        return Font.custom(fontName, size: 34)
            .weight(weight)
    }
    static func dsTitle(_ weight: Font.Weight = .light) -> Font {
        return Font.custom(fontName, size: 28)
            .weight(weight)
    }
    static func dsTitle2(_ weight: Font.Weight = .regular) -> Font {
        return Font.custom(fontName, size: 22)
            .weight(weight)
    }
    static func dsTitle3(_ weight: Font.Weight = .regular) -> Font {
        return Font.custom(fontName, size: 20)
            .weight(weight)
    }
    static func dsHeadline(_ weight: Font.Weight = .semibold) -> Font {
        return Font.custom(fontName, size: 17)
            .weight(weight)
    }
    static func dsBody(_ weight: Font.Weight = .regular) -> Font {
        return Font.custom(fontName, size: 17)
            .weight(weight)
    }
    static func dsCallout(_ weight: Font.Weight = .regular) -> Font {
        return Font.custom(fontName, size: 16)
            .weight(weight)
    }
    static func dsSubhead(_ weight: Font.Weight = .regular) -> Font {
        return Font.custom(fontName, size: 15)
            .weight(weight)
    }
    static func dsFootnote(_ weight: Font.Weight = .regular) -> Font {
        return Font.custom(fontName, size: 13)
            .weight(weight)
    }
    static func dsCaption(_ weight: Font.Weight = .regular) -> Font {
        return Font.custom(fontName, size: 12)
            .weight(weight)
    }
    static func dsCaption2(_ weight: Font.Weight = .regular) -> Font {
        return Font.custom(fontName, size: 11)
            .weight(weight)
    }


}


#Preview{
    ScrollView {
        VStack(spacing: 14, content: {
            Text("dsLargeTitle")
                .font(.dsLargeTitle())
            Text("dsTitle")
                .font(.dsTitle())
            Text("dsTitle2")
                .font(.dsTitle2())
            Text("dsTitle3")
                .font(.dsTitle3())
            Text("dsHeadline")
                .font(.dsHeadline())
            Text("dsBody")
                .font(.dsBody())
            Text("dsCallout")
                .font(.dsCallout())
            Text("dsSubhead")
                .font(.dsSubhead())
            Text("dsFootnote")
                .font(.dsFootnote())
            Text("dsCaption")
                .font(.dsCaption())
            Text("dsCaption2")
                .font(.dsCaption2())
        })
    }
}
