FROM centos

# Install httpd and clean all
RUN yum -y --setopt=tsflags=nodocs install httpd && \
    yum clean all

# Open port 80 for the container
EXPOSE 80

# Add and define above script
ADD cmd.sh /cmd.sh

# Make the script executable inside container
RUN chmod -v +x /cmd.sh

# Execute the script on running the container
CMD ["/cmd.sh"]
