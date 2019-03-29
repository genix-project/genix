from distutils.core import setup
setup(name='GENIXspendfrom',
      version='1.0',
      description='Command-line utility for genix "coin control"',
      author='Gavin Andresen',
      author_email='gavin@genixfoundation.org',
      requires=['jsonrpc'],
      scripts=['spendfrom.py'],
      )
