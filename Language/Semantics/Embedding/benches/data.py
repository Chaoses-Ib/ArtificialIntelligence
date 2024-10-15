def chunks():
    import requests

    txt = requests.get('https://gist.githubusercontent.com/phillipj/4944029/raw/75ba2243dd5ec2875f629bf5d79f6c1e4b5a8b46/alice_in_wonderland.txt').text
    print(len(txt))

    chunks = []
    for i in range(0, len(txt), 500):
        chunks.append(txt[i:i+500])
    print(len(chunks))

    return chunks

if __name__ == "__main__":
    chunks()