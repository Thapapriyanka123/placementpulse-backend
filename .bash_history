        yield db
    finally:
        db.close()
EOF

uvicorn main:app --reload
source venv/bin/activate
cat << 'EOF' > database.py
import os
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
EOF

uvicorn main:app --reloadcat << 'EOF' > database.py
import os
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
EOF

uvicorn main:app --reload
cat main.py
cat << 'EOF' > database.py
import os
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
EOF

cat << 'EOF' > main.py
from fastapi import FastAPI
from database import engine
import models

# Automatically create database tables in AWS RDS PostgreSQL
models.Base.metadata.create_all(bind=engine)

app = FastAPI(title="PlacementPulse Backend")

@app.get("/")
def read_root():
    return {"message": "Welcome to PlacementPulse API!"}
EOF

uvicorn main:app --reloadcat << 'EOF' > database.py
import os
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
EOF

cat << 'EOF' > main.py
from fastapi import FastAPI
from database import engine
import models

# Automatically create database tables in AWS RDS PostgreSQL
models.Base.metadata.create_all(bind=engine)

app = FastAPI(title="PlacementPulse Backend")

@app.get("/")
def read_root():
    return {"message": "Welcome to PlacementPulse API!"}
EOF

uvicorn main:app --reload
cat << 'EOF' > database.py
import os
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
EOFcat << 'EOF' > database.py
import os
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
EOF

cat << 'EOF' > main.py
from fastapi import FastAPI
from database import engine
import models

models.Base.metadata.create_all(bind=engine)

app = FastAPI(title="PlacementPulse Backend")

@app.get("/")
def read_root():
    return {"message": "Welcome to PlacementPulse API!"}
EOFcat << 'EOF' > main.py
from fastapi import FastAPI
from database import engine
import models

models.Base.metadata.create_all(bind=engine)

app = FastAPI(title="PlacementPulse Backend")

@app.get("/")
def read_root():
    return {"message": "Welcome to PlacementPulse API!"}
EOF

uvicorn main:app --reloaduvicorn main:app --reload
uvicorn main:app --reload
nano database.py
uvicorn main:app --reload
nano database.py
uvicorn main:app --reload
nano database.py
uvicorn main:app --reload
python3 -c '
code = """import os
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
"""
with open("database.py", "w") as f:
    f.write(code)
'python3 -c '
code = """import os
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
"""
with open("database.py", "w") as f:
    f.write(code)
'
cat << 'EOF' > create_db.py
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
EOF

python3 create_db.py
python3 -c 'with open("database.py", "w") as f: f.write("import os\nfrom sqlalchemy import create_engine\nfrom sqlalchemy.ext.declarative import declarative_base\nfrom sqlalchemy.orm import sessionmaker\n\nSQLALCHEMY_DATABASE_URL = \"postgresql+psycopg2://postgres:YOUR_PASSWORD@placementpulse-db.c09uw6y6c2h5.us-east-1.rds.amazonaws.com:5432/postgres\"\n\nengine = create_engine(SQLALCHEMY_DATABASE_URL)\nSessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)\nBase = declarative_base()\n\ndef get_db():\n    db = SessionLocal()\n    try:\n        yield db\n    finally:\n        db.close()\n")'python3 -c 'with open("database.py", "w") as f: f.write("import os\nfrom sqlalchemy import create_engine\nfrom sqlalchemy.ext.declarative import declarative_base\nfrom sqlalchemy.orm import sessionmaker\n\nSQLALCHEMY_DATABASE_URL = \"postgresql+psycopg2://postgres:YOUR_PASSWORD@placementpulse-db.c09uw6y6c2h5.us-east-1.rds.amazonaws.com:5432/postgres\"\n\nengine = create_engine(SQLALCHEMY_DATABASE_URL)\nSessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)\nBase = declarative_base()\n\ndef get_db():\n    db = SessionLocal()\n    try:\n        yield db\n    finally:\n        db.close()\n")'
nano database.py
uvicorn main:app --reload
rm -f database.py
python3 -c '
with open("database.py", "w") as f:
    f.write("""import os
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

SQLALCHEMY_DATABASE_URL = "postgresql+psycopg2://postgres:PlacementPulse123!@placementpulse-db.c09uw6y6c2h5.us-east-1.rds.amazonaws.com:5432/postgres"

engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
""")
print("SUCCESS: database.py written cleanly")
'python3 -c '
with open("database.py", "w") as f:
    f.write("""import os
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

SQLALCHEMY_DATABASE_URL = "postgresql+psycopg2://postgres:PlacementPulse123!@placementpulse-db.c09uw6y6c2h5.us-east-1.rds.amazonaws.com:5432/postgres"

engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
""")
print("SUCCESS: database.py written cleanly")
'
echo -e 'import os\nfrom sqlalchemy import create_engine\nfrom sqlalchemy.ext.declarative import declarative_base\nfrom sqlalchemy.orm import sessionmaker\n\nSQLALCHEMY_DATABASE_URL = "postgresql+psycopg2://postgres:PlacementPulse123!@placementpulse-db.c09uw6y6c2h5.us-east-1.rds.amazonaws.com:5432/postgres"\n\nengine = create_engine(SQLALCHEMY_DATABASE_URL)\nSessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)\nBase = declarative_base()\n\ndef get_db():\n    db = SessionLocal()\n    try:\n        yield db\n    finally:\n        db.close()\n' > database.pyecho -e 'import os\nfrom sqlalchemy import create_engine\nfrom sqlalchemy.ext.declarative import declarative_base\nfrom sqlalchemy.orm import sessionmaker\n\nSQLALCHEMY_DATABASE_URL = "postgresql+psycopg2://postgres:PlacementPulse123!@placementpulse-db.c09uw6y6c2h5.us-east-1.rds.amazonaws.com:5432/postgres"\n\nengine = create_engine(SQLALCHEMY_DATABASE_URL)\nSessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)\nBase = declarative_base()\n\ndef get_db():\n    db = SessionLocal()\n    try:\n        yield db\n    finally:\n        db.close()\n' > database.py
uvicorn main:app --reload
cat << 'EOF' > database.py
import os
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

