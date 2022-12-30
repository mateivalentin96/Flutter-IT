import { makeStyles, Typography } from '@material-ui/core'
import React from 'react'

const useStyles = makeStyles(() => ({
    title: {
      display: "flex",
      alignItems: "center",
      justifyContent: "center",
      paddingTop: "50px",
      paddingBottom: "50px",
      color: "#fff",
      fontFamily: "Montserrat",
      fontWeight: "bold",
      fontSize: "0.875rem",
    },
  }));

const FooterPage = () => {
    const classes = useStyles();

    return <Typography className={classes.title}> Text</Typography>
  
}

export default FooterPage