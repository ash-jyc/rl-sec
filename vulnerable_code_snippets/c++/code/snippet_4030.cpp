#include <iostream>
#include <string>
#include <mysql/jdbc/mysql_driver.h>
#include <mysql/jdbc/mysql_connection.h>
#include <mysql/jdbc/cppconn/statement.h>

int main() {
    sql::mysql::MySQL_Driver *driver;
    sql::Connection *con;
    std::string url = "tcp://127.0.0.1:3306/";
    std::string user = "root";
    std::string pass = "password";
    std::string database = "test";
    std::string query;
    
    driver = sql::mysql::get_mysql_driver_instance();
    con = driver->connect(url+database, user, pass);
    
    std::cout << "Enter your SQL query: ";
    std::cin >> query;
    
    sql::Statement *stmt = con->createStatement();
    sql::ResultSet *res = stmt->executeQuery(query);
    
    while (res->next()) {
        std::cout << res->getString("column") << std::endl;
    }
    
    delete res;
    delete stmt;
    delete con;
    
    return 0;
}