SQLALCHEMY_DATABASE_URL = "postgresql+psycopg2://postgres:PlacementPulse123!@placementpulse-db.c09uw6y6c2h5.us-east-1.rds.amazonaws.com:5432/postgres"

engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
EOFcat << 'EOF' > database.py
import os
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

SQLALCHEMY_DATABASE_URL = "postgresql+psycopg2://postgres:PlacementPulse123!@placementpulse-db.c09uw6y6c2h5.us-east-1.rds.amazonaws.com:5432/postgres"

engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
EOF

uvicorn main:app --reload
nano database.py
uvicorn main:app --reload
nano database.py
uvicorn main:app --reload
echo "aW1wb3J0IG9zCmZyb20gc3FsYWxjaGVteSBpbXBvcnQgY3JlYXRlX2VuZ2luZQpmcm9tIHNxbGFsY2hlbXkuZXh0LmRlY2xhcmF0aXZlIGltcG9ydCBkZWNsYXJhdGl2ZV9iYXNlCmZyb20gc3FsYWxjaGVteS5vcm0gaW1wb3J0IHNlc3Npb25tYWtlcgoKU1FMQUxDSEVNWV9UQVRBQkFTRV9VUkwgPSAicG9zdGdyZXNxbDpwc3ljb3BnMjovL3Bvc3RncmVzOlBsYWNlbWVudFB1bHNlMTIzIkBwbGFjZW1lbnRwdWxzZS1kYi5jMDl1dzZ5NmMyaDUudXMtZWFzdC0xLnJkcy5hbWF6b25hd3MuY29tOjU0MzIvcG9zdGdyZXMiCgplbmdpbmUgPSBjcmVhdGVfZW5naW5lKFNRTEFDSEVNWV9UQVRBQkFTRV9VUkwpClNlc3Npb25Mb2NhbCA9IHNlc3Npb25tYWtlcihhdXRvY29tbWl0PUZhbHNlLCBhdXRvZmx1c2g9RmFsc2UsIGJpbmQ9ZW5naW5lKQoKQmFzZSA9IGRlY2xhcmF0aXZlX2Jhc2UoKQoKZGVmIGdldF9kYigpOgogICAgZGIgPSBTZXNzaW9uTG9jYWwoKQogICAgdHJ5OgogICAgICB5aWVsZCBkYgogICAgZmluYWxseToKICAgICAgZGIuY2xvc2UoKQo=" | base64 -d > database.pyecho "aW1wb3J0IG9zCmZyb20gc3FsYWxjaGVteSBpbXBvcnQgY3JlYXRlX2VuZ2luZQpmcm9tIHNxbGFsY2hlbXkuZXh0LmRlY2xhcmF0aXZlIGltcG9ydCBkZWNsYXJhdGl2ZV9iYXNlCmZyb20gc3FsYWxjaGVteS5vcm0gaW1wb3J0IHNlc3Npb25tYWtlcgoKU1FMQUxDSEVNWV9UQVRBQkFTRV9VUkwgPSAicG9zdGdyZXNxbDpwc3ljb3BnMjovL3Bvc3RncmVzOlBsYWNlbWVudFB1bHNlMTIzIkBwbGFjZW1lbnRwdWxzZS1kYi5jMDl1dzZ5NmMyaDUudXMtZWFzdC0xLnJkcy5hbWF6b25hd3MuY29tOjU0MzIvcG9zdGdyZXMiCgplbmdpbmUgPSBjcmVhdGVfZW5naW5lKFNRTEFDSEVNWV9UQVRBQkFTRV9VUkwpClNlc3Npb25Mb2NhbCA9IHNlc3Npb25tYWtlcihhdXRvY29tbWl0PUZhbHNlLCBhdXRvZmx1c2g9RmFsc2UsIGJpbmQ9ZW5naW5lKQoKQmFzZSA9IGRlY2xhcmF0aXZlX2Jhc2UoKQoKZGVmIGdldF9kYigpOgogICAgZGIgPSBTZXNzaW9uTG9jYWwoKQogICAgdHJ5OgogICAgICB5aWVsZCBkYgogICAgZmluYWxseToKICAgICAgZGIuY2xvc2UoKQo=" | base64 -d > database.py
uvicorn main:app --reload
cat << 'EOF' > database.py
import os
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

SQLALCHEMY_DATABASE_URL = "postgresql+psycopg2://postgres:PlacementPulse123!@placementpulse-db.c09uw6y6c2h5.us-east-1.rds.amazonaws.com:5432/postgres"

engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
EOFcat << 'EOF' > database.py
import os
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

SQLALCHEMY_DATABASE_URL = "postgresql+psycopg2://postgres:PlacementPulse123!@placementpulse-db.c09uw6y6c2h5.us-east-1.rds.amazonaws.com:5432/postgres"

engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
EOF

uvicorn main:app --reload
nano database.py
uvicorn main:app --reload
python3 -c 'open("database.py", "w").write("import os\nfrom sqlalchemy import create_engine\nfrom sqlalchemy.ext.declarative import declarative_base\nfrom sqlalchemy.orm import sessionmaker\n\nSQLALCHEMY_DATABASE_URL = \"postgresql+psycopg2://postgres:PlacementPulse123!@placementpulse-db.c09uw6y6c2h5.us-east-1.rds.amazonaws.com:5432/postgres\"\n\nengine = create_engine(SQLALCHEMY_DATABASE_URL)\nSessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)\nBase = declarative_base()\n\ndef get_db():\n    db = SessionLocal()\n    try:\n        yield db\n    finally:\n        db.close()\n")'python3 -c 'open("database.py", "w").write("import os\nfrom sqlalchemy import create_engine\nfrom sqlalchemy.ext.declarative import declarative_base\nfrom sqlalchemy.orm import sessionmaker\n\nSQLALCHEMY_DATABASE_URL = \"postgresql+psycopg2://postgres:PlacementPulse123!@placementpulse-db.c09uw6y6c2h5.us-east-1.rds.amazonaws.com:5432/postgres\"\n\nengine = create_engine(SQLALCHEMY_DATABASE_URL)\nSessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)\nBase = declarative_base()\n\ndef get_db():\n    db = SessionLocal()\n    try:\n        yield db\n    finally:\n        db.close()\n")'
cat << 'EOF' > make_db.py
with open("database.py", "w") as f:
    f.write("""import os
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

SQLALCHEMY_DATABASE_URL = "postgresql+psycopg2://postgres:PlacementPulse123!@placementpulse-db.c09uw6y6c2h5.us-east-1.rds.amazonaws.com:5432/postgres"

engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
""")
print("Database file written successfully!")
EOFcat << 'EOF' > make_db.py
with open("database.py", "w") as f:
    f.write("""import os
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

SQLALCHEMY_DATABASE_URL = "postgresql+psycopg2://postgres:PlacementPulse123!@placementpulse-db.c09uw6y6c2h5.us-east-1.rds.amazonaws.com:5432/postgres"

engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
""")
print("Database file written successfully!")
EOF

python3 make_db.py
python3 -c '
with open("database.py", "w") as f:
    f.write("import os\nfrom sqlalchemy import create_engine\nfrom sqlalchemy.ext.declarative import declarative_base\nfrom sqlalchemy.orm import sessionmaker\n\nSQLALCHEMY_DATABASE_URL = \"postgresql+psycopg2://postgres:PlacementPulse123!@placementpulse-db.c09uw6y6c2h5.us-east-1.rds.amazonaws.com:5432/postgres\"\n\nengine = create_engine(SQLALCHEMY_DATABASE_URL)\nSessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)\nBase = declarative_base()\n\ndef get_db():\n    db = SessionLocal()\n    try:\n        yield db\n    finally:\n        db.close()\n")
print("DONE")
'python3 -c '
with open("database.py", "w") as f:
    f.write("import os\nfrom sqlalchemy import create_engine\nfrom sqlalchemy.ext.declarative import declarative_base\nfrom sqlalchemy.orm import sessionmaker\n\nSQLALCHEMY_DATABASE_URL = \"postgresql+psycopg2://postgres:PlacementPulse123!@placementpulse-db.c09uw6y6c2h5.us-east-1.rds.amazonaws.com:5432/postgres\"\n\nengine = create_engine(SQLALCHEMY_DATABASE_URL)\nSessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)\nBase = declarative_base()\n\ndef get_db():\n    db = SessionLocal()\n    try:\n        yield db\n    finally:\n        db.close()\n")
print("DONE")
'
echo -e "import uvicorn\nfrom fastapi import FastAPI\n\na = FastAPI()\n\n@a.get('/')\ndef h():\n    return {}\n\nif __name__ == '__main__':\n    uvicorn.run('main:app', host='0.0.0.0', port=8000)" > main.py
python3 main.pyecho -e "import uvicorn\nfrom fastapi import FastAPI\n\na = FastAPI()\n\n@a.get('/')\ndef h():\n    return {}\n\nif __name__ == '__main__':\n    uvicorn.run('main:app', host='0.0.0.0', port=8000)" > main.py
python3 main.py
echo "import uvicorn
from fastapi import FastAPI

app = FastAPI()

@app.get('/')
def root():
    return {'status': 'ok'}

if __name__ == '__main__':
    uvicorn.run('main:app', host='0.0.0.0', port=8000)" > main.pyecho "import uvicorn
from fastapi import FastAPI

app = FastAPI()

@app.get('/')
def root():
    return {'status': 'ok'}

if __name__ == '__main__':
    uvicorn.run('main:app', host='0.0.0.0', port=8000)" > main.py
python3 main.py
import uvicorn
from fastapi import FastAPI
app = FastAPI()
@app.get("/")
def root():
    return {"status": "ok"}
