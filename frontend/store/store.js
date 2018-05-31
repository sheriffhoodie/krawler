import {createStore, applyMiddleware} from 'redux';
import thunk from 'redux-thunk';

const configureStore = (preloadedState = {}) => {
  return createStore(
    preloadedState, applyMiddleware(thunk);
  )
};

export default configureStore;
