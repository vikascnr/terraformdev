import requests
from datetime import datetime
import datetime
import time

while True:
    current_time = datetime.datetime.now().time()
    start_time = datetime.time(6, 20)
    end_time = datetime.time(6, 32)

    if start_time <= current_time <= end_time:
        print("It's between 4:00 AM and 4:30 AM. Waiting...")
        time.sleep(60)  # Wait for 60 seconds and then check again
    else:
        print("It's not between 4:00 AM and 4:30 AM.")
        
        break  # Exit the loop if the condition is not met

print(current_time)
