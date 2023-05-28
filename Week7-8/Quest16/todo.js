// タスクが入力されたら表示、テキストボックスは空に
// イベントハンドラの設定
const form = document.getElementById("todo-form");
form.addEventListener("submit", function (event) {
  event.preventDefault();

  const todoInput = document.getElementById("todo-input");
  console.log(todoInput.value);

  // ulを取得
  const todoList = document.getElementById("todo-list");
  // li要素を作成
  const listItem = document.createElement("li");
  listItem.className = "todo-item";

  // チェックボックス
  const checkbox = document.createElement("input");
  checkbox.type = "checkbox";
  listItem.appendChild(checkbox);

  // テキストを追加
  const span = document.createElement("span");
  span.textContent = todoInput.value;
  listItem.appendChild(span);

  // 削除ボタン追加
  const deleteButton = document.createElement("button");
  deleteButton.className = "delete-button";
  deleteButton.textContent = "削除";
  listItem.appendChild(deleteButton);

  // 削除ボタンがクリックされたとき
  deleteButton.addEventListener("click", function(){
    listItem.remove();
  });

  // チェックボックスが選択されたとき
  checkbox.addEventListener("change", function(){
    if(checkbox.checked){
      span.style.textDecoration = "line-through";
    } else {
      span.style.textDecoration = "none";
    }
  });

  todoList.appendChild(listItem);

  todoInput.value = "";
});
