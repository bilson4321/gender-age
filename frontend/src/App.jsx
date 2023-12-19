import "./App.css";
import * as React from "react";
import Main from "./Main";
import { ThemeProvider, createTheme } from "@mui/material";
import { orange } from "@mui/material/colors";

function App() {
  const theme = createTheme({
    status: {
      danger: orange[500],
    },
  });

  return (
    <React.StrictMode>
      <ThemeProvider theme={theme}>
        <Main />
      </ThemeProvider>
    </React.StrictMode>
  );
}

export default App;
