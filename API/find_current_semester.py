from datetime import datetime

def find_current_semester() -> str:
    month = datetime.now().month
    if 1 <= month <= 5:
        return "Spring"
    elif 6 <= month <= 7:
        return "Summer"
    else:
        return "Fall"