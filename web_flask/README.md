# Flask Web Application README

This repository contains a Flask web application with multiple routes that can be accessed via different endpoints. The application serves various functionalities and is designed to run on 0.0.0.0:5000.

### Prerequisites

Before running the Flask application, please ensure you have the following:
1. Python 3 installed on your system.
2. Required Python packages installed. You can install the required packages using the following command:

```bash
pip install Flask
```
## How to Run the Application

1. Clone the GitHub repository: AirBnB_clone_v2
2. Navigate to the web_flask directory in the cloned repository.
3. Execute the respective Python script for each task you want to test.

Example
```bash
python3 -m 0-hello_route  # For Task 0: Hello Flask!
```
4. The Flask application will start and be accessible at http://0.0.0.0:5000/.

## List of Available Routes

1. Task 0: Hello Flask!

* `Route:` /hbnb
* `Description:` Displays "HBNB" when accessed.

2. Task 1: HBNB

* `Route:` /hbnb
* `Description:` Displays "HBNB" when accessed.

3. Task 2: C is fun!

* `Route:` /c/<text>
* `Description:` Displays "C" followed by the value of the text variable (replace underscores with spaces).

4. Task 3: Python is cool!

* `Route:` /python/(<text>)
* `Description:` Displays "Python" followed by the value of the text variable (replace underscores with spaces). The default value of text is "is cool".

5. Task 4: Is it a number?

* `Route:` /number/<n>
* `Description:` Displays "n is a number" only if n is an integer.

6. Task 5: Number template

* `Route:` /number_template/<n>
* `Description:` Displays an HTML page showing "Number: n" inside an H1 tag in the body. The route is accessible only if n is an integer.

7. Task 6: Odd or even?

* `Route:` /number_odd_or_even/<n>
* `Description:` Displays an HTML page showing "Number: n is even|odd" inside an H1 tag in the body. The route is accessible only if n is an integer.

8. Task 7: Improve engines

* `Description:` This task involves improving the engine by adding a method to close the current session for FileStorage and DBStorage classes.

9. Task 8: List of states

* `Route:` /states_list
* `Description:` Displays an HTML page listing all the states present in the database, sorted by name, with their respective IDs.

10. Task 9: Cities by states

* `Route:` /cities_by_states
* `Description:` Displays an HTML page listing all the states present in the database, sorted by name, along with the cities linked to each state, also sorted by name.

### Important Notes

* For Tasks 8 and 9, you must have a running and valid MySQL setup as specified in `setup_mysql_dev.sql` within your AirBnB_clone_v2 repository. Ensure all tables are created when you run the console with the following command:

```bash
echo "quit" | HBNB_MYSQL_USER=hbnb_dev HBNB_MYSQL_PWD=hbnb_dev_pwd HBNB_MYSQL_HOST=localhost HBNB_MYSQL_DB=hbnb_dev_db HBNB_TYPE_STORAGE=db ./console.py
`
