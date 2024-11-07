//
//  main.swift
//  BaseballGame
//
//  Created by YoungJin on 11/4/24.
//

class BaseballGame {
    
    
    func start() {
        let answer = makeAnswer() // 정답을 만드는 함수
        // 기록 초기화 , 시작멘트,
        print("< 게임을 시작합니다 >")
        
        while true {
            // 1. 유저에게 입력값을 받음
            
            
            // 2. 세자리가 아니거나, 0을 가지거나 특정 숫자가 두번 사용된 경우 반복문 처음으로 돌아가기
               
            
            // 3. 정답과 유저의 입력값을 비교하여 스트라이크/볼을 출력하기
            
        
            // 만약 정답이라면 break 호출하여 반복문 탈출
            
        }
    }
    func makeAnswer() -> [Int] {
        // 함수 내부를 구현하기 , 서로 다른 임의의 수 3개 생성하기
        var randomNumbers: [Int] = []
        
        while randomNumbers.count < 3 {
            let randomNum = Int.random(in: 1...9)
            
            if !randomNumbers.contains(randomNum) {
                randomNumbers.append(randomNum)
            }
        }
        return randomNumbers
    }

    // 입력받은 숫자에서 각 자릿수 추출
    func getDigits(of number: Int) -> [Int] {
        return [number / 100, (number / 10) % 10, number % 10]
    }
    
    // 정답과 사용자 입력 비교하여 스트라이크와 볼 계산
    func compare(_ answer: [Int], with userInput: [Int]) -> (strikes: Int, balls: Int) {
        var strikes = 0
        var balls = 0
        
        // 공부 필요
        for (index, element) in userInput.enumerated() {
            if element == answer[index] {
                strikes += 1
            } else if answer.contains(element) {
                balls += 1
            }
        }
        
        return (strikes, balls)
    }
}



// ------------------------------------------------------------

// Lv 3
// 0 ~ 9 로 구현하기
// 맨 앞자리 0 불가
// 300 불가 같은 숫자 있을 시 오류 (Lv 2 동일)


// Lv 4 시작 시 안내문구
// 1.게임시작하기 ( 멘트추가 )  2.기록보기  3. 종료하기 ( 처음으로 , 초기화 ? )


// Lv 5 게임 기록 보기 구현
// 1번 째 게임 : 시도 횟수 - ??
// 입력값 받은 횟수 계산 , 종료 전? 종료 시 ? 횟수 저장



// Lv 6 종료하기 선택 시 종료 및 안내문구, 123 이외의 입력값 오류 설정
// 종료하기 구현 , 멘트 , 초기화 ( 기록 초기화 ) 4~ 입력 오류 설정
