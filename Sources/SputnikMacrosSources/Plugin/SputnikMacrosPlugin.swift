import SwiftCompilerPlugin
import SwiftSyntaxMacros

@main
struct SputnikMacrosPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        QuerySateliteMacro.self,
        QueryOperationMacro.self,
        QueryMutationMacro.self,
        ScalarMacro.self,
        QueryEnumMacro.self,
    ]
}
