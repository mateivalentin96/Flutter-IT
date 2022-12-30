import React from 'react'
import { Box, TextField,Button } from '@material-ui/core';
import { useState } from 'react';
import { CryptoState } from '../CryptoContext';
import {auth} from "../firebase";
import {createUserWithEmailAndPassword} from "@firebase/auth";

const SignUp = ({handleClose}) => {

    const [email, setEmail] = useState("");
    const [password, setPassword] = useState("");
    const [confirmPassword, setConfirmPassword] = useState("");
    
    const {setAlert} = CryptoState();
    
    const handleSubmit = async() => {

        if(password !== confirmPassword) {
            setAlert({
                open:true,
                message: 'Password not match',
                type: 'error'
            })
            return;
        }
        try {
            const result = await createUserWithEmailAndPassword(auth,email,password);

            setAlert({
                open:true,
                message: `Sign UP Succesful. Welcome ${result.user.email}`,
                type: 'success',
            });


        } catch (error) {
            
            setAlert({
                open:true,
                message: error.message,
                type: 'error',
            });
            return;
        }
    };

  return (
    <Box
        p={3}
        style={{display: 'flex', flexDirection: 'column',gap: '20px'}}
    >

        <TextField variant="outlined" type="email" label="Enter Email"
        value={email} onChange={(e) => setEmail(e.target.value)} fullWidth>
        </TextField>

        <TextField variant="outlined" type="password" label="Enter Password"
        value={password} onChange={(e) => setPassword(e.target.value)} fullWidth>
        </TextField>

        <TextField variant="outlined" type="password" label="Confirm Password"
        value={confirmPassword} onChange={(e) => setConfirmPassword(e.target.value)} fullWidth>
        </TextField>

        <Button variant="contained" size="large" style={{backgroundColor:"cyan"}} onClick={handleSubmit}>
        Sign UP
        </Button>
    </Box>
  )
}

export default SignUp