if __name__ == "__main__":;     uvicorn.run("main:app", host="0.0.0.0", port=8000)import uvicorn
from fastapi import FastAPI
app = FastAPI()
@app.get("/")
def root():
    return {"status": "ok"}
if __name__ == "__main__":;     uvicorn.run("main:app", host="0.0.0.0", port=8000)
echo "import uvicorn" > main.py
echo "from fastapi import FastAPI" >> main.py
echo "" >> main.py
echo "app = FastAPI()" >> main.py
echo "" >> main.py
echo "@app.get('/')" >> main.py
echo "def root():" >> main.py
echo "    return {'status': 'ok'}" >> main.py
echo "" >> main.py
echo "if __name__ == '__main__':" >> main.py
echo "    uvicorn.run('main:app', host='0.0.0.0', port=8000)" >> main.pyecho "import uvicorn" > main.py
echo "from fastapi import FastAPI" >> main.py
echo "" >> main.py
echo "app = FastAPI()" >> main.py
echo "" >> main.py
echo "@app.get('/')" >> main.py
echo "def root():" >> main.py
echo "    return {'status': 'ok'}" >> main.py
echo "" >> main.py
echo "if __name__ == '__main__':" >> main.py
echo "    uvicorn.run('main:app', host='0.0.0.0', port=8000)" >> main.py
source venv/bin/activate
python3 -c '
with open("database.py", "w") as f:
    f.write("import os\nfrom sqlalchemy import create_engine\nfrom sqlalchemy.ext.declarative import declarative_base\nfrom sqlalchemy.orm import sessionmaker\n\nSQLALCHEMY_DATABASE_URL = \"postgresql+psycopg2://postgres:PlacementPulse123!@placementpulse-db.c09uw6y6c2h5.us-east-1.rds.amazonaws.com:5432/postgres\"\n\nengine = create_engine(SQLALCHEMY_DATABASE_URL)\nSessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)\nBase = declarative_base()\n\ndef get_db():\n    db = SessionLocal()\n    try:\n        yield db\n    finally:\n        db.close()\n")
print("DATABASE SETUP DONE")
'python3 -c '
with open("database.py", "w") as f:
    f.write("import os\nfrom sqlalchemy import create_engine\nfrom sqlalchemy.ext.declarative import declarative_base\nfrom sqlalchemy.orm import sessionmaker\n\nSQLALCHEMY_DATABASE_URL = \"postgresql+psycopg2://postgres:PlacementPulse123!@placementpulse-db.c09uw6y6c2h5.us-east-1.rds.amazonaws.com:5432/postgres\"\n\nengine = create_engine(SQLALCHEMY_DATABASE_URL)\nSessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)\nBase = declarative_base()\n\ndef get_db():\n    db = SessionLocal()\n    try:\n        yield db\n    finally:\n        db.close()\n")
print("DATABASE SETUP DONE")
'
cat << 'EOF' > database.py
import os
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

SQLALCHEMY_DATABASE_URL = 'postgresql+psycopg2://postgres:PlacementPulse123!@placementpulse-db.c09uw6y6c2h5.us-east-1.rds.amazonaws.com:5432/postgres'

engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
EOFcat << 'EOF' > database.py
import os
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

SQLALCHEMY_DATABASE_URL = 'postgresql+psycopg2://postgres:PlacementPulse123!@placementpulse-db.c09uw6y6c2h5.us-east-1.rds.amazonaws.com:5432/postgres'

engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
EOF

uvicorn main:app --reload
nano database.py
uvicorn main:app --reload
python3 << 'EOF'
with open("database.py", "w") as f:
    f.write("""import os
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

SQLALCHEMY_DATABASE_URL = "postgresql+psycopg2://postgres:PlacementPulse123!@placementpulse-db.c09uw6y6c2h5.us-east-1.rds.amazonaws.com:5432/postgres"

engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
""")
print("DATABASE.PY CREATED SUCCESSFULLY!")
EOFpython3 << 'EOF'
with open("database.py", "w") as f:
    f.write("""import os
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

SQLALCHEMY_DATABASE_URL = "postgresql+psycopg2://postgres:PlacementPulse123!@placementpulse-db.c09uw6y6c2h5.us-east-1.rds.amazonaws.com:5432/postgres"

engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
""")
print("DATABASE.PY CREATED SUCCESSFULLY!")
EOF

