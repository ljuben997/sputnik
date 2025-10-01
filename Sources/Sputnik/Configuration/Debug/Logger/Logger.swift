import os.log

class CustomLogger {
    private let logger = Logger()

    func log(_ message: Any) {
        logger.debug("\(String(describing: message))")
    }
}
