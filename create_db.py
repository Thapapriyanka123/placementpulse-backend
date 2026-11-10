code = '''import os
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

SQLALCHEMY_DATABASE_URL = "postgresql+psycopg2://postgres:YOUR_PASSWORD@placementpulse-db.c09uw6y6c2h5.us-east-1.rds.amazonaws.com:5432/postgres"

engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
'''
with open("database.py", "w") as f:
    f.write(code)
print("database.py created successfully!")
EOFcat << 'EOF' > create_db.py
code = '''import os
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

SQLALCHEMY_DATABASE_URL = "postgresql+psycopg2://postgres:YOUR_PASSWORD@placementpulse-db.c09uw6y6c2h5.us-east-1.rds.amazonaws.com:5432/postgres"

engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
'''
with open("database.py", "w") as f:
    f.write(code)
print("database.py created successfully!")
