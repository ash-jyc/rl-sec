function getQueryParams(url) {
    let params = new URLSearchParams(url);
    let name = params.get('name');
    document.getElementById('target').innerHTML = name;
}

let url = 'https://example.com?name=<script>alert("XSS Attack")</script>';
getQueryParams(url);