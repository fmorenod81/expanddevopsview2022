import io
import json
import pymssql

from fdk import response

def handler(ctx, data: io.BytesIO=None):
    logging.getLogger().info("Inside Python Event-Count function")
    conn = pymssql.connect(server="129.213.154.39",port=1444, user = "sa", password = "DockerCon!!!", database="BulletinBoard")
    cursor = conn.cursor()
    cursor.execute('SELECT COUNT(*) FROM Events')
    row = cursor.fetchone()
    data = {
        "eventCount": row[0]
    }
    conn.close()

    return response.Response(
        ctx, response_data=json.dumps(data),
        headers={"Content-Type": "application/json"}
    )
