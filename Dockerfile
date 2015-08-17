FROM logstash:1.5.3

RUN plugin install logstash-input-sttxml1

VOLUME /data

COPY ./config-dir/logstash.conf /config-dir/

CMD ["logstash", "-f", "/config-dir/logstash.conf"]
