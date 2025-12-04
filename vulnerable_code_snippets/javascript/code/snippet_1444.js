var Vehicle = function(name){
    this.name = name;
    this.speed = 0;
    this.accelerate = function(){
        // Vulnerability: Using 'this' keyword without proper context
        this.speed += 10;
    };
};

var car = new Vehicle('Car');
car.accelerate();
console.log(car.speed);  // Outputs: 10

// Vulnerability: Using 'this' keyword without proper context
var accelerateFunction = car.accelerate;
accelerateFunction();
console.log(car.speed);  // Outputs: 10, but expected: 20