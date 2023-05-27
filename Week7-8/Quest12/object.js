function printBooks(books) {
  for (let i = 0; i < books.length; i++) {
    const book = books[i];
    const title = book.name;
    const author = book.author;
    console.log(`『${title}』${author}`);
  }
}

const books = [
  { name: 'JavaScript入門', author: '山田太郎' },
  { name: 'JavaScriptの絵本', author: '山田次郎' }
];

printBooks(books);

//  ユーザーパーミッションチェッカー
let users = [
  {
    username: '山田',
    permissions: {
      canRead: true,
      canWrite: true,
      canDelete: false
    }
  },
  {
    username: '佐藤',
    permissions: {
      canRead: false,
      canWrite: true,
      canDelete: false
    }
  },
  // 他のユーザーを追加してください
];

function checkPermission(username, permission) {
  for (let i = 0; i < users.length; i++) {
    let user = users[i];
    if (user.username === username) {
      return user.permissions[permission] === true;
    }
  }
  return false;
}

console.log(checkPermission('山田', 'canWrite'));  // true
console.log(checkPermission('佐藤', 'canRead'));   // false
