FROM matrixdotorg/synapse:v1.104.0

ARG S3_MEDIA_MODULE_VERSION=v1.4.0

COPY ./html-templates/*.html /usr/local/lib/python3.11/site-packages/synapse/res/templates/

ADD https://raw.githubusercontent.com/matrix-org/synapse-s3-storage-provider/${S3_MEDIA_MODULE_VERSION}/s3_storage_provider.py /usr/local/lib/python3.11/site-packages/s3_storage_provider.py
RUN pip install --no-cache-dir boto3==1.34.64
