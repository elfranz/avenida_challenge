# README

1 - Install Rbenv. https://github.com/rbenv/rbenv. Ruby version -> 2.7.0p0

2 - Install postgres. Then run the following commands to set up the postgres server on your machine:<br />
  sudo su<br />
  su - postgres<br />
  psql<br />
  create role avenida_challenge with createdb login password 'avenida_challenge';<br />
  exit psql with \q<br />
  sudo service postgresql start<br />

3 - Clone this repo then cd to the project's folder.

4 - Execute bundle command to install gems.
