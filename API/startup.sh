# Install Microsoft ODBC Driver 18 for SQL Server
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
curl https://packages.microsoft.com/config/debian/11/prod.list > /etc/apt/sources.list.d/mssql-release.list
apt-get update
ACCEPT_EULA=Y apt-get install -y msodbcsql18
ACCEPT_EULA=Y apt-get install -y mssql-tools18
apt-get install -y unixodbc-dev

#Then start the app
gunicorn -w 4 -k uvicorn.workers.UvicornWorker course_recommender_apis:app