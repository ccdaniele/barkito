import {combineReducers} from 'redux'
import userReducer from './user.reducer'
import vendor from './vendor.reducer'

export default combineReducers({
    
    userData: userReducer,
    vendorData: vendor

})
