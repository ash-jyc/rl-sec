#include <iostream>
#include <string>
#include <mysql/jdbc/mysql_driver.h>
#include <mysql/jdbc/mysql_connection.h>
#include <mysql/jdbc/cppconn/statement.h>

int main() {
    sql::mysql::MySQL_Driver *driver;
    sql::Connection *con;
    std::string userInput;

    driver = sql::mysql::get_mysql_driver_instance();
    con = driver->connect("tcp://127.0.0.1:3306", "root", "password");

    std::cout << "Enter your username: ";
    std::cin >> userInput;

    std::string query = "SELECT * FROM Users WHERE Username='" + userInput + "'";
    sql::Statement *stmt = con->createStatement();
    sql::ResultSet *res = stmt->executeQuery(query);

    while (res->next()) {
        std::cout << "ID: " << res->getInt("id") << ", Name: " << res->getString("name") << "\n";
    }

    delete res;
    delete stmt;
    delete con;

    return 0;
}