import csv
from datetime import date, timedelta

def format_date_value(d):
    return {
        'actual_date': d.strftime('%Y-%m-%d'),
        'day_of_month': d.day,
        'month': d.month,
        'year': d.strftime('%Y'),
        'quarter': d.month // 4 + 1
    }

start_date = date(1999, 1, 1)
end_date = date(2002, 1, 1)

current_date = start_date
i = 1

with open('dim_date.csv', 'w') as f:
    fieldnames = ['day_key', 'actual_date', 'day_of_month', 'month', 'quarter', 'year']
    writer = csv.DictWriter(f, fieldnames=fieldnames)
    writer.writeheader()

    result = []

    while current_date < end_date:
        current_result = format_date_value(current_date)
        current_result['day_key'] = i
        result.append(current_result)
        
        i += 1
        current_date += timedelta(days=1)

    writer.writerows(result)    