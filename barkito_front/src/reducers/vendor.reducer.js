function vendor(state=null, action){
    switch(action.type){

        

        case 'VENDOR_INDEX':
        return action.vendors

        case 'LOGIN_OUT':    
        return {}


        default:

        return state

    }
}


export default vendor