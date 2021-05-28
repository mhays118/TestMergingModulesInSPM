@_exported import CoreTarget

public struct PrimaryService {
    public var text = "Hello, World!"
    public var model: SharedModel

    public init(model: SharedModel) {
        self.model = model
    }
}
