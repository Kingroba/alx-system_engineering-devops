#!/usr/bin/python3
"""
This is the JSON placeholder api to query data about an employee
"""

import requests
from sys import argv

def get_employee_data(employee_id):
    main_url = 'https://jsonplaceholder.typicode.com'
    todo_url = f'{main_url}/todos?userId={employee_id}'
    user_url = f'{main_url}/users/{employee_id}'

    try:
        todo_response = requests.get(todo_url)
        user_response = requests.get(user_url)

        todo_response.raise_for_status()
        user_response.raise_for_status()

        todo_result = todo_response.json()
        user_result = user_response.json()

        todo_num = len(todo_result)
        todo_complete = len([todo for todo in todo_result if todo.get("completed")])
        name = user_result.get("name")

        return name, todo_complete, todo_num, todo_result

    except requests.exceptions.HTTPError as errh:
        print ("HTTP Error:", errh)
    except requests.exceptions.ConnectionError as errc:
        print ("Error Connecting:", errc)
    except requests.exceptions.Timeout as errt:
        print ("Timeout Error:", errt)
    except requests.exceptions.RequestException as err:
        print ("Something went wrong:", err)

if __name__ == '__main__':
    if len(argv) != 2:
        print("Usage: {} <employee_id>".format(argv[0]))
        exit(1)

    employee_id = argv[1]
    name, todo_complete, todo_num, todo_result = get_employee_data(employee_id)

    if name is not None:
        print("Employee {} is done with tasks({}/{}):".format(name, todo_complete, todo_num))
        for todo in todo_result:
            if todo.get("completed"):
                print("\t{}".format(todo.get("title")))

