import { makeStyles } from "@material-ui/core";

const SelectButton = ({
  children,
  selected,
  onClick,
  fullWidth,
  textAlign,
}) => {
  const useStyles = makeStyles({
    selectbutton: {
      border: "1px solid cyan",
      borderRadius: 5,
      padding: 10,
      paddingLeft: 20,
      paddingRight: 20,
      fontFamily: "Montserrat",
      cursor: "pointer",
      backgroundColor: selected ? "cyan" : "",
      color: selected ? "black" : "",
      fontWeight: selected ? 700 : 500,
      textAlign: textAlign,
      "&:hover": {
        backgroundColor: "cyan",
        color: "black",
      },
      width: fullWidth ? "100%" : "22%",
      //   margin: 5,
    },
  });

  const classes = useStyles();

  return (
    <span onClick={onClick} className={classes.selectbutton}>
      {children}
    </span>
  );
};

export default SelectButton;
