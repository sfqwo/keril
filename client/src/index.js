import React from 'react';
import ReactDOM from 'react-dom';
import {createContext} from 'react';
import App from './App';
import 'bootstrap/dist/css/bootstrap.css'
import UserStore from './store/UserStore';
import DeviceStore from './store/DeviceStore';
import BasketStore from "./store/BasketStore";
require('dotenv').config()

export const Context = createContext(null)

ReactDOM.render(
  <Context.Provider value= {{
    user: new UserStore(),
    device: new DeviceStore(),
    basket: new BasketStore()
  }}>
    <App />
  </Context.Provider>,
  document.getElementById('root')
);

