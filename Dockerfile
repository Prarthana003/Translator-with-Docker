FROM jupyter/tensorflow-notebook

USER $NB_USER

RUN pip install --upgrade pip && \
    pip install transformers pysrt && \
    fix-permissions "/home/$NB_USER"

COPY captions_english.srt  Translatory.ipynb ./