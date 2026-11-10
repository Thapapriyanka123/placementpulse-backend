
import os
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from sqlalchemy import create_engine, text
from sqlalchemy.engine import URL
from dotenv import load_dotenv

load_dotenv()

app = FastAPI(title="PlacementPulse Backend")

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=False,
    allow_methods=["*"],
    allow_headers=["*"],
)

db_config = {
    "drivername": "postgresql+psycopg2",
    "username": os.getenv("DB_USER", "postgres"),
    "password": os.getenv("DB_PASSWORD", ""),
    "host": os.getenv("DB_HOST", ""),
    "port": int(os.getenv("DB_PORT", "5432")),
    "database": os.getenv("DB_NAME", "postgres"),
    "query": {"sslmode": "require"},
}

engine = None

if db_config["host"] and db_config["password"]:
    engine = create_engine(
        URL.create(**db_config),
        pool_pre_ping=True,
        pool_recycle=300,
        connect_args={"connect_timeout": 5},
    )


@app.get("/")
def read_root():
    return {
        "message": "Welcome to PlacementPulse Backend API!",
        "status": "running"
    }


@app.get("/health")
def health_check():
    return {"status": "healthy"}


@app.get("/test-db")
def test_db_connection():
    if engine is None:
        return {
            "status": "error",
            "message": "Database configuration is missing."
        }

    try:
        with engine.connect() as connection:
            result = connection.execute(text("SELECT version()"))
            db_version = result.scalar()

        return {
            "status": "success",
            "message": "Database connected successfully!",
            "database_version": db_version
        }

    except Exception:
        return {
            "status": "error",
            "message": "Database connection failed. Check credentials and network settings."
        }

import os
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from sqlalchemy import create_engine, text
from sqlalchemy.engine import URL
from dotenv import load_dotenv

load_dotenv()

app = FastAPI(title="PlacementPulse Backend")

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=False,
    allow_methods=["*"],
    allow_headers=["*"],
)

db_config = {
    "drivername": "postgresql+psycopg2",
    "username": os.getenv("DB_USER", "postgres"),
    "password": os.getenv("DB_PASSWORD", ""),
    "host": os.getenv("DB_HOST", ""),
    "port": int(os.getenv("DB_PORT", "5432")),
    "database": os.getenv("DB_NAME", "postgres"),
    "query": {"sslmode": "require"},
}

engine = None

if db_config["host"] and db_config["password"]:
    engine = create_engine(
        URL.create(**db_config),
        pool_pre_ping=True,
        pool_recycle=300,
        connect_args={"connect_timeout": 5},
    )


@app.get("/")
def read_root():
    return {
        "message": "Welcome to PlacementPulse Backend API!",
        "status": "running"
    }


@app.get("/health")
def health_check():
    return {"status": "healthy"}


@app.get("/test-db")
def test_db_connection():
    if engine is None:
        return {
            "status": "error",
            "message": "Database configuration is missing."
        }

    try:
        with engine.connect() as connection:
            result = connection.execute(text("SELECT version()"))
            db_version = result.scalar()

        return {
            "status": "success",
            "message": "Database connected successfully!",
            "database_version": db_version
        }

    except Exception:
        return {
            "status": "error",
            "message": "Database connection failed. Check credentials and network settings."
        }
