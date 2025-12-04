#include <iostream>
#include <stdexcept>

class SimpleCalculator {
public:
    int divide(int dividend, int divisor) {
        if (divisor == 0) {
            throw std::invalid_argument("Division by zero is not allowed!");
        }
        return dividend / divisor;
    }
};

int main() {
    SimpleCalculator calculator;
    try {
        std::cout << calculator.divide(10, 0) << std::endl;
    } catch (const std::exception& e) {
        std::cerr << "Caught exception: " << e.what() << std::endl;
    }
    return 0;
}