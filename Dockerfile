FROM matrixdotorg/synapse:v1.102.0

COPY ./custom-synapse/html-templates/*.html /usr/local/lib/python3.11/site-packages/synapse/res/templates/