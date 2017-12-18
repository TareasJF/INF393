FROM jupyterhub/jupyterhub:latest

RUN useradd -m jupy && echo "jupy:jupy" | chpasswd

RUN pip install \
        jupyter \
        pandas  \
        sklearn \
        scipy   \
        matplotlib \
        ipywidgets \
        nltk \
        keras \
        tensorflow \
        && jupyter nbextension enable --py --sys-prefix widgetsnbextension

RUN echo "c.Spawner.notebook_dir = '/notebooks'" >> /srv/jupyterhub/jupyterhub_config.py
RUN echo "c.Session.debug = True" >> /srv/jupyterhub/jupyterhub_config.py
