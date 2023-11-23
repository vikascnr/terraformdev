import requests
from datetime import datetime
import time

create_article = requests.get("/api/create-article-list")
revalidate = requests.get("/api/revalidate/invoke/all")

curr_time = datetime.now()
while (HOUR==4 and MINUTE <= 30):
    print("Going to sleep for 60 seconds")
    time.sleep(60)

schedular_start = requests.get("/api/scheduler/start")

print(create_article.text)
print(revalidate.text)
print(schedular_start.text)
