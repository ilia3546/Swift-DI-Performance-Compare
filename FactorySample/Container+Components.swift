import Foundation
import Factory
import Components

extension Container {

    var class1: Factory<Class1> {
        Factory(self) { Class1() }
    }

    var class2: Factory<Class2> {
        Factory(self) { Class2(class1: self.class1.resolve()) }
    }

    var class3: Factory<Class3> {
        Factory(self) { Class3(class1: self.class1.resolve()) }
    }

    // Class4 depends on Class2 and Class3
    var class4: Factory<Class4> {
        Factory(self) { Class4(class2: self.class2.resolve(), class3: self.class3.resolve()) }
    }

    // Class5 depends on Class1 and Class4
    var class5: Factory<Class5> {
        Factory(self) { Class5(class1: self.class1.resolve(), class4: self.class4.resolve()) }
    }

    // Class6 depends on Class2
    var class6: Factory<Class6> {
        Factory(self) { Class6(class2: self.class2.resolve()) }
    }

    // Class7 depends on Class3 and Class6
    var class7: Factory<Class7> {
        Factory(self) { Class7(class3: self.class3.resolve(), class6: self.class6.resolve()) }
    }

    // Class8 depends on Class4 and Class5
    var class8: Factory<Class8> {
        Factory(self) { Class8(class4: self.class4.resolve(), class5: self.class5.resolve()) }
    }

    // Class9 depends on Class5 and Class7
    var class9: Factory<Class9> {
        Factory(self) { Class9(class5: self.class5.resolve(), class7: self.class7.resolve()) }
    }

    // Class10 depends on Class8 and Class9
    var class10: Factory<Class10> {
        Factory(self) { Class10(class8: self.class8.resolve(), class9: self.class9.resolve()) }
    }

    // Class11 depends on Class1 and Class10
    var class11: Factory<Class11> {
        Factory(self) { Class11(class1: self.class1.resolve(), class10: self.class10.resolve()) }
    }

    // Class12 depends on Class2 and Class11
    var class12: Factory<Class12> {
        Factory(self) { Class12(class2: self.class2.resolve(), class11: self.class11.resolve()) }
    }

    // Class13 depends on Class3 and Class12
    var class13: Factory<Class13> {
        Factory(self) { Class13(class3: self.class3.resolve(), class12: self.class12.resolve()) }
    }

    // Class14 depends on Class4 and Class13
    var class14: Factory<Class14> {
        Factory(self) { Class14(class4: self.class4.resolve(), class13: self.class13.resolve()) }
    }

    // Class15 depends on Class5 and Class14
    var class15: Factory<Class15> {
        Factory(self) { Class15(class5: self.class5.resolve(), class14: self.class14.resolve()) }
    }

    // Class16 depends on Class6 and Class15
    var class16: Factory<Class16> {
        Factory(self) { Class16(class6: self.class6.resolve(), class15: self.class15.resolve()) }
    }

    // Class17 depends on Class7 and Class16
    var class17: Factory<Class17> {
        Factory(self) { Class17(class7: self.class7.resolve(), class16: self.class16.resolve()) }
    }

    // Class18 depends on Class8 and Class17
    var class18: Factory<Class18> {
        Factory(self) { Class18(class8: self.class8.resolve(), class17: self.class17.resolve()) }
    }

    // Class19 depends on Class9 and Class18
    var class19: Factory<Class19> {
        Factory(self) { Class19(class9: self.class9.resolve(), class18: self.class18.resolve()) }
    }

    // Class20 depends on Class10 and Class19
    var class20: Factory<Class20> {
        Factory(self) { Class20(class10: self.class10.resolve(), class19: self.class19.resolve()) }
    }

    // Class21 depends on Class11 and Class20
    var class21: Factory<Class21> {
        Factory(self) { Class21(class11: self.class11.resolve(), class20: self.class20.resolve()) }
    }

    // Class22 depends on Class12 and Class21
    var class22: Factory<Class22> {
        Factory(self) { Class22(class12: self.class12.resolve(), class21: self.class21.resolve()) }
    }

    // Class23 depends on Class13 and Class22
    var class23: Factory<Class23> {
        Factory(self) { Class23(class13: self.class13.resolve(), class22: self.class22.resolve()) }
    }

    // Class24 depends on Class14 and Class23
    var class24: Factory<Class24> {
        Factory(self) { Class24(class14: self.class14.resolve(), class23: self.class23.resolve()) }
    }

    // Class25 depends on Class15 and Class24
    var class25: Factory<Class25> {
        Factory(self) { Class25(class15: self.class15.resolve(), class24: self.class24.resolve()) }
    }

