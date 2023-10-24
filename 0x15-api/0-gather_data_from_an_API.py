#!/usr/bin/python3
"""
This is the JSON placeholder api to query data about an employee
"""

from requests import get
from sys import argv

def get_employee_data(user_id):
    main_url = 'https://jsonplaceholder.typicode.com'
    todo_url = f"{main_url}/user/{user_id}/todos"
    name_url = f"{main_url}/users/{user_id}"
    todo_result = get(todo_url).json()
    name_result = get(name_url).json()

    todo_num = len(todo_result)
    todo_complete = len([todo for todo in todo_result if todo.get("completed")])
    name = name_result.get("name")

    return name, todo_complete, todo_num, todo_result

if __name__ == '__main__':
    user_id = argv[1]
    name, todo_complete, todo_num, todo_result = get_employee_data(user_id)

    print(f"Employee {name} is done with tasks ({todo_complete}/{todo_num}):")
    for todo in todo_result:
        if todo.get("completed"):
            print(f"\t{todo.get('title')}")
