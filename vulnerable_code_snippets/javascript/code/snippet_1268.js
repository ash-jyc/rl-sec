function search(query) {
    return "You searched for: " + query;
}

const http = require('http');

http.createServer((req, res) => {
    res.writeHead(200, {'Content-Type': 'text/html'});
    res.write("<h1>Search Page</h1>");
    res.write("<form action='/search' method='GET'>");
    res.write("<input type='text' name='query' />");
    res.write("<input type='submit' value='Search' />");
    res.write("</form>");
    
    if(req.url.includes('/search')){
        let query = req.url.split('?')[1].split('=')[1];
        res.write(search(query));
    }
    
    res.end();
}).listen(8080);