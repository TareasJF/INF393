FROM jupyterhub/jupyterhub:latest

RUN useradd -m jupy && echo "jupy:jupy" | chpasswd
RUN pip install jupyter dockerspawner
RUN echo "c.Spawner.notebook_dir = '~/notebooks'" >> /srv/jupyterhub/jupyterhub_config.py
