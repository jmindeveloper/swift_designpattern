import UIKit

class MySingleTone {
    
    static let shared = MySingleTone() // 자신의 객체를 생성해서 타입프로퍼티로 선언
    
    private init() { }
    
    var num = 0
}

// let newSingletone = MySingleTone() // init을 private하게 해줬으므로 생성자 접근이 불가해짐

MySingleTone.shared // Type.Property로 접근

// 참조형식이기 때문에 메모리 주소를 공유하여 앱 생명주기 내내 단 하나의 인스턴스만 존재
// 값형식은 해당 인스턴스를 복사하는 형식이기 때문에 인스턴스가 여러개 생길 가능성이 있음
// 그래서 싱글톤패턴은 값형식인 struct나 enum에선 사용하지 않음
var singleTone1 = MySingleTone.shared // 변수에 할당하면 인스턴스가 복사되기 때문에
var singleTone2 = MySingleTone.shared // 인스턴스가 여러개 생김 -> 싱글톤패턴이 깨짐

MySingleTone.shared.num // 0
singleTone1.num         // 0
singleTone2.num         // 0

singleTone1.num = 10

MySingleTone.shared.num // 10
singleTone1.num         // 10
singleTone2.num         // 10

// 애플에서 구현해놓은 싱글톤 패턴
UIScreen.main
UserDefaults.standard
UIApplication.shared
