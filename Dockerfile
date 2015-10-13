FROM logstash:2

RUN plugin install --version 0.1.1 logstash-input-sttxml1

VOLUME /data

COPY ./config-dir/logstash.conf /config-dir/

CMD ["logstash", "-f", "/config-dir/logstash.conf"]