python3 -c "with open('database.py', 'w') as f: f.write('import os\nfrom sqlalchemy import create_engine\nfrom sqlalchemy.ext.declarative import declarative_base\nfrom sqlalchemy.orm import sessionmaker\n\nSQLALCHEMY_DATABASE_URL = \"postgresql+psycopg2://postgres:PlacementPulse123' + chr(33) + '@placementpulse-db.c09uw6y6c2h5.us-east-1.rds.amazonaws.com:5432/postgres\"\n\nengine = create_engine(SQLALCHEMY_DATABASE_URL)\nSessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)\nBase = declarative_base()\n\ndef get_db():\n    db = SessionLocal()\n    try:\n        yield db\n    finally:\n        db.close()\n')"python3 -c "with open('database.py', 'w') as f: f.write('import os\nfrom sqlalchemy import create_engine\nfrom sqlalchemy.ext.declarative import declarative_base\nfrom sqlalchemy.orm import sessionmaker\n\nSQLALCHEMY_DATABASE_URL = \"postgresql+psycopg2://postgres:PlacementPulse123' + chr(33) + '@placementpulse-db.c09uw6y6c2h5.us-east-1.rds.amazonaws.com:5432/postgres\"\n\nengine = create_engine(SQLALCHEMY_DATABASE_URL)\nSessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)\nBase = declarative_base()\n\ndef get_db():\n    db = SessionLocal()\n    try:\n        yield db\n    finally:\n        db.close()\n')"
python3 -c '
lines = [
    "import os\n",
    "from sqlalchemy import create_engine\n",
    "from sqlalchemy.ext.declarative import declarative_base\n",
    "from sqlalchemy.orm import sessionmaker\n",
    "\n",
    "SQLALCHEMY_DATABASE_URL = \"postgresql+psycopg2://postgres:PlacementPulse123!@placementpulse-db.c09uw6y6c2h5.us-east-1.rds.amazonaws.com:5432/postgres\"\n",
    "\n",
    "engine = create_engine(SQLALCHEMY_DATABASE_URL)\n",
    "SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)\n",
    "\n",
    "Base = declarative_base()\n",
    "\n",
    "def get_db():\n",
    "    db = SessionLocal()\n",
    "    try:\n        yield db\n    finally:\n        db.close()\n"
]
open("database.py", "w").writelines(lines)
print("DATABASE WRITTEN SUCCESSFULLY")
'python3 -c '
lines = [
    "import os\n",
    "from sqlalchemy import create_engine\n",
    "from sqlalchemy.ext.declarative import declarative_base\n",
    "from sqlalchemy.orm import sessionmaker\n",
    "\n",
    "SQLALCHEMY_DATABASE_URL = \"postgresql+psycopg2://postgres:PlacementPulse123!@placementpulse-db.c09uw6y6c2h5.us-east-1.rds.amazonaws.com:5432/postgres\"\n",
    "\n",
    "engine = create_engine(SQLALCHEMY_DATABASE_URL)\n",
    "SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)\n",
    "\n",
    "Base = declarative_base()\n",
    "\n",
    "def get_db():\n",
    "    db = SessionLocal()\n",
    "    try:\n        yield db\n    finally:\n        db.close()\n"
]
open("database.py", "w").writelines(lines)
print("DATABASE WRITTEN SUCCESSFULLY")
'
uvicorn main:app --reload
python3 -c '
lines = [
    "from sqlalchemy import Column, Integer, String, Boolean, DateTime\n",
    "from database import Base\n",
    "import datetime\n",
    "\n",
    "class User(Base):\n",
    "    __tablename__ = \"users\"\n",
    "    id = Column(Integer, primary_key=True, index=True)\n",
    "    email = Column(String, unique=True, index=True)\n",
    "    hashed_password = Column(String)\n",
    "    is_active = Column(Boolean, default=True)\n"
]
open("models.py", "w").writelines(lines)
print("MODELS.PY WRITTEN SUCCESSFULLY")
'python3 -c '
lines = [
    "from sqlalchemy import Column, Integer, String, Boolean, DateTime\n",
    "from database import Base\n",
    "import datetime\n",
    "\n",
    "class User(Base):\n",
    "    __tablename__ = \"users\"\n",
    "    id = Column(Integer, primary_key=True, index=True)\n",
    "    email = Column(String, unique=True, index=True)\n",
    "    hashed_password = Column(String)\n",
    "    is_active = Column(Boolean, default=True)\n"
]
open("models.py", "w").writelines(lines)
print("MODELS.PY WRITTEN SUCCESSFULLY")
'
uvicorn main:app --reload
python3 -c '
with open("main.py", "w") as f:
    f.write("from fastapi import FastAPI\nfrom database import engine, Base\nimport models\n\nBase.metadata.create_all(bind=engine)\n\napp = FastAPI()\n\n@app.get(\"/\")\ndef read_root():\n    return {\"message\": \"Welcome to PlacementPulse API\"}\n")
print("MAIN.PY FIXED CLEANLY")
'python3 -c '
with open("main.py", "w") as f:
    f.write("from fastapi import FastAPI\nfrom database import engine, Base\nimport models\n\nBase.metadata.create_all(bind=engine)\n\napp = FastAPI()\n\n@app.get(\"/\")\ndef read_root():\n    return {\"message\": \"Welcome to PlacementPulse API\"}\n")
print("MAIN.PY FIXED CLEANLY")
'
cat > main.py <<'EOF'
from fastapi import FastAPI
from database import engine, Base
import models

Base.metadata.create_all(bind=engine)

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Welcome to PlacementPulse API"}
EOFcat > main.py <<'EOF'
from fastapi import FastAPI
from database import engine, Base
import models

Base.metadata.create_all(bind=engine)

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Welcome to PlacementPulse API"}
EOF

