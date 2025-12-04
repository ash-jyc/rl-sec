#include <iostream>
#include <string>
#include <mysql/jdbc/mysql_driver.h>
#include <mysql/jdbc/mysql_connection.h>
#include <mysql/jdbc/cppconn/resultset.h>

using namespace std;

int main() {
    string username, password;
    cout << "Enter your username: ";
    cin >> username;
    cout << "Enter your password: ";
    cin >> password;

    sql::mysql::MySQL_Driver *driver;
    sql::Connection *con;

    driver = sql::mysql::get_mysql_driver_instance();
    con = driver->connect("tcp://127.0.0.1:3306", username, password);

    // Unsanitized user input in SQL query
    string query = "SELECT * FROM Users WHERE Username='" + username + "' AND Password='" + password + "'";
    sql::Statement *stmt = con->createStatement();
    sql::ResultSet *res = stmt->executeQuery(query);

    if (res->next()) {
        cout << "Login successful!" << endl;
    } else {
        cout << "Invalid username or password." << endl;
    }

    delete res;
    delete stmt;
    delete con;

    return 0;
}