import os
import redis
REDIS_URL: "redis://red-ceuubl9a6gdv805ihrng:6379"
# Connect to your internal Redis instance using the REDIS_URL environment variable
# The REDIS_URL is set to the internal Redis URL e.g. redis://red-343245ndffg023:6379
r = redis.from_url(os.environ['REDIS_URL'])

r.set('key', 'redis-py')
r.get('key')