python3 -m uvicorn main:app --host 0.0.0.0 --port 8000python3 -m uvicorn main:app --host 0.0.0.0 --port 8000
python3 --version
python3 -m pip show uvicorn
uvicorn main:app --host 0.0.0.0 --port 8000uvicorn main:app --host 0.0.0.0 --port 8000
(venv) [ec2-user@ip-172-31-21-36 ~]$(venv) [ec2-user@ip-172-31-21-36 ~]$
uvicorn main:app --host 0.0.0.0 --port 8000uvicorn main:app --host 0.0.0.0 --port 8000
uvicorn main:app --reload
nano main.py
uvicorn main:app --reload
nano main.py
uvicorn main:app --reload
python3 -c '
with open("main.py", "w") as f:
    f.write("from fastapi import FastAPI\nfrom database import engine, Base\nimport models\n\nBase.metadata.create_all(bind=engine)\n\napp = FastAPI()\n\n@app.get(\"/\")\ndef read_root():\n    return {\"message\": \"Welcome to PlacementPulse API\"}\n")
print("MAIN.PY FRESHLY WRITTEN")
'python3 -c '
with open("main.py", "w") as f:
    f.write("from fastapi import FastAPI\nfrom database import engine, Base\nimport models\n\nBase.metadata.create_all(bind=engine)\n\napp = FastAPI()\n\n@app.get(\"/\")\ndef read_root():\n    return {\"message\": \"Welcome to PlacementPulse API\"}\n")
print("MAIN.PY FRESHLY WRITTEN")
'
uvicorn main:app --reload
uvicorn main:app --host 0.0.0.0 --port 8000 --reloaduvicorn main:app --host 0.0.0.0 --port 8000 --reload
uvicorn main:app --host 0.0.0.0 --port 8000 --reload
python3 -c '
lines = [
    "from pydantic import BaseModel\n",
    "\n",
    "class UserCreate(BaseModel):\n",
    "    email: str\n",
    "    password: str\n",
    "\n",
    "class UserResponse(BaseModel):\n",
    "    id: int\n",
    "    email: str\n",
    "    is_active: bool\n",
    "\n",
    "    class Config:\n",
    "        from_attributes = True\n"
]
open("schemas.py", "w").writelines(lines)
print("SCHEMAS.PY CREATED SUCCESSFULLY")
'python3 -c '
lines = [
    "from pydantic import BaseModel\n",
    "\n",
    "class UserCreate(BaseModel):\n",
    "    email: str\n",
    "    password: str\n",
    "\n",
    "class UserResponse(BaseModel):\n",
    "    id: int\n",
    "    email: str\n",
    "    is_active: bool\n",
    "\n",
    "    class Config:\n",
    "        from_attributes = True\n"
]
open("schemas.py", "w").writelines(lines)
print("SCHEMAS.PY CREATED SUCCESSFULLY")
'
python3 -c '
lines = [
    "from passlib.context import CryptContext\n",
    "\n",
    "pwd_context = CryptContext(schemes=[\"bcrypt\"], deprecated=\"auto\")\n",
    "\n",
    "def verify_password(plain_password, hashed_password):\n",
    "    return pwd_context.verify(plain_password, hashed_password)\n",
    "\n",
    "def get_password_hash(password):\n",
    "    return pwd_context.hash(password)\n"
]
open("security.py", "w").writelines(lines)
print("SECURITY.PY CREATED SUCCESSFULLY")
'python3 -c '
lines = [
    "from passlib.context import CryptContext\n",
    "\n",
    "pwd_context = CryptContext(schemes=[\"bcrypt\"], deprecated=\"auto\")\n",
    "\n",
    "def verify_password(plain_password, hashed_password):\n",
    "    return pwd_context.verify(plain_password, hashed_password)\n",
    "\n",
    "def get_password_hash(password):\n",
    "    return pwd_context.hash(password)\n"
]
open("security.py", "w").writelines(lines)
print("SECURITY.PY CREATED SUCCESSFULLY")
'
python3 -c '
with open("main.py", "w") as f:
    f.write("from fastapi import FastAPI, Depends, HTTPException\nfrom sqlalchemy.orm import Session\nfrom database import engine, Base, get_db\nimport models\nimport schemas\nimport security\n\nBase.metadata.create_all(bind=engine)\n\napp = FastAPI()\n\n@app.post(\"/register\", response_model=schemas.UserResponse)\ndef register_user(user: schemas.UserCreate, db: Session = Depends(get_db)):\n    db_user = db.query(models.User).filter(models.User.email == user.email).first()\n    if db_user:\n        raise HTTPException(status_code=400, detail=\"Email already registered\")\n    hashed_password = security.get_password_hash(user.password)\n    new_user = models.User(email=user.email, hashed_password=hashed_password)\n    db.add(new_user)\n    db.commit()\n    db.refresh(new_user)\n    return new_user\n")
print("MAIN.PY UPDATED WITH REGISTER ROUTE")
'python3 -c '
with open("main.py", "w") as f:
    f.write("from fastapi import FastAPI, Depends, HTTPException\nfrom sqlalchemy.orm import Session\nfrom database import engine, Base, get_db\nimport models\nimport schemas\nimport security\n\nBase.metadata.create_all(bind=engine)\n\napp = FastAPI()\n\n@app.post(\"/register\", response_model=schemas.UserResponse)\ndef register_user(user: schemas.UserCreate, db: Session = Depends(get_db)):\n    db_user = db.query(models.User).filter(models.User.email == user.email).first()\n    if db_user:\n        raise HTTPException(status_code=400, detail=\"Email already registered\")\n    hashed_password = security.get_password_hash(user.password)\n    new_user = models.User(email=user.email, hashed_password=hashed_password)\n    db.add(new_user)\n    db.commit()\n    db.refresh(new_user)\n    return new_user\n")
