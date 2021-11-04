# iOS
iOS practice


IOS 앱 개발 Swift 초격차 패키지 Online


	01. Swift 기본 문법
		- 기본적인 문법은 Kotlin 과 크게 다르지 않음

	01-15 프로퍼티 
		* 저장 프로퍼티 - 인스턴스의 저장 또는 상수
		* 연산 프로퍼티 - 특성 인스턴스의 결과값 -> get, set
		* 타입 프로퍼티 - 특정 타입에서 사용되는 프로퍼티

	01-19 asser & guard
		* assert
			- 특정 조건을 체크하고 조건이 성립되지 않으면 메시지를 출력하게 할 수 있는 함수
			- 디버킹 모드에서만 작동, 조건의 검증을 위해 사용

		* guard - 방어구문
			- 검사 후 다음에 오는 코드를 실행할지 말지 결정하는 것
			- guard 문에 주어진 조건문이 거짓일 때 실행
			guard 조건 else {
				return or throw or break 를 통해 코드 실행 않도록 함
			}
		
	01-20 프로토콜 - 특정 역활을 하기 위한 메소드, 프로퍼티, 기타 요구사항의 청사진 - interface
		* protocol 이름 {
		}
	
	01-21 익스텐션
		- 연산 타입 프로퍼티 / 연산 인스턴스 프로퍼티
		- 타입 메서드 / 인스턴스 메서드
		- 이니셜라이저
		- 서브스크립트
		- 중첩 타입
		- 특정 프로토콜을 준수할 수 있도록 기능 추가

		* extension Int {
			var isEven: Bool {
				return self % 2 == 0
			}

			var isOdd: Bool {
				return self % 2 == 1
			}
		}


	01.22 열거형 - enum

	01.23 옵셔녈 체이닝 -> 옵셔널에 속해있는 nil 일지도 모르는 프로퍼티, 메서드, 서브스크립션 등을 가져오거나 호출할 때 사용할 수 있는 일련의 과정



	* Basic

		02-03 화면 전환 개념
			- 화면 전환은 크게 두 가지로 나뉘며 스토리보드 혹은 코드 내에서 전환할 수 있다.
		
  
        02-05 ViewController Life Cycle
            - 뷰의 생명주기
                * Appearing     :   뷰가 화면에 나타나는 중
                * Appeard       :   뷰가 화면에 나타는 게 완료된 상태
                * Disappearing  :   뷰가 화면에서 사라지는 중
                * Disappeared   :   뷰가 화면에서 사라진 상태
                
                
            - 생성주기에 맞춰 호출되는 override 함수
                * viewDidLoad()
                    - 뷰 컨트롤러의 모든 뷰들이 메모리에 로드되었을 때 호출
                    - 초기화 작업, 네트워크 호출 등에 사용
                    - 한 번만 불려야 하는 것들을 호출할 때 이 함수 안에 호출
                    
                * viewWillAppear
                    - onRestart()
                    - 화면에 보이기 직전에 사용
                    - 화면이 다시 돌아오기 직전에 호출도미
                    
                * viewDidAppear
                    - onResume()
                    - 뷰가 계층에 추가된 후에 호출
                    - 애니메이션 작업
                    
                * viewWillDisappear()
                    - onStop()
                    - 뷰가 생성된 뒤 작업한 내용을 되돌리는 작업
                    - 최종적으로 데이터를 저장해야 할 때 사용
                    
                * viewDidDisappear()
                    - onDestroy()
                    - view 가 사라진 뒤에 호출됨
                    
                    
        02-06 화면과 화면 간 데이터 이동
            1. 로드 시 데이터 전송
                1-1 Code 로 호출 시
                    * Code 로 view 로드 시에 as? 구문을 사용해 호출 viewClass 명 지정
                    * as? 구문 사용 시 해당 변수에 접근 가능
                    
                1-2 Sugue 로 호출 시
                    * prepare override 함수 필요
                    * prepare 함수를 통해 as? 문 작성 후 원하는 변수에 접근
                    * 전달 받은 class 에서 호출은 동일
            
            
            2. 화면 종료와 이전 화면에 데이터 전송
                * delegate - 자주 사용되는 디자인패턴
                    - delegate 함수는 protocol 로 정의 후 참조해서 사용
                    - 메모리 누수로 인해 weak 선언해 줘야 함
                    - 받을 class 에서는 호출 시에 "viewController.delegate = self" 를 사용해 import
                    - 그 후 class 에 extends 후 함수 정의 후에 사용한다.
