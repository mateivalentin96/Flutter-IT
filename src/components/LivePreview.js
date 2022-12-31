import { Line } from "react-chartjs-2";

import { useCallback, useContext, useEffect, useMemo, useRef } from "react";
import useWebSocket, { ReadyState } from "react-use-websocket";
import { CryptoState } from "../CryptoContext";

export function LivePreview({ selectedCoin }) {
  const socketUrl = "wss://stream.binance.com:9443/stream";

  const { sendJsonMessage, lastJsonMessage, readyState } =
    useWebSocket(socketUrl);

  const messageHistory = useRef([]);

  messageHistory.current = useMemo(
    () => messageHistory.current.concat(lastJsonMessage ?? []),
    [lastJsonMessage]
  );
  const { currency } = CryptoState();
  const handleClickSendMessage = useCallback(() => {
    sendJsonMessage({
      method: "SUBSCRIBE",
      params: [`${selectedCoin}${currency == "EUR" ? "eur" : "usdt"}@ticker`],
      id: 1,
    });
  }, [sendJsonMessage, currency, readyState]);

  const handleClickUnSendMessage = useCallback(() => {
    return sendJsonMessage({
      method: "UNSUBSCRIBE",
      params: [`${selectedCoin}${currency == "EUR" ? "eur" : "usdt"}@ticker`],
      id: 1,
    });
  }, [sendJsonMessage, currency]);
  useEffect(() => {
    handleClickSendMessage();
  }, [currency, selectedCoin]);

  useEffect(() => {}, [currency]);
  const connectionStatus = {
    [ReadyState.CONNECTING]: "Connecting",
    [ReadyState.OPEN]: "Open",
    [ReadyState.CLOSING]: "Closing",
    [ReadyState.CLOSED]: "Closed",
    [ReadyState.UNINSTANTIATED]: "Uninstantiated",
  }[readyState];

  return (
    <div style={{ width: "100%" }} className="App">
      <h1 style={{ textAlign: "center" }}>Live Preview</h1>
      <h2 style={{ textAlign: "center" }}>
        {selectedCoin.toUpperCase()}-{currency}
      </h2>

      {/*  <button
        onClick={handleClickSendMessage}
        disabled={readyState !== ReadyState.OPEN}
      >
        Subscribe
      </button>
      <button
        onClick={handleClickUnSendMessage}
        disabled={readyState !== ReadyState.OPEN}
      >
        Unsubscribe
      </button> */}
      <span>The WebSocket is currently {connectionStatus}</span>
      <Line
        data={{
          labels: messageHistory.current.map((coin) => {
            let date = new Date(coin.data?.E);

            if (coin.data?.E) return date.toLocaleTimeString();
          }),

          datasets: [
            {
              data: messageHistory.current.map((coin) => coin?.data?.x),
              label: `Live Data `,
              borderColor: "cyan",
            },
          ],
        }}
        options={{
          animation: { duration: 0 },
          elements: {
            point: {
              radius: 1,
            },
          },
          y: {
            title: {
              display: true,
              text: "Value",
            },
          },
        }}
      />
    </div>
  );
}

export default LivePreview;