print("MAIN.PY UPDATED WITH REGISTER ROUTE")
'
uvicorn main:app --host 0.0.0.0 --port 8000 --reloaduvicorn main:app --host 0.0.0.0 --port 8000 --reload
uvicorn main:app --host 0.0.0.0 --port 8000 --reload
pip install passlib bcrypt
uvicorn main:app --host 0.0.0.0 --port 8000 --reload
pip install "python-jose[cryptography]"
python3 -c '
lines = [
    "from datetime import datetime, timedelta\n",
    "from jose import JWTError, jwt\n",
    "from passlib.context import CryptContext\n",
    "\n",
    "SECRET_KEY = \"placementpulse_super_secret_key_2026\"\n",
    "ALGORITHM = \"HS256\"\n",
    "ACCESS_TOKEN_EXPIRE_MINUTES = 30\n",
    "\n",
    "pwd_context = CryptContext(schemes=[\"bcrypt\"], deprecated=\"auto\")\n",
    "\n",
    "def verify_password(plain_password, hashed_password):\n",
    "    return pwd_context.verify(plain_password, hashed_password)\n",
    "\n",
    "def get_password_hash(password):\n",
    "    return pwd_context.hash(password)\n",
    "\n",
    "def create_access_token(data: dict, expires_delta: timedelta | None = None):\n",
    "    to_encode = data.copy()\n",
    "    if expires_delta:\n",
    "        expire = datetime.utcnow() + expires_delta\n",
    "    else:\n        expire = datetime.utcnow() + timedelta(minutes=15)\n",
    "    to_encode.update({\"exp\": expire})\n",
    "    encoded_jwt = jwt.encode(to_encode, SECRET_KEY, algorithm=ALGORITHM)\n",
    "    return encoded_jwt\n"
]
open("security.py", "w").writelines(lines)
print("SECURITY.PY UPDATED WITH JWT")
'python3 -c '
lines = [
    "from datetime import datetime, timedelta\n",
    "from jose import JWTError, jwt\n",
    "from passlib.context import CryptContext\n",
    "\n",
    "SECRET_KEY = \"placementpulse_super_secret_key_2026\"\n",
    "ALGORITHM = \"HS256\"\n",
    "ACCESS_TOKEN_EXPIRE_MINUTES = 30\n",
    "\n",
    "pwd_context = CryptContext(schemes=[\"bcrypt\"], deprecated=\"auto\")\n",
    "\n",
    "def verify_password(plain_password, hashed_password):\n",
    "    return pwd_context.verify(plain_password, hashed_password)\n",
    "\n",
    "def get_password_hash(password):\n",
    "    return pwd_context.hash(password)\n",
    "\n",
    "def create_access_token(data: dict, expires_delta: timedelta | None = None):\n",
    "    to_encode = data.copy()\n",
    "    if expires_delta:\n",
    "        expire = datetime.utcnow() + expires_delta\n",
    "    else:\n        expire = datetime.utcnow() + timedelta(minutes=15)\n",
    "    to_encode.update({\"exp\": expire})\n",
    "    encoded_jwt = jwt.encode(to_encode, SECRET_KEY, algorithm=ALGORITHM)\n",
    "    return encoded_jwt\n"
]
open("security.py", "w").writelines(lines)
print("SECURITY.PY UPDATED WITH JWT")
'
python3 -c '
with open("main.py", "w") as f:
    f.write("from fastapi import FastAPI, Depends, HTTPException, status\nfrom fastapi.security import OAuth2PasswordRequestForm\nfrom sqlalchemy.orm import Session\nfrom datetime import timedelta\nfrom database import engine, Base, get_db\nimport models\nimport schemas\nimport security\n\nBase.metadata.create_all(bind=engine)\n\napp = FastAPI()\n\n@app.post(\"/register\", response_model=schemas.UserResponse)\ndef register_user(user: schemas.UserCreate, db: Session = Depends(get_db)):\n    db_user = db.query(models.User).filter(models.User.email == user.email).first()\n    if db_user:\n        raise HTTPException(status_code=400, detail=\"Email already registered\")\n    hashed_password = security.get_password_hash(user.password)\n    new_user = models.User(email=user.email, hashed_password=hashed_password)\n    db.add(new_user)\n    db.commit()\n    db.refresh(new_user)\n    return new_user\n\n@app.post(\"/login\")\ndef login_for_access_token(form_data: OAuth2PasswordRequestForm = Depends(), db: Session = Depends(get_db)):\n    user = db.query(models.User).filter(models.User.email == form_data.username).first()\n    if not user or not security.verify_password(form_data.password, user.hashed_password):\n        raise HTTPException(\n            status_code=status.HTTP_401_UNAUTHORIZED,\n            detail=\"Incorrect email or password\",\n            headers={\"WWW-Authenticate\": \"Bearer\"},\n        )\n    access_token_expires = timedelta(minutes=security.ACCESS_TOKEN_EXPIRE_MINUTES)\n    access_token = security.create_access_token(\n        data={\"sub\": user.email}, expires_delta=access_token_expires\n    )\n    return {\"access_token\": access_token, \"token_type\": \"bearer\"}\n")
