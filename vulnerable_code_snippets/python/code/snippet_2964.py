import sqlite3
con = sqlite3.connect('my_database.db')
cursor = con.cursor()

def execute_query(query):
    cursor.execute(query)
    return cursor.fetchall()

user_input = input("Enter your SQL query: ")
results = execute_query(user_input)
print(results)