    // Class26 depends on Class16 and Class25
    var class26: Factory<Class26> {
        Factory(self) { Class26(class16: self.class16.resolve(), class25: self.class25.resolve()) }
    }

    // Class27 depends on Class17 and Class26
    var class27: Factory<Class27> {
        Factory(self) { Class27(class17: self.class17.resolve(), class26: self.class26.resolve()) }
    }

    // Class28 depends on Class18 and Class27
    var class28: Factory<Class28> {
        Factory(self) { Class28(class18: self.class18.resolve(), class27: self.class27.resolve()) }
    }

    // Class29 depends on Class19 and Class28
    var class29: Factory<Class29> {
        Factory(self) { Class29(class19: self.class19.resolve(), class28: self.class28.resolve()) }
    }

    // Class30 depends on Class20 and Class29
    var class30: Factory<Class30> {
        Factory(self) { Class30(class20: self.class20.resolve(), class29: self.class29.resolve()) }
    }

    // Class31 depends on Class21 and Class30
    var class31: Factory<Class31> {
        Factory(self) { Class31(class21: self.class21.resolve(), class30: self.class30.resolve()) }
    }

    // Class32 depends on Class22 and Class31
    var class32: Factory<Class32> {
        Factory(self) { Class32(class22: self.class22.resolve(), class31: self.class31.resolve()) }
    }

    // Class33 depends on Class23 and Class32
    var class33: Factory<Class33> {
        Factory(self) { Class33(class23: self.class23.resolve(), class32: self.class32.resolve()) }
    }

    // Class34 depends on Class24 and Class33
    var class34: Factory<Class34> {
        Factory(self) { Class34(class24: self.class24.resolve(), class33: self.class33.resolve()) }
    }

    // Class35 depends on Class25 and Class34
    var class35: Factory<Class35> {
        Factory(self) { Class35(class25: self.class25.resolve(), class34: self.class34.resolve()) }
    }

    // Class36 depends on Class26 and Class35
    var class36: Factory<Class36> {
        Factory(self) { Class36(class26: self.class26.resolve(), class35: self.class35.resolve()) }
    }

    // Class37 depends on Class27 and Class36
    var class37: Factory<Class37> {
        Factory(self) { Class37(class27: self.class27.resolve(), class36: self.class36.resolve()) }
    }

    // Class38 depends on Class28 and Class37
    var class38: Factory<Class38> {
        Factory(self) { Class38(class28: self.class28.resolve(), class37: self.class37.resolve()) }
    }

    // Class39 depends on Class29 and Class38
    var class39: Factory<Class39> {
        Factory(self) { Class39(class29: self.class29.resolve(), class38: self.class38.resolve()) }
    }

    // Class40 depends on Class30 and Class39
    var class40: Factory<Class40> {
        Factory(self) { Class40(class30: self.class30.resolve(), class39: self.class39.resolve()) }
    }

    // Class41 depends on Class31 and Class40
    var class41: Factory<Class41> {
        Factory(self) { Class41(class31: self.class31.resolve(), class40: self.class40.resolve()) }
    }

    // Class42 depends on Class32 and Class41
    var class42: Factory<Class42> {
        Factory(self) { Class42(class32: self.class32.resolve(), class41: self.class41.resolve()) }
    }

    // Class43 depends on Class33 and Class42
    var class43: Factory<Class43> {
        Factory(self) { Class43(class33: self.class33.resolve(), class42: self.class42.resolve()) }
    }

    // Class44 depends on Class34 and Class43
    var class44: Factory<Class44> {
        Factory(self) { Class44(class34: self.class34.resolve(), class43: self.class43.resolve()) }
    }

    // Class45 depends on Class35 and Class44
    var class45: Factory<Class45> {
        Factory(self) { Class45(class35: self.class35.resolve(), class44: self.class44.resolve()) }
    }

    // Class46 depends on Class36 and Class45
    var class46: Factory<Class46> {
        Factory(self) { Class46(class36: self.class36.resolve(), class45: self.class45.resolve()) }
    }

    // Class47 depends on Class37 and Class46
    var class47: Factory<Class47> {
        Factory(self) { Class47(class37: self.class37.resolve(), class46: self.class46.resolve()) }
    }

    // Class48 depends on Class38 and Class47
    var class48: Factory<Class48> {
        Factory(self) { Class48(class38: self.class38.resolve(), class47: self.class47.resolve()) }
    }

    // Class49 depends on Class39 and Class48
    var class49: Factory<Class49> {
        Factory(self) { Class49(class39: self.class39.resolve(), class48: self.class48.resolve()) }
    }

    // Class50 depends on Class40 and Class49
    var class50: Factory<Class50> {
        Factory(self) { Class50(class40: self.class40.resolve(), class49: self.class49.resolve()) }
    }
}
