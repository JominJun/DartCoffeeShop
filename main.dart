int money = 50000;                // 보유한 금액
int coffee_beans;                 // 현재 갖고 있는 커피콩 (g)
int water;                        // 현재 갖고 있는 물의 양 (ml)
int milk;                         // 현재 갖고 있는 우유의 양 (ml)
int sparklingWater;               // 현재 갖고 있는 탄산수의 양 (ml)
int sprite;                       // 현재 갖고 있는 사이다의 양 (ml)
int greenTea;                     // 현재 갖고 있는 녹차 잎의 양 (g)
int mint;                         // 현재 갖고 있는 민트의 양 (g)
int pearl;                        // 현재 갖고 있는 펄의 양 (g)
int dough;                        // 현재 갖고 있는 반죽의 양 (g)
int price;                        // 가격
int std_price = 500;              // 기본 가격 (에스프레소 가격)
int water_price = 2;              // 물 가격 (ml)
int milk_price = 5;               // 우유 가격 (ml)
int sparklingWater_price = 4;     // 탄산수 가격 (ml)
int sprite_price = 5;             // 사이다 가격 (ml)
int greenTea_price = 10;          // 녹차 잎 가격 (g)
int mint_price = 10;              // 민트 가격 (g)
int lemon_price = 300;            // 레몬 추가 가격
int grapefruit_price = 300;       // 자몽 추가 가격
int greenGrape_price = 300;       // 청포도 추가 가격
int vanilla_price = 500;          // 바닐라 추가 가격
int ice_price = 500;              // 얼음 추가 가격
int sugar_price = 300;            // 설탕 추가 가격
int blackSugar_price = 300;       // 흑당 추가 가격
int caramel_price = 300;          // 카라멜 추가 가격
int pearl_price = 500;            // 펄 추가 가격
int chocolateFlake_price = 300;   // 초콜렛 플레이크 가격
int lightWhippingCream_price = 0; // 휘핑 크림 추가 가격
int heavyWhippingCream_price = 0; // 생크림 추가 가격
var plus = "";

bool check(money, price){
  if(money-price < 0){
    print("금액이 부족합니다.");
    return false;
  }else{
    return true;
  }
}

void end(money, price){
  plus = "";
  money -= price;
  print("$price원입니다. $money원 남았습니다.\n");
}

abstract class Beverage{
  int order_shot;

  void start();
  void extract();
  int alert_needMoney() => price;

  Beverage(this.order_shot){
    coffee_beans = 5000;
    water = 10000;
    milk = 5000;
    sprite = 5000;
    greenTea = 500;
    mint = 1000;
  }

  void addWater(int amount){
    water -= amount * order_shot;
    price += water_price * amount * order_shot;
  }

  void addMilk(int amount){
    milk -= amount * order_shot;
    price += milk_price * amount * order_shot;
  }

  void addSprite(int amount){
    sprite -= amount * order_shot;
    price += sprite_price * amount * order_shot;
  }

  void addSparklingWater(int amount){
    plus += 'Sparkling ';
    sparklingWater -= amount * order_shot;
    price += sparklingWater_price * amount * order_shot;
  }

  void addGreenTea(int amount){
    greenTea -= amount * order_shot;
    price += greenTea_price * amount * order_shot;
  }

  void addMint(int amount){
    plus += 'Mint ';
    mint -= amount * order_shot;
    price += mint_price * amount * order_shot;
  }

  void addLemon(){
    plus += 'Lemon ';
    price += lemon_price * order_shot;
  }

  void addGrapefruit(){
    plus += 'Grapefruit ';
    price += grapefruit_price * order_shot;
  }

  void addGreengrape(){
    plus += 'Greengrape ';
    price += greenGrape_price * order_shot;
  }

  void addVanilla(){
    plus += 'Vanilla ';
    price += vanilla_price * order_shot;
  }

  void addIce(){
    plus += 'Ice ';
    price += ice_price * order_shot;
  }

  void addBlackSugar(){
    plus += 'BlackSugar ';
    price += blackSugar_price * order_shot;
  }

  void addSugar(){
    price += sugar_price * order_shot;
  }

  void addCaramel(){
    plus += 'Caramel ';
    price += caramel_price * order_shot;
  }

  void addPearl(){
    plus += 'Bubble ';
    price += pearl_price * order_shot;
  }

  void addChocolateFlake(){
    plus += 'Chocolate ';
    price += chocolateFlake_price * order_shot;
  }

  void addLightWhippingCream(){
    plus += 'with LightWhippingCream ';
    price += lightWhippingCream_price * order_shot;
  }

  void addHeavyWhippingCream(){
    plus += 'with HeavyWhippingCream ';
    price += lightWhippingCream_price * order_shot;
  }
}


class Water extends Beverage{
  Water(int order_shot) : super(order_shot);

  @override
  void start(){
    print("맛있는 천연암반수 삼다수입니다!");
    price = 0;
  }

  @override
  void extract(){
    print(plus+"Water입니다. 맛있게 즐기세요 *^^*");
  }
}

class SparklingWater extends Beverage{
  SparklingWater(int order_shot) : super(order_shot);

  @override
  void start(){
    print("톡톡 터지는 탄산수입니다!");
    price = 0;
  }

  @override
  void extract(){
    print(plus+"Sparkling Water입니다. 맛있게 즐기세요 *^^*");
  }
}

class Sprite extends Beverage{
  Sprite(int order_shot) : super(order_shot);

  @override
  void start(){
    print("상쾌한 팔성사이다입니다!");
    price = 0;
  }

  @override
  void extract(){
    print(plus+"사이다입니다. 맛있게 즐기세요 *^^*");
  }
}

class Coke extends Beverage{
  Coke(int order_shot) : super(order_shot);

