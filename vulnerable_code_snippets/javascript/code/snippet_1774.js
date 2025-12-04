function processData(data) {
    var parsed = JSON.parse(data);
    eval(parsed.code);
}

var untrustedData = '{"code": "alert(\'This is an alert box!\');"}';
processData(untrustedData);