from neural_ids import neural_net_model_ids
from flask import Flask
server = Flask(__name__)

@server.route("/")
def hello():
    file = open("/home/qemu/redirect.txt")
    with file as reader:
        new_str = reader.read()
        new_str = new_str.replace("g","----> HASH IS MATCHING!")
        new_str = new_str.replace("b","----> HASH IS NOT MATCHING!x")
        new_str = neural_net_model_ids(new_str)
        return new_str
    #return "Hello World!"

if __name__ == "__main__":
   server.run(host='0.0.0.0')
