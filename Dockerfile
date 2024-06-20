FROM matrixdotorg/synapse:v1.104.0

ARG S3_MEDIA_MODULE_VERSION=v1.4.0
ARG WHITELIST_MODULE_VERSION=v1.0.0
ARG PSC_MAPPING_PROVIDER_VERSION=v1.1.0

COPY ./html-templates/*.html /usr/local/lib/python3.11/site-packages/synapse/res/templates/

ADD https://raw.githubusercontent.com/matrix-org/synapse-s3-storage-provider/${S3_MEDIA_MODULE_VERSION}/s3_storage_provider.py /usr/local/lib/python3.11/site-packages/s3_storage_provider.py
RUN pip install --no-cache-dir boto3==1.34.64

ADD https://raw.githubusercontent.com/eimis-ans/white-list-synapse-module/${WHITELIST_MODULE_VERSION}/white_list_module/__init__.py /usr/local/lib/python3.11/site-packages/white_list_module/__init__.py
RUN chmod 644 /usr/local/lib/python3.11/site-packages/white_list_module/__init__.py

ADD https://raw.githubusercontent.com/eimis-ans/white-list-synapse-module/${WHITELIST_MODULE_VERSION}/white_list_module/__init__.py /usr/local/lib/python3.11/site-packages/white_list_module/__init__.py
RUN chmod 644 /usr/local/lib/python3.11/site-packages/white_list_module/__init__.py

ADD https://raw.githubusercontent.com/eimis-ans/eimis-prosante-connect-module/${PSC_MAPPING_PROVIDER_VERSION}/psc_mapping_provider/__init__.py /usr/local/lib/python3.11/site-packages/synapse/psc_mapping_provider.py
RUN chmod 644 /usr/local/lib/python3.11/site-packages/synapse/psc_mapping_provider.py
