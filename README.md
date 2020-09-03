# DartCoffeeShop
<b>조민준의 다트 커피샵</b><br>
(부제: 휘핑크림 추가는 500원)

# 사용법
클래스 연습하려고 만들어본거라서 코드가 매우 이상합니다

+ 주문 개수<br>
 inp_shot 변수를 통하여 조절합니다

+ 주문하기<br>
 기본적으로 제작법에 맞춰서 만드시면 됩니다<br>
 원하시는 메뉴를 마음대로 만들 수 있어요<br>
 <pre><code>
    메뉴명.start();
    
    메뉴명.addmilk(넣을 ml); // 우유 안 넣는 메뉴이면 생략 가능
    메뉴명.addIce(); // 얼음 추가
    메뉴명.addBlackSugar(); // 흑당 추가
    메뉴명.addPearl(); // 펄 추가
    메뉴명.addLightWhippingCream(); // 휘핑크림 추가
    메뉴명.addHeavyWhippingCream(); // 생크림 추가
    메뉴명.addVanilla(); // 바닐라 추가
    메뉴명.addMint(넣을 g); // 민트 추가(아주 맛있읍니다)
    메뉴명.addChocolateFlake(); // 초콜릿 가루 추가
    메뉴명.addLemon(); // 레몬 추가
    메뉴명.addGrapefruit(); // 자몽 추가
    메뉴명.addGreengrape(); // 청포도 추가
    메뉴명.addSprite(); // 사이다 추가
    메뉴명.addGreenTea(); // 녹차 추가
    메뉴명.addSparklingWater(); // 탄산수 추가
    
    if(check(money, 메뉴명.alert_needMoney()){
        메뉴명.extract();
        end(money, milktea.alert_needMoney());
    }
 </code></pre>
