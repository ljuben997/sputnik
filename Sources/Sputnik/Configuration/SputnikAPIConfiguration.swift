import SputnikSharedResources

/// Configuration for the Sputnik API.
public class SputnikAPIConfiguration {
    /// Can either be "mock" or "network". By default it's "network". You can change it through the "setNetworkMode()" function
    var mode: NetworkMode
    /// The standard global debug configuration. By default it doesn't log anything. If you want to add a new configuration use "setDebugConfiguration()"
    var debugConfiguration: DebugConfiguration
    /// Use this to setup global mock responses based on the query type. By default the key is the object identifier for the query type and the value is the response in a dictionary format.
    var mockResponses: [Int: [String: Any]] = [:]

    public init(mode: NetworkMode, debugConfiguration: DebugConfiguration = .init()) {
        self.mode = mode
        self.debugConfiguration = debugConfiguration
    }

    /// Default configuration. Don't change this.
    @MainActor
    static let defaultConfiguration = SputnikAPIConfiguration(mode: .network)

    /// Sets the network mode globally for the default configuration. Use this in your app's startup configuration to set the mode.
    @MainActor
    public static func setNetworkMode(_ mode: NetworkMode) {
        defaultConfiguration.mode = mode
    }

    /// Sets the debug configuration globally for the default configuration. Use this in your app's startup configuration to set the debug configuration.
    @MainActor
    public static func setDebugConfiguration(_ configuration: DebugConfiguration) {
        defaultConfiguration.debugConfiguration = configuration
    }

    /// Sets the network mode for a custom configuration.
    public func setNetworkMode(_ mode: NetworkMode) {
        self.mode = mode
    }

    /// Sets the debug configuration for a custom configuration.
    public func setDebugConfiguration(_ configuration: DebugConfiguration) {
        debugConfiguration = configuration
    }
}
