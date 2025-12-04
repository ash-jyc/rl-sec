var obj = {
    valueOf: function() {
        return "1";
    },
    toString: function() {
        return "2";
    }
};

// No type coercion
console.log(obj + 0); // Outputs: [object Object]0

// Type coercion
console.log(+obj); // Outputs: 1