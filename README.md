# Note

This tiny project it meant to be the simplest ever, command line based solution for persisting personal notes to the cloud. This project is in it's infancy right now, so use at your own risk.

Notes are persisted to s3 using the aws cli. A couple environement variables are set to specify the local and remote note stores, and it assumes that you've setup your aws credentials.

