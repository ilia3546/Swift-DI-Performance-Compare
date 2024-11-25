

import Components
import Foundation
import NeedleFoundation

// swiftlint:disable unused_declaration
private let needleDependenciesHash : String? = nil

// MARK: - Traversal Helpers

private func parent1(_ component: NeedleFoundation.Scope) -> NeedleFoundation.Scope {
    return component.parent
}

// MARK: - Providers

#if !NEEDLE_DYNAMIC

private class AppDependencya34170097de9901d91dcProvider: AppDependency {


    init() {

    }
}
/// ^->RootComponent->AppComponent
private func factoryf76efb5f6a0684f7dffae3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return AppDependencya34170097de9901d91dcProvider()
}

#else
extension AppComponent: NeedleFoundation.Registration {
    public func registerItems() {

    }
}
extension RootComponent: NeedleFoundation.Registration {
    public func registerItems() {


    }
}


#endif

private func factoryEmptyDependencyProvider(_ component: NeedleFoundation.Scope) -> AnyObject {
    return EmptyDependencyProvider(component: component)
}

// MARK: - Registration
private func registerProviderFactory(_ componentPath: String, _ factory: @escaping (NeedleFoundation.Scope) -> AnyObject) {
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: componentPath, factory)
}

#if !NEEDLE_DYNAMIC

@inline(never) private func register1() {
    registerProviderFactory("^->RootComponent->AppComponent", factoryf76efb5f6a0684f7dffae3b0c44298fc1c149afb)
    registerProviderFactory("^->RootComponent", factoryEmptyDependencyProvider)
}
#endif

public func registerProviderFactories() {
#if !NEEDLE_DYNAMIC
    register1()
#endif
}
