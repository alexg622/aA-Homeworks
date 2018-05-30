import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';




document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  let store = configureStore(preloadedState);

  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);



  // store.dispatch = addLoggingToDispatch(store)
  // store = applyMiddlewares(store, addLoggingToDispatch);
});

// const addLoggingToDispatch = (store) => {
//   const OGDispatch = store.dispatch;
//   return (action) => {
//     console.log(store.getState());
//     console.log(action);
//     OGDispatch(action);
//     console.log(store.getState());
//   }
// }


// function addLoggingToDispatch(store) {
//   return function (next) {
//     return function (action) {
//       // your code here
//     };
//   };
// };


// const addLoggingToDispatch = store => next => action => {
//   console.log(store.getState());
//   console.log(action);
//   next(action);
//   console.log(store.getState());
//  }
//
//
//
//  const applyMiddlewares = (store, ...middleWares) => {
//    let dispatch = store.dispatch;
//    middleWares.forEach((middleWare) => {
//      dispatch = middleWare(store)(dispatch)
//    })
//    return Object.assign({}, store, { dispatch })
//  }


// const addLoggingToDispatch = store => next => action => {
//   console.log(store.getState());
//   console.log(action);
//   next(action);
//   console.log(store.getState());
// };
//
// const applyMiddlewares = (store, ...middlewares) => {
//   let dispatch = store.dispatch;
//   middlewares.forEach((middleware) => {
//     dispatch = middleware(store)(dispatch);
//   });
//   return Object.assign({}, store, { dispatch });
// };
