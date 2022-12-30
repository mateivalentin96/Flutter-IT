import React, { createContext, useContext, useEffect, useState } from "react";
import {auth,db} from "../src/firebase";
import {onAuthStateChanged} from "@firebase/auth";
import {doc,onSnapshot} from '@firebase/firestore';


const Crypto = createContext();

const CryptoContext = ({ children }) => {
  const [currency, setCurrency] = useState("EUR");
  const [symbol, setSymbol] = useState("€");
  const [user, setUser] = useState(null);

  const [alert,setAlert] = useState({
    open: false,
    message:"",
    type:"success",
  });

  const [watchlist, setWatchlist] = useState([]);

  useEffect(() => {

    if(user){
      const coinRef = doc(db, "watchlist", user.uid);
      
      var unsubscribe = onSnapshot(coinRef, coin => {
        if(coin.exists()){
          console.log(coin.data().coins);
          setWatchlist(coin.data().coins);
        }else{
          console.log("No items in watchlist")
        }
      });
      return () => {
        unsubscribe();
      }
  }
    
  },[user])

  useEffect(() =>{
    onAuthStateChanged(auth,user => {
      if(user) setUser(user)
      else setUser(null)
    })
  },[])

  useEffect(() => {

     if (currency === "EUR") setSymbol("€");
     else if (currency === "USD") setSymbol("$");

  }, [currency]);

  return (
    <Crypto.Provider value={{ currency, setCurrency, symbol,alert,setAlert,user,watchlist }}>
      {children}
    </Crypto.Provider>
  );
};

export default CryptoContext;

export const CryptoState = () => {
  return useContext(Crypto);
};
