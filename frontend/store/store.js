import {createStore, applyMiddleware} from 'redux';
import thunk from 'redux-thunk';
import SampleReducer from '../reducers/root_reducer';

const configureStore = (preloadedState = {}) => {
  return createStore(
    SampleReducer, preloadedState, applyMiddleware(thunk)
  );
};

export default configureStore;
