# Note

This tiny project aims to be a simple but powerful command line based solution for persisting personal notes to the cloud.

Notes are persisted to s3 using the aws cli. A few environement variables are set to specify the local and remote note stores, as well as what aws profile should be used. It assumes that you've setup your aws credentials.

For example, you might set your environment variables in your `.bashrc` or `.bash_profile` as follows:

```shell
export NOTES_S3_BUCKET=<your-note-s3-bucket>
export LOCAL_NOTE_STORE=$HOME/notes
export NOTES_AWS_PROFILE=notes
```

The best thing about this project is it's bash & zsh completion - tab to complete commands and your own note names.

## Installation

Pull this repo and run the `install.sh` script. It assumes that you have a `usr/local/bin` in your `PATH` for the `note` cammand itself, and `/usr/local/etc/bash_completion.d` for the bash completion.

## Commands

- `note ls` - list your local notes
- `note push` - push local notes to s3
- `note pull` - pull notes from s3
- `note rm <file>` - remove a note both locally and on the remote
- `note e <file>` - open the file with your `EDITOR`, or vim if you don't have one set
- `note render <markdown-file>` - render a markdown file to html (leverages the GitHub markdown engine)
- `note publish <file>` - pushes a public ACL for the file, allowing you to share it via a public link
  - The link itself depends on how you've setup your bucket.

## Bucket Setup

This is largely outside the scope of this project as there are many resources available online to help you setup an s3 bucket. My personal setup keeps the bucket's contents private by default, but gives it the "Static Web Hosting" property. This provides an AWS managed DNS entry for the bucket. I then use a CNAME record in route53 to make the URL easier to remember. The only real trick here is to name the bucket the same as your desired DNS entry. Voila! Your own self hosted note application.
