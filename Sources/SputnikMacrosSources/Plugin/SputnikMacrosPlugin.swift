import SwiftCompilerPlugin
import SwiftSyntaxMacros

@main
struct SputnikMacrosPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        QuerySatelliteMacro.self,
        QueryOperationMacro.self,
        QueryMutationMacro.self,
        ScalarMacro.self,
        QueryEnumMacro.self,
    ]
}
