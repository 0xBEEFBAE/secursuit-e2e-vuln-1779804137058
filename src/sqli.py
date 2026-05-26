# Synthetic SAST fixture — string-concat SQL injection
import sqlite3
def get_user(uid):
    conn = sqlite3.connect("app.db")
    cur = conn.cursor()
    # SAST should flag: tainted concat into SQL
    cur.execute("SELECT * FROM users WHERE id = '" + uid + "'")
    return cur.fetchone()
