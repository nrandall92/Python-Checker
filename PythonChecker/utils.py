# utils.py
import MySQLdb


DATABASE='Python_Checker'
DB_USER = 'ROOT'
DB_PASSWORD = 'PcGc'
HOST = 'localhost'

def db_connect():
  return MySQLdb.connect(HOST, DB_USER, DB_PASSWORD, DATABASE)
