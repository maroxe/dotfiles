import server
import json
import datetime
import krakenex
import time
import argparse


def now():
    return str(datetime.datetime.now())


class KrakenServer(server.Server):
    def __init__(self, pair, interval, port, topic):
        super(KrakenServer, self).__init__(port, topic)
        self.pair = pair
        self.interval = interval
        self.k = krakenex.API()
        
    def get_quotes(self):
        pair = self.pair
        ret = self.k.query_public('Ticker', req = {'pair': pair})['result'][pair]
        ret['time'] = now()
        return json.dumps(ret)

    def run(self):
        while True:
            self.send(self.get_quotes())
            time.sleep(self.interval)


if __name__=='__main__':
    parser = argparse.ArgumentParser(description='Get Kraken quotes and streams them.')
    parser.add_argument('pair', type=str)
    parser.add_argument('interval', type=int)
    parser.add_argument('port', type=int)
    parser.add_argument('topic', type=int)
    args = parser.parse_args()
    KrakenServer(args.pair, args.interval, args.port, args.topic).run()
