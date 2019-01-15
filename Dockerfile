FROM hashicorp/terraform:0.11.11
MAINTAINER Getaroom, Inc.

ENV TERRAGRUNT_VERSION=0.17.4
ENV TERRAGRUNT_TFPATH=/bin/terraform

RUN curl -sL https://github.com/gruntwork-io/terragrunt/releases/download/v$TERRAGRUNT_VERSION/terragrunt_linux_386 \
-o /bin/terragrunt && chmod +x /bin/terragrunt

ENTRYPOINT ["/bin/terragrunt"]
CMD ["help"]