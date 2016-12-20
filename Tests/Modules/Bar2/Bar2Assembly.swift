import Swinject
import Cobra


class Bar2Assembly: Constructible {
    required init() {}
}

// MARK: - AssemblyType
extension Bar2Assembly: AssemblyType {
    
    func assemble(_ container: Container) {
        
        // feature
        container.register(BarFeatureType.self) { _ in
            return Bar2Feature()
        }
    }
    
    func loaded(_ resolver: ResolverType) {
        
    }
}
