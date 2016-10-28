pywhale
=======

Generic docker image that runs any parameterized python app from source.


Usage
=====

docker run -i -t -v /vagrant/src:/src -e "PYCMD=manage.py runserver 0.0.0.0:8000" ashwoods/pywhale:0.1.1 /sbin/my_init -- bash -l






