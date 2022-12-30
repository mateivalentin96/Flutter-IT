import React from 'react';
import { makeStyles } from '@material-ui/core/styles';
import Drawer from '@material-ui/core/Drawer';
import Button from '@material-ui/core/Button';
import { Avatar } from '@material-ui/core';
import { CryptoState } from '../CryptoContext';
import { signOut } from 'firebase/auth';
import { auth } from '../firebase';
//import { getAuth } from "firebase/auth";



const useStyles = makeStyles({
 
    container:{
        width: 350,
        padding:25,
        height:"100%",
        display: "flex",
        flexDirection: "column",
        fontFamily: "monospace",
    },
    profile:{
        flex:1,
        display: "flex",
        flexDirection: "column",
        alignItems: "center",
        gap: "20px",
        height: "92%",
    },
    picture:{
        width: 200,
        height: 200,
        cursor: "pointer",
        backgroundColor: "cyan",   
        objectFit: "contain",
    },
    logout:{
        height:"6%",
        width:"100%",
        backgroundColor: "cyan",
        marginTop:20,
    },
    watchlist:{
        flex:1,
        width:"100%",
        backgroundColor: "grey",   
        borderRadius:10,   
        padding:15,
        paddingTop:10,
        display: "flex",
        flexDirection: "column",   
        alignItems: "center",   
        gap : 12,
        //overflow:"scroll",
    },
});



export default function UserSideBar() {
  const classes = useStyles();
  const [state, setState] = React.useState({
    right: false,
  });

  const {user, setAlert, watchlist, coins} = CryptoState();



  const toggleDrawer = (anchor, open) => (event) => {
    if (event.type === 'keydown' && (event.key === 'Tab' || event.key === 'Shift')) {
      return;
    }

    setState({ ...state, [anchor]: open });
  };

  const logOut = () => {
    signOut(auth);

    setAlert({
        open: true,
        type: 'success',
        message: `Logout Succesfull ${user.displayName || user.email}`,
    })
    toggleDrawer();
};

  return (
    <div>
      {['right'].map((anchor) => (
        <React.Fragment key={anchor}>
          <Avatar onClick={toggleDrawer(anchor,true)}
            style={{
                height: 38,
                width: 38,
                marginLeft:15,
                cursor: 'pointer',
                backgroundColor:'cyan'
            }}
            src={user.photoURL}
            alt={user.displayName || user.email}
            />
          <Drawer anchor={anchor} open={state[anchor]} onClose={toggleDrawer(anchor, false)}>
           <div className={classes.container}>
             <div className={classes.profile}>
                <Avatar 
                    className={classes.picture}
                    src={user.photoURL}
                    alt={user.displayName || user.email}
                
                />
                <span style={{
                    width:'100%',
                    fontSize:25,
                    textAlign: 'center',
                    fontWeight: 'bold',
                    wordWrap: 'break-word',
                }}
                >    
                    {user.displayName || user.email}        
                </span>

                <div className={classes.watchlist}>
                    <span style={{fontSize: 15,textShadow: '0 0 5px black'}}>
                         Watchlist
                    </span>

                    {coins?.foreach((coin) => {
                        if(watchlist.includes(coin.id))
                        return (
                            <div className={classes.coin}>
                                <span>{coin.name}</span>
                            </div>
                        )
                    })} 

                </div>
             </div>
             <Button variant="contained" className={classes.logout} onClick={logOut}>
                Log Out
             </Button>
           </div>
          </Drawer>
        </React.Fragment>
      ))}
    </div>
  );
}
