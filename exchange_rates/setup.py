import os
from setuptools import find_packages, setup

VERSION = os.getenv('TAG', '0.1.0')
setup(name='exchange_rates',
      version=VERSION,
      author='Praveer Kumar',
      author_email='praveerkumar17@gmail.com',
      packages=find_packages()
)
