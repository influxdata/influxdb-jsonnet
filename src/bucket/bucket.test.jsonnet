local influxdb = import '../influxdb.libsonnet';
local bucket = influxdb.bucket;

[
  bucket.new(name="defaultBucket"),
  bucket.new(name="describedBucket", description="My Bucket Description"),
  bucket.new(name="retentionBucket", retentionRules=[{type: "expire", everySeconds: 3600}]),
]
