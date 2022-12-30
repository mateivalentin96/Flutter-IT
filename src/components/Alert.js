import React from 'react'
import { CryptoState } from '../CryptoContext'
import { Snackbar } from '@material-ui/core'
import MuiAlert from '@material-ui/lab/Alert'

const Alert = () => {

    const {alert, setAlert} = CryptoState()
  //  const [open, setOpen] = React.useState(false);

 //   const handleClick = () => {
 //       setOpen(true);
 //   };

    const handleClose = (event, reason) => {
        if (reason === 'clickaway') {
        return;
        }

        setAlert({open: false});
    };

  return <Snackbar open={alert.open} autoHideDuration={3500} onClose={handleClose} >
        <MuiAlert onClose={handleClose} elevation={10} variant="filled" severity={alert.type}>
            {alert.message}
        </MuiAlert>
  </Snackbar>
}

export default Alert