var sensitiveData = "This is sensitive data";

function showSensitiveData() {
    try {
        throw new Error(sensitiveData);
    } catch (err) {
        console.log(err.stack);
    }
}

showSensitiveData();