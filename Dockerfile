FROM $IMAGE
ARG TEST="My default value"
COPY ./yourprojectfolder /root/yourprojectfolder
WORKDIR /root
RUN chmod +x /root/yourprojectfolder/test_app.sh
ENTRYPOINT ["/root/yourprojectfolder/test_app.sh", "${TEST_VARIABLE} ${TEST}"]
CMD [ "sh", "/root/yourprojectfolder/test_app.sh", "${TAG}"]
