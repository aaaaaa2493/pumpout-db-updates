# mitmdump -s util/proxy.py

from mitmproxy import http


def request(flow: http.HTTPFlow) -> None:
    if flow.request.pretty_url == "https://pumpout2020.anyhowstep.com/dump/pump-out-dump-2020.0.0/pumpout.db":
        with open("../pumpout.db", "rb") as f:
            print("INJECTING DB")
            flow.response = http.Response.make(
                200,  # (HTTP status code)
                f.read(),  # (content of the response)
                {"Content-Type": "application/octet-stream"}  # (headers)
            )

    if flow.request.pretty_url.startswith("https://pumpout2020.anyhowstep.com/img/card/Phoenix_"):
        image_path = flow.request.pretty_url.replace("https://pumpout2020.anyhowstep.com/img/card/", "img/")
        with open(image_path, "rb") as f:
            flow.response = http.Response.make(
                200,  # (HTTP status code)
                f.read(),  # (content of the response)
                {"Content-Type": "image/png"}  # (headers)
            )
