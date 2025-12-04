function search(query) {
    let url = "https://example.com/search?q=" + query;
    fetch(url)
        .then(response => response.json())
        .then(data => displayData(data))
        .catch(error => console.log('Error:', error));
}

function displayData(data) {
    let resultsDiv = document.getElementById('results');
    resultsDiv.innerHTML = data;
}

let form = document.getElementById('search-form');
form.addEventListener('submit', function(event) {
    event.preventDefault();
    let query = document.getElementById('query').value;
    search(query);
});