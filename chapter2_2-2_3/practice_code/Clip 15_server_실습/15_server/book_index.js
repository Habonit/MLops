const express = require('express');
const app = express();
const port = 3000;

app.use(express.json());

let books = {
  '1': { title: '1984', author: 'George Orwell', year: 1949 },
  '2': { title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', year: 1925 }
};

// 모든 책 목록 가져오기
app.get('/books', (req, res) => {
  res.json(books);
});

// 특정 책 정보 가져오기
app.get('/books/:id', (req, res) => {
  const book = books[req.params.id];
  if (book) {
    res.json(book);
  } else {
    res.status(404).send('Book not found');
  }
});

// 새 책 추가하기
app.post('/books', (req, res) => {
  const nextId = Object.keys(books).length + 1;
  books[nextId] = req.body;
  console.log(req.body);
  res.status(201).send(`Book added with ID: ${nextId}`);
});

// 책 정보 업데이트하기
app.put('/books/:id', (req, res) => {
  const id = req.params.id;
  if (books[id]) {
    books[id] = req.body;
    res.send(`Book with ID ${id} updated`);
  } else {
    res.status(404).send('Book not found');
  }
});

// 책 삭제하기
app.delete('/books/:id', (req, res) => {
  const id = req.params.id;
  if (books[id]) {
    delete books[id];
    res.send(`Book with ID ${id} deleted`);
  } else {
    res.status(404).send('Book not found');
  }
});

app.listen(port, () => {
  console.log(`Bookstore app listening at http://localhost:${port}`);
});
