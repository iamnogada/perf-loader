FROM mcr.microsoft.com/java/jre:8-zulu-alpine

ENV JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8 -Dsun.jnu.encoding=UTF-8

ENV LANG=en_US.UTF-8

ENV BASE_DIR=/agent \
    NGRINDER_AGENT_BASE=/agent/ngrinder-agent \
    NGRINDER_AGENT_HOME=/agent/ngrinder-agent/.ngrinder-agent

WORKDIR /agent/ngrinder-agent
RUN mkdir -p $NGRINDER_AGENT_HOME
COPY ngrinder-agent /agent/ngrinder-agent

CMD ["./run_agent.sh"]
