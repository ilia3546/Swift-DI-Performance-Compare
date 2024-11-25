import Foundation
import Resolver
import Components

extension Resolver: ResolverRegistering {

    public static func registerAllServices() {
        // MARK: - Register Classes

        // Class1 has no dependencies
        register { Class1() }

        // Class2 depends on Class1
        register { r in Class2(class1: r.resolve()) }

        // Class3 depends on Class1
        register { r in Class3(class1: r.resolve()) }

        // Class4 depends on Class2 and Class3
        register { r in Class4(class2: r.resolve(), class3: r.resolve()) }

        // Class5 depends on Class1 and Class4
        register { r in Class5(class1: r.resolve(), class4: r.resolve()) }

        // Class6 depends on Class2
        register { r in Class6(class2: r.resolve()) }

        // Class7 depends on Class3 and Class6
        register { r in Class7(class3: r.resolve(), class6: r.resolve()) }

        // Class8 depends on Class4 and Class5
        register { r in Class8(class4: r.resolve(), class5: r.resolve()) }

        // Class9 depends on Class5 and Class7
        register { r in Class9(class5: r.resolve(), class7: r.resolve()) }

        // Class10 depends on Class8 and Class9
        register { r in Class10(class8: r.resolve(), class9: r.resolve()) }

        // Class11 depends on Class1 and Class10
        register { r in Class11(class1: r.resolve(), class10: r.resolve()) }

        // Class12 depends on Class2 and Class11
        register { r in Class12(class2: r.resolve(), class11: r.resolve()) }

        // Class13 depends on Class3 and Class12
        register { r in Class13(class3: r.resolve(), class12: r.resolve()) }

        // Class14 depends on Class4 and Class13
        register { r in Class14(class4: r.resolve(), class13: r.resolve()) }

        // Class15 depends on Class5 and Class14
        register { r in Class15(class5: r.resolve(), class14: r.resolve()) }

        // Class16 depends on Class6 and Class15
        register { r in Class16(class6: r.resolve(), class15: r.resolve()) }

        // Class17 depends on Class7 and Class16
        register { r in Class17(class7: r.resolve(), class16: r.resolve()) }

        // Class18 depends on Class8 and Class17
        register { r in Class18(class8: r.resolve(), class17: r.resolve()) }

        // Class19 depends on Class9 and Class18
        register { r in Class19(class9: r.resolve(), class18: r.resolve()) }

        // Class20 depends on Class10 and Class19
        register { r in Class20(class10: r.resolve(), class19: r.resolve()) }

        // Class21 depends on Class11 and Class20
        register { r in Class21(class11: r.resolve(), class20: r.resolve()) }

        // Class22 depends on Class12 and Class21
        register { r in Class22(class12: r.resolve(), class21: r.resolve()) }

        // Class23 depends on Class13 and Class22
        register { r in Class23(class13: r.resolve(), class22: r.resolve()) }

        // Class24 depends on Class14 and Class23
        register { r in Class24(class14: r.resolve(), class23: r.resolve()) }

        // Class25 depends on Class15 and Class24
        register { r in Class25(class15: r.resolve(), class24: r.resolve()) }

        // Class26 depends on Class16 and Class25
        register { r in Class26(class16: r.resolve(), class25: r.resolve()) }

        // Class27 depends on Class17 and Class26
        register { r in Class27(class17: r.resolve(), class26: r.resolve()) }

        // Class28 depends on Class18 and Class27
        register { r in Class28(class18: r.resolve(), class27: r.resolve()) }

        // Class29 depends on Class19 and Class28
        register { r in Class29(class19: r.resolve(), class28: r.resolve()) }

        // Class30 depends on Class20 and Class29
        register { r in Class30(class20: r.resolve(), class29: r.resolve()) }

        // Class31 depends on Class21 and Class30
        register { r in Class31(class21: r.resolve(), class30: r.resolve()) }

        // Class32 depends on Class22 and Class31
        register { r in Class32(class22: r.resolve(), class31: r.resolve()) }

        // Class33 depends on Class23 and Class32
        register { r in Class33(class23: r.resolve(), class32: r.resolve()) }

        // Class34 depends on Class24 and Class33
        register { r in Class34(class24: r.resolve(), class33: r.resolve()) }

        // Class35 depends on Class25 and Class34
        register { r in Class35(class25: r.resolve(), class34: r.resolve()) }

        // Class36 depends on Class26 and Class35
        register { r in Class36(class26: r.resolve(), class35: r.resolve()) }

        // Class37 depends on Class27 and Class36
        register { r in Class37(class27: r.resolve(), class36: r.resolve()) }

        // Class38 depends on Class28 and Class37
        register { r in Class38(class28: r.resolve(), class37: r.resolve()) }

        // Class39 depends on Class29 and Class38
        register { r in Class39(class29: r.resolve(), class38: r.resolve()) }

        // Class40 depends on Class30 and Class39
        register { r in Class40(class30: r.resolve(), class39: r.resolve()) }

        // Class41 depends on Class31 and Class40
        register { r in Class41(class31: r.resolve(), class40: r.resolve()) }

        // Class42 depends on Class32 and Class41
        register { r in Class42(class32: r.resolve(), class41: r.resolve()) }

        // Class43 depends on Class33 and Class42
        register { r in Class43(class33: r.resolve(), class42: r.resolve()) }

        // Class44 depends on Class34 and Class43
        register { r in Class44(class34: r.resolve(), class43: r.resolve()) }

        // Class45 depends on Class35 and Class44
        register { r in Class45(class35: r.resolve(), class44: r.resolve()) }

        // Class46 depends on Class36 and Class45
        register { r in Class46(class36: r.resolve(), class45: r.resolve()) }

        // Class47 depends on Class37 and Class46
        register { r in Class47(class37: r.resolve(), class46: r.resolve()) }

        // Class48 depends on Class38 and Class47
        register { r in Class48(class38: r.resolve(), class47: r.resolve()) }

        // Class49 depends on Class39 and Class48
        register { r in Class49(class39: r.resolve(), class48: r.resolve()) }

        // Class50 depends on Class40 and Class49
        register { r in Class50(class40: r.resolve(), class49: r.resolve()) }
    }
}
