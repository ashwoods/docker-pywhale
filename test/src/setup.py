#!/usr/bin/env python
from setuptools import setup, find_packages
import os


setup(
    name='project',
    version='1.0',
    description="This is a test project",
    author="Ashley Camba",
    author_email='ashwoods@gmail.com',
    url='https://github.com/ashwoods/pywhale',
    packages=find_packages(),
    package_data={'project': ['index.html']},
    scripts=['manage.py'],
)

