import Foundation
import Swinject
import Components

extension SceneDelegate {

    public func registerAllServices(in container: Container) {
        // MARK: - Register Classes

        // Class1 has no dependencies
        container.register(Class1.self) { _ in Class1() }

        // Class2 depends on Class1
        container.register(Class2.self) { r in Class2(class1: r.resolve(Class1.self)!) }

        // Class3 depends on Class1
        container.register(Class3.self) { r in Class3(class1: r.resolve(Class1.self)!) }

        // Class4 depends on Class2 and Class3
        container.register(Class4.self) { r in Class4(class2: r.resolve(Class2.self)!, class3: r.resolve(Class3.self)!) }

        // Class5 depends on Class1 and Class4
        container.register(Class5.self) { r in Class5(class1: r.resolve(Class1.self)!, class4: r.resolve(Class4.self)!) }

        // Class6 depends on Class2
        container.register(Class6.self) { r in Class6(class2: r.resolve(Class2.self)!) }

        // Class7 depends on Class3 and Class6
        container.register(Class7.self) { r in Class7(class3: r.resolve(Class3.self)!, class6: r.resolve(Class6.self)!) }

        // Class8 depends on Class4 and Class5
        container.register(Class8.self) { r in Class8(class4: r.resolve(Class4.self)!, class5: r.resolve(Class5.self)!) }

        // Class9 depends on Class5 and Class7
        container.register(Class9.self) { r in Class9(class5: r.resolve(Class5.self)!, class7: r.resolve(Class7.self)!) }

        // Class10 depends on Class8 and Class9
        container.register(Class10.self) { r in Class10(class8: r.resolve(Class8.self)!, class9: r.resolve(Class9.self)!) }

        // Class11 depends on Class1 and Class10
        container.register(Class11.self) { r in Class11(class1: r.resolve(Class1.self)!, class10: r.resolve(Class10.self)!) }

        // Class12 depends on Class2 and Class11
        container.register(Class12.self) { r in Class12(class2: r.resolve(Class2.self)!, class11: r.resolve(Class11.self)!) }

        // Class13 depends on Class3 and Class12
        container.register(Class13.self) { r in Class13(class3: r.resolve(Class3.self)!, class12: r.resolve(Class12.self)!) }

        // Class14 depends on Class4 and Class13
        container.register(Class14.self) { r in Class14(class4: r.resolve(Class4.self)!, class13: r.resolve(Class13.self)!) }

        // Class15 depends on Class5 and Class14
        container.register(Class15.self) { r in Class15(class5: r.resolve(Class5.self)!, class14: r.resolve(Class14.self)!) }

        // Class16 depends on Class6 and Class15
        container.register(Class16.self) { r in Class16(class6: r.resolve(Class6.self)!, class15: r.resolve(Class15.self)!) }

        // Class17 depends on Class7 and Class16
        container.register(Class17.self) { r in Class17(class7: r.resolve(Class7.self)!, class16: r.resolve(Class16.self)!) }

        // Class18 depends on Class8 and Class17
        container.register(Class18.self) { r in Class18(class8: r.resolve(Class8.self)!, class17: r.resolve(Class17.self)!) }

        // Class19 depends on Class9 and Class18
        container.register(Class19.self) { r in Class19(class9: r.resolve(Class9.self)!, class18: r.resolve(Class18.self)!) }

        // Class20 depends on Class10 and Class19
        container.register(Class20.self) { r in Class20(class10: r.resolve(Class10.self)!, class19: r.resolve(Class19.self)!) }

        // Class21 depends on Class11 and Class20
        container.register(Class21.self) { r in Class21(class11: r.resolve(Class11.self)!, class20: r.resolve(Class20.self)!) }

        // Class22 depends on Class12 and Class21
        container.register(Class22.self) { r in Class22(class12: r.resolve(Class12.self)!, class21: r.resolve(Class21.self)!) }

        // Class23 depends on Class13 and Class22
        container.register(Class23.self) { r in Class23(class13: r.resolve(Class13.self)!, class22: r.resolve(Class22.self)!) }

        // Class24 depends on Class14 and Class23
        container.register(Class24.self) { r in Class24(class14: r.resolve(Class14.self)!, class23: r.resolve(Class23.self)!) }

        // Class25 depends on Class15 and Class24
        container.register(Class25.self) { r in Class25(class15: r.resolve(Class15.self)!, class24: r.resolve(Class24.self)!) }

        // Class26 depends on Class16 and Class25
        container.register(Class26.self) { r in Class26(class16: r.resolve(Class16.self)!, class25: r.resolve(Class25.self)!) }

        // Class27 depends on Class17 and Class26
        container.register(Class27.self) { r in Class27(class17: r.resolve(Class17.self)!, class26: r.resolve(Class26.self)!) }

        // Class28 depends on Class18 and Class27
        container.register(Class28.self) { r in Class28(class18: r.resolve(Class18.self)!, class27: r.resolve(Class27.self)!) }

        // Class29 depends on Class19 and Class28
        container.register(Class29.self) { r in Class29(class19: r.resolve(Class19.self)!, class28: r.resolve(Class28.self)!) }

        // Class30 depends on Class20 and Class29
        container.register(Class30.self) { r in Class30(class20: r.resolve(Class20.self)!, class29: r.resolve(Class29.self)!) }

        // Class31 depends on Class21 and Class30
        container.register(Class31.self) { r in Class31(class21: r.resolve(Class21.self)!, class30: r.resolve(Class30.self)!) }

        // Class32 depends on Class22 and Class31
        container.register(Class32.self) { r in Class32(class22: r.resolve(Class22.self)!, class31: r.resolve(Class31.self)!) }

        // Class33 depends on Class23 and Class32
        container.register(Class33.self) { r in Class33(class23: r.resolve(Class23.self)!, class32: r.resolve(Class32.self)!) }

        // Class34 depends on Class24 and Class33
        container.register(Class34.self) { r in Class34(class24: r.resolve(Class24.self)!, class33: r.resolve(Class33.self)!) }

        // Class35 depends on Class25 and Class34
        container.register(Class35.self) { r in Class35(class25: r.resolve(Class25.self)!, class34: r.resolve(Class34.self)!) }

        // Class36 depends on Class26 and Class35
        container.register(Class36.self) { r in Class36(class26: r.resolve(Class26.self)!, class35: r.resolve(Class35.self)!) }

        // Class37 depends on Class27 and Class36
        container.register(Class37.self) { r in Class37(class27: r.resolve(Class27.self)!, class36: r.resolve(Class36.self)!) }

        // Class38 depends on Class28 and Class37
        container.register(Class38.self) { r in Class38(class28: r.resolve(Class28.self)!, class37: r.resolve(Class37.self)!) }

        // Class39 depends on Class29 and Class38
        container.register(Class39.self) { r in Class39(class29: r.resolve(Class29.self)!, class38: r.resolve(Class38.self)!) }

        // Class40 depends on Class30 and Class39
        container.register(Class40.self) { r in Class40(class30: r.resolve(Class30.self)!, class39: r.resolve(Class39.self)!) }

        // Class41 depends on Class31 and Class40
        container.register(Class41.self) { r in Class41(class31: r.resolve(Class31.self)!, class40: r.resolve(Class40.self)!) }

        // Class42 depends on Class32 and Class41
        container.register(Class42.self) { r in Class42(class32: r.resolve(Class32.self)!, class41: r.resolve(Class41.self)!) }

        // Class43 depends on Class33 and Class42
        container.register(Class43.self) { r in Class43(class33: r.resolve(Class33.self)!, class42: r.resolve(Class42.self)!) }

        // Class44 depends on Class34 and Class43
        container.register(Class44.self) { r in Class44(class34: r.resolve(Class34.self)!, class43: r.resolve(Class43.self)!) }

        // Class45 depends on Class35 and Class44
        container.register(Class45.self) { r in Class45(class35: r.resolve(Class35.self)!, class44: r.resolve(Class44.self)!) }

        // Class46 depends on Class36 and Class45
        container.register(Class46.self) { r in Class46(class36: r.resolve(Class36.self)!, class45: r.resolve(Class45.self)!) }

        // Class47 depends on Class37 and Class46
        container.register(Class47.self) { r in Class47(class37: r.resolve(Class37.self)!, class46: r.resolve(Class46.self)!) }

        // Class48 depends on Class38 and Class47
        container.register(Class48.self) { r in Class48(class38: r.resolve(Class38.self)!, class47: r.resolve(Class47.self)!) }

        // Class49 depends on Class39 and Class48
        container.register(Class49.self) { r in Class49(class39: r.resolve(Class39.self)!, class48: r.resolve(Class48.self)!) }

        // Class50 depends on Class40 and Class49
        container.register(Class50.self) { r in Class50(class40: r.resolve(Class40.self)!, class49: r.resolve(Class49.self)!) }
            .inObjectScope(.container)
    }
}
