// ディスプレイ要素を取得
const display = document.getElementById("display");

// 数字ボタンのクリックイベントリスナーを追加
const digitButtons = document.querySelectorAll(".digit");
digitButtons.forEach(function(button) {
  button.addEventListener("click", function() {
    const digit = button.textContent;
    display.textContent += digit;
  });
});

// 演算子ボタンのクリックイベントリスナーを追加
const operatorButtons = document.querySelectorAll(".operator");
operatorButtons.forEach(function(button) {
  button.addEventListener("click", function() {
    const operator = button.textContent;
    display.textContent += operator;
  });
});

// 「=」ボタンのクリックイベントリスナーを追加
const equalsButton = document.getElementById("equals");
equalsButton.addEventListener("click", function() {
  const result = eval(display.textContent); // displayの内容を評価して計算結果を取得
  display.textContent = result; // 計算結果を表示
});

// クリアボタンのクリックイベントリスナーを追加
const clearButton = document.getElementById("clear");
clearButton.addEventListener("click", function() {
  display.textContent = "";
});
