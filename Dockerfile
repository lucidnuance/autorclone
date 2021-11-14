FROM rclone:rclone

RUN apk --no-cache add python3 git

WORKDIR /app

RUN git clone https://github.com/xyou365/AutoRclone \
	&& cd AutoRclone \
	&& pip3 install -r requirements.txt