  @override
  void start(){
    print("상쾌한 콕아콜라입니다!");
    price = 0;
  }

  @override
  void extract(){
    print(plus+"Coke입니다. 맛있게 즐기세요 *^^*");
  }
}

class Ade extends Beverage{
  Ade(int order_shot) : super(order_shot);

  @override
  void start(){
    print("짜릿짜릿 상쾌상쾌 청량청량 레몬에이드입니다!");
    price = 0;
  }

  @override
  void extract(){
    print(plus+"Ade! 맛있게 즐기세요 *^^*");
  }
}

class Espresso extends Beverage{
  Espresso(int order_shot) : super(order_shot);

  @override
  void start(){
    print("Espresso는 고압·고온 하의 물을 미세하게 분쇄한 커피 가루에 가해 추출해내는 고농축 커피의 일종입니다.");
    price = 0;
    coffee_beans -= 10 * order_shot;
    price += std_price * order_shot;
  }

  @override
  void extract(){
    print(plus+"Espresso $order_shot잔 추출했습니다. 맛있게 즐기세요 *^^*");
  }
}

class Americano extends Beverage{
  Americano(int order_shot) : super(order_shot);

  @override
  void start(){
    print("Americano는 Espresso에 물을 탄 커피입니다.");
    price = 0;
    coffee_beans -= 10 * order_shot;
    price += std_price * order_shot;
  }

  @override
  void extract(){
    print(plus+"Americano $order_shot잔 추출했습니다. 맛있게 즐기세요 *^^*");
  }
}

class CaffeLatte extends Beverage{
  CaffeLatte(int order_shot) : super(order_shot);

  @override
  void start(){
    print("CaffeLatte는 Americano에 우유를 추가한 커피입니다.");
    price = 0;
    coffee_beans -= 10 * order_shot;
    price += std_price * order_shot;
  }

  @override
  void extract(){
    print(plus+"CaffeLatte $order_shot잔 추출했습니다. 맛있게 즐기세요 *^^*");
  }
}

class Latte extends Beverage{
  Latte(int order_shot) : super(order_shot);

  @override
  void start(){
    price = 0;
  }

  @override
  void extract(){
    print(plus+"Latte $order_shot잔 추출했습니다. 맛있게 즐기세요 *^^*");
  }
}

class Capuccino extends Beverage {
  Capuccino(int order_shot) : super(order_shot);

  @override
  void start(){
    print("Capuccino는 Espresso, 뜨거운 우유, 그리고 우유 거품을 재료로 만드는 이탈리아의 커피 음료입니다.");
    price = 0;
    coffee_beans -= 20 * order_shot;
    price += std_price * 2  * order_shot; // 원두가 2배이므로
  }

  @override
  void extract(){
    print(plus+"Capuccino $order_shot잔 추출했습니다. 맛있게 즐기세요 *^^*");
  }
}

class MilkTea extends Beverage {
  MilkTea(int order_shot) : super(order_shot);

  @override
  void start(){
    price = 0;
  }

  @override
  void extract(){
    print(plus+"MilkTea $order_shot잔 추출했습니다. 맛있게 즐기세요 *^^*");
  }
}

class Shake extends Beverage{
  Shake(int order_shot) : super(order_shot);

  @override
  void start(){
    price = 0;
  }

  @override
  void extract(){
    print(plus+"Shake $order_shot잔 나왔습니다. 맛있게 즐기세요 *^^*");
  }
}


void main(){
  var inp_shot = 1;

  var espresso = Espresso(inp_shot);
  var americano = Americano(inp_shot);
  var caffelatte = CaffeLatte(inp_shot);
  var capuccino = Capuccino(inp_shot);
  var latte = Latte(inp_shot);
  var milktea = MilkTea(inp_shot);
  var shake = Shake(inp_shot);

  var water = Water(inp_shot);
  var sparklingwater = SparklingWater(inp_shot);
  var sprite = Sprite(inp_shot);
  var coke = Coke(inp_shot);
  var ade = Ade(inp_shot);

  milktea.start();
  milktea.addMilk(250);
  milktea.addBlackSugar();
  milktea.addPearl();
  if(check(money, milktea.alert_needMoney())){
    milktea.extract();
    end(money, milktea.alert_needMoney());
  }

  /*water.start();
  water.addWater(500);
  water.addIce();
  water.addBlackSugar();
  water.addLightWhippingCream();
  if(check(money, water.alert_needMoney())){
    water.extract();
    end(money, water.alert_needMoney());
  }*/

  /*shake.start();
  shake.addMilk(250);
  shake.addSugar();
  shake.addIce();
  shake.addVanilla();
  if(check(money, shake.alert_needMoney())){
    shake.extract();
    end(money, shake.alert_needMoney());
  }*/

  /*milktea.start();
  milktea.addMilk(250);
  milktea.addBlackSugar();
  milktea.addMint(10);
  milktea.addChocolateFlake();
  milktea.addPearl();
  if(check(money, milktea.alert_needMoney())){
    milktea.extract();
    end(money, milktea.alert_needMoney());
  }*/

  /*water.start();
  water.addWater(500);
  water.addIce();
  water.addBlackSugar();
  if(check(money, water.alert_needMoney())){
    water.extract();
    end(money, water.alert_needMoney());
  }*/

  /*var ade = Ade(inp_shot);
  ade.start();
  ade.addSprite(500);
  ade.addIce();
  ade.addLemon();
  if(check(money, ade.alert_needMoney())){
    ade.extract();
    end(money, ade.alert_needMoney());
  }*/
}

/*
===============[원자재 가격]===============
CoffeeBean(1g) : 50
Water(1ml) : 2
Milk(1ml) : 5
Ice : 500
BlackSugar : 300
========================================
 */