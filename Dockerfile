FROM busybox:${TAG}
COPY ./yourprojectfolder ./yourprojectfolder
RUN chmod +x ./yourprojectfolder/test_app.sh
ENTRYPOINT ["./yourprojectfolder/test_app.sh", "$TEST_VARIABLE"]