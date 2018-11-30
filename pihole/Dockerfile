FROM pihole/pihole:4.0.0-1_amd64

COPY ./bash_functions.sh /
COPY ./start.sh /

RUN chmod +x /bash_functions.sh && \
    chmod +x /start.sh
