// h1テキストの変更
const heading = document.querySelector("h1");
heading.textContent = "シンプルブログ";

// イベントハンドラの設定
const form = document.getElementById("post-form");
form.addEventListener("submit", function(event){
  event.preventDefault();

  const titleInput = document.getElementById("title");
  const contentInput = document.getElementById("content");

  console.log(titleInput.value);
  console.log(contentInput.value);

  const inputTitle = document.getElementById("input-title");
  const inputContent = document.getElementById("input-content");
  inputTitle.textContent = titleInput.value;
  inputContent.textContent = contentInput.value;

  titleInput.value = "";
  contentInput.value = "";
});

const postForm = document.getElementById("post-form");
postForm.addEventListener("mouseover", function(){
  postForm.style.backgroundColor = "yellow";
});
postForm.addEventListener("mouseleave", function(){
  postForm.style.backgroundColor = "white";
});
