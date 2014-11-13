# utils.py
import MySQLdb


DATABASE='Python_Checker'
DB_USER = 'root'
DB_PASSWORD = 'password'
HOST = 'localhost'

def db_connect():
  return MySQLdb.connect(HOST, DB_USER, DB_PASSWORD, DATABASE)
