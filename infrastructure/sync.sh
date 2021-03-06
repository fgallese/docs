#!/bin/sh

# S3 URL of the website tarball.
site_archive="$1"

# S3 URL of the destination website bucket (e.g., the one hosting www.pulumi.com).
site_bucket="$2"

# Download the archive from the archive bucket and unpack it into a local folder.
echo "Downloading $site_archive..."
aws s3 cp $site_archive .
mkdir site_contents
tar -xzvf $(basename "$site_archive") -C site_contents

# Upload the JS and CSS bundles first.
cd site_contents

for file in $(find css -name "styles.*.css") ; do
    aws s3 cp "$file" "$site_bucket/$file" --acl public-read
done

for file in $(find js -name "bundle.min.*.js") ; do
    aws s3 cp "$file" "$site_bucket/$file"  --acl public-read
done

cd ..

# Synchronize the remaining contents of the local folder and site bucket, deleting
# whatever files exist remotely but not locally.
echo "Synchronizing to $site_bucket..."
aws s3 sync site_contents "$site_bucket" --acl public-read --delete

# Set the content-type of latest-version explicitly. (Otherwise, it'll be set as binary/octet-stream.)
aws s3 cp "site_contents/latest-version" "$site_bucket/latest-version" \
    --content-type "text/plain" --acl public-read --metadata-directive REPLACE

echo "Done!"
