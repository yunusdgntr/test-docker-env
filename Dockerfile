FROM busybox:1.30
ARG TEST="My default value"
COPY ./yourprojectfolder /root/yourprojectfolder
WORKDIR /root
RUN chmod +x /root/yourprojectfolder/test_app.sh
CMD [ "sh", "/root/yourprojectfolder/test_app.sh", "${TEST_VARIABLE}"]
