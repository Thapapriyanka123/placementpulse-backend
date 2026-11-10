from database import engine
try:
    conn = engine.connect()
    print("Database connected successfully!")
    conn.close()
except Exception as e:
    print("Database connection failed:", e)
EOFcat << 'EOF' > test_db.py
from database import engine
try:
    conn = engine.connect()
    print("Database connected successfully!")
    conn.close()
except Exception as e:
    print("Database connection failed:", e)
