FROM python:2.7

# Install ouimeaux with server
RUN pip install ouimeaux[server]
# Bug with "UnicodeError: ('The value must be a native string', 'Access-Control-Max-Age', 3600)"
RUN pip install -U gevent==1.1b4
# Bug with  "TypeError: connect() got an unexpected keyword argument 'unique'"
RUN sed --in-place '134d' /usr/local/lib/python2.7/site-packages/ouimeaux/server/__init__.py

# expose server's listening port
EXPOSE 5000

# run server mode
CMD wemo server
