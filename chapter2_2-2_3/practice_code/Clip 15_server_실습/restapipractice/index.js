const express = require('express');
const app = express();
const port = 3000;

app.use(express.json());


let books = {
  '1': { title: '1984', author: 'George Orwell', year: 1949 },
  '2': { title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', year: 1925 }
};


app.get('/books', (req, res) => {
	res.json(books);
});

app.get('/books/:id', (req, res) => {
	const book = books[req.params.id];
	if(book) {
	   res.json(book);
	}
	else{
	   res.status(404).send("Book not found");
	}
});


app.post('/books', (req, res) => {
	const nextId = Object.keys(books).length + 1;
	books[nextId] = req.body;
	console.log(req.body);
	res.status(201).send("book added with ID : ${nextId}");
});


app.put('/books/:id', (req, res) => {
  const id = req.params.id;
  if (books[id]) {
    books[id] = req.body;
    res.send(`Book with ID ${id} updated`);
  } else {
    res.status(404).send('Book not found');
  }
});

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
