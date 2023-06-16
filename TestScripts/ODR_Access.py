import boto3

def list_bucket_object():
    try:
        s3 = boto3.resource('s3')
        bucket = s3.Bucket('odr-reports-sycamore-dev')
        for obj in bucket.objects.filter(Prefix="odr/current/csv"):
            print(obj.key)
        for obj in bucket.objects.filter(Prefix="odr/current/json"):
            print(obj.key)
    except Exception as e:
        return e