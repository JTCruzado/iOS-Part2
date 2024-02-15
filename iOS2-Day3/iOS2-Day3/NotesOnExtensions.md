## Why Use Extensions in SwiftUI

Extensions in SwiftUI (and in Swift in general) are used to add functionality or conform to protocols for existing types without modifying the original type. In the context of SwiftUI, extensions are commonly used for the following purposes:

### 1. Adding Modifiers:

You can extend the `View` protocol to create custom view modifiers. This allows you to encapsulate styling and behavior, making your SwiftUI code more modular and readable.

extension View {
    func watermarked(with text: String) -> some View {
        self.modifier(Watermark(text: text))
    }


### 2. Conforming to Protocols:
Extensions are used to make types conform to protocols. For example, you might extend String to conform to the Identifiable protocol.

extension String: Identifiable {
    public var id: String { self }
}

### 3. Adding Custom Methods:
You can add custom methods to existing types. This is useful when you want to provide additional functionality without cluttering the original type.

extension Array {
    func squared() -> [Element] {
        return self.map { $0 * $0 }
    }
}

### 4. Grouping Functionality:
Extensions help group related functionality together. For instance, you might have separate extensions for different aspects of a type, making your code more organized.

extension View {
    // ... custom view modifiers
}

extension View {
    // ... additional methods
}

### 5. Protocol Conformance for Generics:
Extensions are useful when working with generics. You can extend protocols to provide default implementations for generic types.

extension Collection where Element: Equatable {
    func containsAll(_ elements: Element...) -> Bool {
        return elements.allSatisfy { contains($0) }
    }
}
