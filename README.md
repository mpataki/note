# Note

This tiny project aims to be a simple but powerful command line based solution for persisting personal notes to the cloud. This project is in it's infancy right now, so use at your own risk.

Notes are persisted to s3 using the aws cli. A few environement variables are set to specify the local and remote note stores, as well as what aws profile should be used. It assumes that you've setup your aws credentials.

For example, you might set your environment variables in your `.bashrc` or `.bash_profile` as follows:

```shell
export NOTES_S3_BUCKET=note-store
export LOCAL_NOTE_STORE=$HOME/notes
export NOTES_AWS_PROFILE=notes
```

## Commands:

`note ls` - list your local notes
`note push` - push local notes to s3
`note pull` - pull notes from s3
`note rm` - remove a note both locally and on the remote

