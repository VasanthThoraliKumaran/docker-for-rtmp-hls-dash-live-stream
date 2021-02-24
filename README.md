## rtmp-hls-dash-live-stream
    dockerfile for a proxy server that receives video source through rtmp and distributes streams using hls/dash to client devices

## exec using terminal

- clone or download the repo

- open terminal or cmd, cd to your source directory and run the following commands

- docker build -t $set-image-name .

- docker run -d -v $set-source-path:/usr/local/nginx/stream_data/playbacks -p 8080:8080 -p 1935:1935 --name $set-container-name $your-image-name

## exec using make tool

- open terminal 

- cd to source directory and run "make all"