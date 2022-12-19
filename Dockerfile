FROM gogs/gogs:0.12

# In docker "custom" dir is /data/gogs/ and there is no need to create named "custom" dir
# there, /data/gogs/ works by default as custom.
WORKDIR /data/gogs/
RUN mkdir -p templates/inject && mkdir -p public/css/themes \
&&  mkdir -p public/img 

# ADD ./themes /data/gogs/public/css/themes
# ADD ./img /data/gogs/public/img/