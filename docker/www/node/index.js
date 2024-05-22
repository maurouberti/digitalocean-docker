const http = require("http");

const server = http.createServer((req, res) => {
    console.log("Resposta do servidor...");
    res.end("<h1>Hello, World NODE!</h1>");
});

const porta = 3000;

server.listen(porta, () => {
    console.log("Escutando...");
});