print("MAIN.PY UPDATED WITH LOGIN ROUTE")
'python3 -c '
with open("main.py", "w") as f:
    f.write("from fastapi import FastAPI, Depends, HTTPException, status\nfrom fastapi.security import OAuth2PasswordRequestForm\nfrom sqlalchemy.orm import Session\nfrom datetime import timedelta\nfrom database import engine, Base, get_db\nimport models\nimport schemas\nimport security\n\nBase.metadata.create_all(bind=engine)\n\napp = FastAPI()\n\n@app.post(\"/register\", response_model=schemas.UserResponse)\ndef register_user(user: schemas.UserCreate, db: Session = Depends(get_db)):\n    db_user = db.query(models.User).filter(models.User.email == user.email).first()\n    if db_user:\n        raise HTTPException(status_code=400, detail=\"Email already registered\")\n    hashed_password = security.get_password_hash(user.password)\n    new_user = models.User(email=user.email, hashed_password=hashed_password)\n    db.add(new_user)\n    db.commit()\n    db.refresh(new_user)\n    return new_user\n\n@app.post(\"/login\")\ndef login_for_access_token(form_data: OAuth2PasswordRequestForm = Depends(), db: Session = Depends(get_db)):\n    user = db.query(models.User).filter(models.User.email == form_data.username).first()\n    if not user or not security.verify_password(form_data.password, user.hashed_password):\n        raise HTTPException(\n            status_code=status.HTTP_401_UNAUTHORIZED,\n            detail=\"Incorrect email or password\",\n            headers={\"WWW-Authenticate\": \"Bearer\"},\n        )\n    access_token_expires = timedelta(minutes=security.ACCESS_TOKEN_EXPIRE_MINUTES)\n    access_token = security.create_access_token(\n        data={\"sub\": user.email}, expires_delta=access_token_expires\n    )\n    return {\"access_token\": access_token, \"token_type\": \"bearer\"}\n")
print("MAIN.PY UPDATED WITH LOGIN ROUTE")
'
uvicorn main:app --host 0.0.0.0 --port 8000 --reload
python3 -c '
lines = [
    "from datetime import datetime, timedelta\n",
    "from typing import Optional\n",
    "from jose import JWTError, jwt\n",
    "from passlib.context import CryptContext\n",
    "\n",
    "SECRET_KEY = \"placementpulse_super_secret_key_2026\"\n",
    "ALGORITHM = \"HS256\"\n",
    "ACCESS_TOKEN_EXPIRE_MINUTES = 30\n",
    "\n",
    "pwd_context = CryptContext(schemes=[\"bcrypt\"], deprecated=\"auto\")\n",
    "\n",
    "def verify_password(plain_password, hashed_password):\n",
    "    return pwd_context.verify(plain_password, hashed_password)\n",
    "\n",
    "def get_password_hash(password):\n",
    "    return pwd_context.hash(password)\n",
    "\n",
    "def create_access_token(data: dict, expires_delta: Optional[timedelta] = None):\n",
    "    to_encode = data.copy()\n",
    "    if expires_delta:\n",
    "        expire = datetime.utcnow() + expires_delta\n",
    "    else:\n",
    "        expire = datetime.utcnow() + timedelta(minutes=15)\n",
    "    to_encode.update({\"exp\": expire})\n",
    "    encoded_jwt = jwt.encode(to_encode, SECRET_KEY, algorithm=ALGORITHM)\n",
    "    return encoded_jwt\n"
]
open("security.py", "w").writelines(lines)
print("SECURITY.PY FIXED SUCCESSFULLY")
'python3 -c '
lines = [
    "from datetime import datetime, timedelta\n",
    "from typing import Optional\n",
    "from jose import JWTError, jwt\n",
    "from passlib.context import CryptContext\n",
    "\n",
    "SECRET_KEY = \"placementpulse_super_secret_key_2026\"\n",
    "ALGORITHM = \"HS256\"\n",
    "ACCESS_TOKEN_EXPIRE_MINUTES = 30\n",
    "\n",
    "pwd_context = CryptContext(schemes=[\"bcrypt\"], deprecated=\"auto\")\n",
    "\n",
    "def verify_password(plain_password, hashed_password):\n",
    "    return pwd_context.verify(plain_password, hashed_password)\n",
    "\n",
    "def get_password_hash(password):\n",
    "    return pwd_context.hash(password)\n",
    "\n",
    "def create_access_token(data: dict, expires_delta: Optional[timedelta] = None):\n",
    "    to_encode = data.copy()\n",
    "    if expires_delta:\n",
    "        expire = datetime.utcnow() + expires_delta\n",
    "    else:\n",
    "        expire = datetime.utcnow() + timedelta(minutes=15)\n",
    "    to_encode.update({\"exp\": expire})\n",
    "    encoded_jwt = jwt.encode(to_encode, SECRET_KEY, algorithm=ALGORITHM)\n",
    "    return encoded_jwt\n"
]
open("security.py", "w").writelines(lines)
print("SECURITY.PY FIXED SUCCESSFULLY")
'
uvicorn main:app --host 0.0.0.0 --port 8000 --reload
pip install python-multipart
uvicorn main:app --host 0.0.0.0 --port 8000 --reload
python3 main.py
uvicorn main:app --host 0.0.0.0 --port 8000
nohup uvicorn main:app --host 0.0.0.0 --port 8000 --reload &
ps aux | grep uvicorn
